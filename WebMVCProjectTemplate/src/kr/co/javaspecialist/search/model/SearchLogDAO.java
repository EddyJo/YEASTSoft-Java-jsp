package kr.co.javaspecialist.search.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import kr.co.javaspecialist.board.model.BoardVO;

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
		String sql1 = "select nvl(max(serial_num),0) from search_log"; //Oracle

		int serial_num = 0;
		String sql2 = "insert into search_log values (?, ?, ?, ?, sysdate)"; //Oracle
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql1);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			serial_num = rs.getInt(1)+1;
			pstmt = con.prepareStatement(sql2);
			pstmt.setInt(1, serial_num);
			pstmt.setString(2, searchlog.getUserId());
			pstmt.setString(3, searchlog.getMedKey());
			pstmt.setString(4, searchlog.getFoodKey());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("searchlogDAO.insertLog : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
	}

	
	@Override
	public Collection<SearchLogVO> selectUserId(String userId) {
		Connection con = null;

		ArrayList<SearchLogVO> idlist = new ArrayList<SearchLogVO>();
		
		String sql = "select med_key, food_key, search_date from search_log where USERID= + ?"  ;
		
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				SearchLogVO logListByUserId = new SearchLogVO();
				logListByUserId.setMedKey(rs.getString("med_Key"));
				logListByUserId.setFoodKey(rs.getString("food_key"));
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
	public Collection<SearchLogVO> selectAllList() {
		Connection con = null;
		ArrayList<SearchLogVO> list = new ArrayList<SearchLogVO>();

		String sql = "select * from search_log order by SERIAL_NUM DESC"; 

		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				SearchLogVO searchlog = new SearchLogVO();
				searchlog.setSerialNum(rs.getInt("serial_num"));
				searchlog.setUserId(rs.getString("userid"));
				searchlog.setMedKey(rs.getString("med_key"));
				searchlog.setFoodKey(rs.getString("food_key"));
				searchlog.setSearchDate(rs.getString("search_date"));
				list.add(searchlog);
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("BoardDAO.selectArticleList : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		return list;
	}



}


