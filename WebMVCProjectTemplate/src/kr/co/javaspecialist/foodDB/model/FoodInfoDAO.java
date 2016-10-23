package kr.co.javaspecialist.foodDB.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.common.db.DBConn;

public class FoodInfoDAO implements IFoodInfoDAO {

	@Override
	public void insertFoodInfo(FoodInfoVO FoodInfo) {
		Connection con = null;
		String sql2 = "insert into FOOD values (?,?,?)";
		String sql1 = "select nvl(max(food_id),0) from FOOD";
		try {
			con = DBConn.getConnection();
			int food_id = 0;
			
			PreparedStatement stmt = con.prepareStatement(sql1);
			ResultSet rs = stmt.executeQuery();
			rs.next();
			food_id = rs.getInt(1)+1;
			
			stmt = con.prepareStatement(sql2);
			stmt.setInt(1, food_id);
			stmt.setString(2, FoodInfo.getFood_name());
			stmt.setString(3, FoodInfo.getFood_ingredient());
			
			stmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("foodInfoDAO.insertfoodinfo: " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}

	}

	@Override
	public Collection<FoodInfoVO> selectFoodListAll() {
		Connection con = null;
		ArrayList<FoodInfoVO> list = new ArrayList<FoodInfoVO>();
		String sql = "select * from FOOD order by food_id";
		try{
			con = DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				FoodInfoVO foodinfo = new FoodInfoVO();
				foodinfo.setFood_id(rs.getInt("food_id"));
				foodinfo.setFood_name(rs.getString("food_name"));
				foodinfo.setFood_ingredient(rs.getString("food_ingredient"));
				list.add(foodinfo);
			}
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("foodInfoDAO.selctFoodList :" + e.getMessage());
		} finally {
			DBConn.closeConnection(con);
		}
		return list;
	}

	@Override
	public Collection<FoodInfoVO> selectFoodList(String food_name) {
		Connection con = null;
		ArrayList<FoodInfoVO> list = new ArrayList<FoodInfoVO>();
		String sql = "select * from FOOD where FOOD_NAME = ? order by FOOD_ID";
		try{
			con = DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, food_name);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				FoodInfoVO foodinfo =new FoodInfoVO();
				foodinfo.setFood_id(rs.getInt("food_id"));
				foodinfo.setFood_name(rs.getString("food_name"));
				foodinfo.setFood_ingredient(rs.getString("food_ingredient"));
				list.add(foodinfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("foodInfoDAO.selectFoodList : " + e.getMessage());
		} finally {
			DBConn.closeConnection(con);
		}
		return list;
	}	
			

	@Override
	public FoodInfoVO selectFoodInfo(String food_name) {
		Connection con = null;
		try {
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int food_id = 0;
			String sql = "select * from FOOD where food_name=?";
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			food_id = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt.setString(1, food_name);
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
	public String delete(int food_id) {
		Connection con = null;
		String sql = "delete from FOOD where FOOD_ID = ?";
		try{
			con = DBConn.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, food_id);
			pstmt.executeUpdate();//쿼리문 실행
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			DBConn.closeConnection(con);
		}
		
		return "삭제되었습니다";
		
	}

}