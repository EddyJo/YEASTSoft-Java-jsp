package kr.co.javaspecialist.food.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.common.db.DBConn;
;



public class FoodInfoDAO implements IFoodInfoDAO {
	
	@Override
	public void insertFoodInfo(FoodInfoVO FoodInfo) {
		// TODO Auto-generated method stub
		Connection con = null;
		String sql2 = "insert into food_info values (?, ?, ?, ?)";
		String sql1 = "select nvl(max(serial_num),0) from food_info";
		try {
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int serial_num = 0;
			
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql1);
			ResultSet rs = stmt.executeQuery();
			rs.next();
			serial_num = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt = con.prepareStatement(sql2);
			stmt.setInt(1, serial_num);
			stmt.setString(2, FoodInfo.getFoodName());
			stmt.setString(3,FoodInfo.getGoodDisease());
			stmt.setString(4, FoodInfo.getBadDisease());
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("foodInfoDAO.insertfoodinfo : " + e.getMessage());
		}finally {
			DBConn.closeConnection(con);
		}
	}
	
	public Collection<FoodInfoVO> selectFoodList(String foodname) {
		Connection con = null;
		ArrayList<FoodInfoVO> list = new ArrayList<FoodInfoVO>();
		String sql = "select food_name, nvl(good_disease, '없음') as good_disease, nvl(bad_disease, '없음') as bad_disease from food_info where food_name = ? ";
		try {
			con= DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, foodname);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				FoodInfoVO foodinfo = new FoodInfoVO();
				foodinfo.setFoodName(rs.getString("food_name"));
				foodinfo.setGoodDisease(rs.getString("good_disease"));
				foodinfo.setBadDisease(rs.getString("bad_disease"));
				System.out.println("첵첵");
				System.out.println(foodinfo.toString());
				list.add(foodinfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("foodInfoDAO.selectArticleList : " + e.getMessage());
		} finally {
			DBConn.closeConnection(con);
		}
		return list;
	}
	
	@Override
	public FoodInfoVO selectFoodInfo(String foodName) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int serial_num = 0;
			String sql = "select * from food_info where foodName=?";
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			serial_num = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt.setString(1, foodName);
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			DBConn.closeConnection(con);
		}
		return null;
	}

//	@Override
//	public ArrayList<FoodInfoVO> selectAll_FoodInfo() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public void update(FoodInfoVO FoodInfo) {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public int delete(FoodInfoVO FoodInfo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

}