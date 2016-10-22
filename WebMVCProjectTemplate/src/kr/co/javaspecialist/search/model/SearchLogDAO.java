package kr.co.javaspecialist.search.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import javax.management.RuntimeErrorException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


import kr.co.javaspecialist.search.model.SearchMedLogChartVO;
import kr.co.javaspecialist.common.db.DBConn;

public class SearchLogDAO implements ISearchLogDAO {

	private Connection getConnection() {
		DataSource ds = null; //javax.sql.*
		Connection con = null;
		try{
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle");
			con = ds.getConnection();
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}

	private void closeConnection(Connection con) {
		if(con!=null) {
			try { con.close(); }catch(Exception e) {}
		} 
	}

	@Override
	public void insertLog(SearchLogVO searchlog) {
		Connection con = null;
		String sql1 = "select nvl(max(log_serial_num),0) from search_log"; //Oracle

		int log_serial_num = 0;
		String sql2 = "insert into search_log values (?, ?, ?, ?, sysdate)"; //Oracle
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql1);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			log_serial_num = rs.getInt(1)+1;
			pstmt = con.prepareStatement(sql2);
			pstmt.setInt(1, log_serial_num);
			pstmt.setString(2, searchlog.getUserId());
			pstmt.setString(3, searchlog.getMedKey());
			pstmt.setString(4, searchlog.getFoodKey());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.insertLog : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
	}

	
	@Override
	public Collection<SearchLogVO> selectUserId(String userId) {
		Connection con = null;
		
		ArrayList<SearchLogVO> idlist = new ArrayList<SearchLogVO>();
		String sql = "SELECT MED_NAME, FOOD_NAME, SEARCH_DATE FROM SEARCH_LOG_DB WHERE USERID = ? ORDER BY SEARCH_DATE ASC";
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				SearchLogVO logListByUserId = new SearchLogVO();
				logListByUserId.setMedKey(rs.getString("MED_NAME"));
				logListByUserId.setFoodKey(rs.getString("FOOD_NAME"));
				logListByUserId.setSearchDate(rs.getString("SEARCH_DATE"));
				System.out.println("123");
				idlist.add(logListByUserId);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.selectUserId : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		
		return idlist;
	}

	
	@Override
	public SearchLogVO getSearchLogDetails(String userId){
		SearchLogVO searchLog = new SearchLogVO();
		String sql = "select * from search_log where userid=? ";
		Connection con = null;
		try{
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				searchLog.setUserId(userId);
				searchLog.setSerialNum(rs.getInt("log_serial_num"));;
				searchLog.setMedKey(rs.getString("med_key"));
				searchLog.setFoodKey(rs.getString("food_key"));
				searchLog.setSearchDate(rs.getString("search_date"));
			}
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			closeConnection(con);
		}
		
		return searchLog;
	}
	
	@Override
	public Collection<SearchMedLogChartVO> getFrequencyGroupingbyMedcine(){
		ArrayList<SearchMedLogChartVO> list = new ArrayList<SearchMedLogChartVO>();
		String sql = "select med_name, count(*) as co from search_log_db group by med_name order by co desc";
		Connection con = null;
		try{
			con = DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			int count = 0;
			String colorList[] = new String[]{"#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74","#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74"};
			while(rs.next()){
				SearchMedLogChartVO logChart = new SearchMedLogChartVO();
				logChart.setMedName(rs.getString("med_key"));
				logChart.setCountMed(rs.getInt("co"));
				logChart.setColor(colorList[count]);
				list.add(logChart);
				count++;
			}
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.selectAllList : " + e.getMessage());
			
		}
		return list;
	}

	@Override
	public Collection<SearchFoodLogChartVO> getFrequencyGroupingbyFood() {
		ArrayList<SearchFoodLogChartVO> foodloglist = new ArrayList<SearchFoodLogChartVO>();
		String sql = "select food_key, count(*) as co from search_log group by food_key order by co desc";
		Connection conn = null;
		try{
			conn = DBConn.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			int count = 0;
			String colorList[] = new String[]{"#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74","#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74"};
			
			while(rs.next()){
				SearchFoodLogChartVO foodlogchart = new SearchFoodLogChartVO();
				foodlogchart.setFoodName(rs.getString("food_key"));
				foodlogchart.setCountFood(rs.getInt("co"));
				foodlogchart.setColor(colorList[count]);
				foodloglist.add(foodlogchart);
				count++;
			}
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.getFrequencyGroupingbyFood : " + e.getMessage());
		}
		return foodloglist;
	}

	@Override
	public Collection<MemberLocationChartVO> getFrequencyGroupingbyLocation() {
		ArrayList<MemberLocationChartVO> LocationList = new ArrayList<MemberLocationChartVO>();
		String sql = "select location, count(*) as co from member m, search_log_db s where m.userid = s.userid group by location order by co desc";
		Connection conn = null;
		try{
			conn = DBConn.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			int count = 0;
			String colorList[] = new String[]{"#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74","#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74"};
			
			while(rs.next()){
				MemberLocationChartVO locationchart = new MemberLocationChartVO();
				locationchart.setLocationName(rs.getString("location"));
				locationchart.setCountLocation(rs.getInt("co"));
				locationchart.setColor(colorList[count]);
				LocationList.add(locationchart);
				count++;
			}
			if(LocationList.size() ==0){
				
			}
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.getFrequencyGroupingbyLocation : " + e.getMessage());
		}
		return LocationList;
	}
	
	@Override
	public Collection<MedLocationChartVO> getMedCountGroupingbyLocation(String medName){
		ArrayList<MedLocationChartVO> LocMedList = new ArrayList<MedLocationChartVO>();
		String sql = "select location, count(*) as co from MEMBER m, SEARCH_LOG_DB s "
				+ "where m.userid=s.userid and s.med_NAME = ? group by location "; 
		Connection conn = null;
		try{
			conn = DBConn.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, medName);
			ResultSet rs = pstmt.executeQuery();
			int count = 0;
			String colorList[] = new String[]{"#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74","#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74"};
			
			while(rs.next()){
				MedLocationChartVO locMedchart = new MedLocationChartVO();
				locMedchart.setLocationName(rs.getString("location"));
				locMedchart.setCountMedPerLoc(rs.getInt("co"));
				locMedchart.setColor(colorList[count]);
				LocMedList.add(locMedchart);
				count++;
			}
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.getMedCountGroupingbyLocation : " + e.getMessage());
		}
		return LocMedList;
	}
	
	@Override
	public Collection<FoodLocationChartVO> getFoodCountGroupingbyLocation(String foodName){
		ArrayList<FoodLocationChartVO> LocFoodList = new ArrayList<FoodLocationChartVO>();
		String sql = "select location, count(*) as co from member m, search_log_db s "
				+ "where m.userid=s.userid and s.food_name = ? group by location "; 
		Connection conn = null;
		try{
			conn = DBConn.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, foodName);
			ResultSet rs = pstmt.executeQuery();
			int count =0;
			String colorList[] = new String[]{"#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74","#FF0F00","#FF6600","#FF9E01",
					"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
					"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74"};
			
			while(rs.next()){
				FoodLocationChartVO locFoodchart = new FoodLocationChartVO();
				locFoodchart.setLocationName(rs.getString("location"));
				locFoodchart.setCountFoodPerLoc(rs.getInt("co"));
				locFoodchart.setColor(colorList[count]);
				LocFoodList.add(locFoodchart);
				count++;
			}	
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.getFoodCountGroupingbyLocation : " + e.getMessage());
		}
		return LocFoodList;
	}



	public Collection<FoodMedLogChartVO> getFoodMedCount(){
		ArrayList<FoodMedLogChartVO> FoodMedList = new ArrayList<FoodMedLogChartVO>();
		String sql = "select food_key, med_key, count(*) as co from search_log group by food_key, med_key order by co desc";
		Connection conn = null;
		try{
				conn = DBConn.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				int count =0;
				String colorList[]= new String[]{"#FF0F00","#FF6600","#FF9E01",
						"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
						"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74","#FF0F00","#FF6600","#FF9E01",
						"#FCD202","#F8FF01", "#B0DE09","#04D215", "#0D8ECF", 
						"#0D52D1", "#2A0CD0","#8A0CCF", "#CD0D74"};
				
				while(rs.next()){
						FoodMedLogChartVO FoodMedChart = new FoodMedLogChartVO();
						FoodMedChart.setFoodName(rs.getString("food_key"));
						FoodMedChart.setMedName(rs.getString("med_key"));
						FoodMedChart.setMatchName(rs.getString("food_key") + " * " + rs.getString("med_key"));
						FoodMedChart.setCountFoodMed(rs.getInt("co"));
						FoodMedChart.setColor(colorList[count]);
						FoodMedList.add(FoodMedChart);
						count++;
				}
						
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("SearchLogDAO.getFrequencyGroupingbyLocation : " + e.getMessage());
		}
		return FoodMedList;
	}
	
}	
