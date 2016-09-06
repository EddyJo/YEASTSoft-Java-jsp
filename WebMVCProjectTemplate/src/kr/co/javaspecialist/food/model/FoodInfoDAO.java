package kr.co.javaspecialist.food.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.javaspecialist.common.db.DBConn;



public class FoodInfoDAO implements IFoodInfoDAO {
	
	@Override
	public void insert_FoodInfo(FoodInfoVO FoodInfo) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int serial_num = 0;
			String sql = "insert into FoodInfo values (?, ?, ?, ?)";
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			serial_num = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt.setInt(1, serial_num);
			stmt.setString(2, FoodInfo.getFoodName());
			stmt.setString(3,FoodInfo.getGoodDisease());
			stmt.setString(4, FoodInfo.getBadDisease());
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			DBConn.closeConnection(con);
		}
	}

	@Override
	public FoodInfoVO select_FoodInfo(String foodName) {
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

	@Override
	public ArrayList<FoodInfoVO> selectAll_FoodInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(FoodInfoVO FoodInfo) {
		// TODO Auto-generated method stub

	}

	@Override
	public int delete(FoodInfoVO FoodInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

}