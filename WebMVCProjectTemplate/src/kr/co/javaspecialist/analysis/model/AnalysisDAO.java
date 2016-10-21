package kr.co.javaspecialist.analysis.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import kr.co.javaspecialist.common.db.DBConn;
import kr.co.javaspecialist.food.model.FoodInfoVO;
import kr.co.javaspecialist.member.model.MemberVO;

public class AnalysisDAO implements IAnalysisDAO {

	@Override
	public int ingredientRelation(String med_name, String food_name){
		Connection con= null;
		System.out.println("ingredient : " + med_name + " " + food_name);
		//약품성분+식품성분 관계를 리턴 
		String sql = "SELECT ingredient_relation FROM ingredient_relation "
				+ "WHERE med_main_ingredient IN (SELECT med_main_ingredient FROM med WHERE med_name=?) "
				+ "AND food_ingredient IN (SELECT food_ingredient FROM food WHERE food_name=?)";

		try{
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, med_name);
			stmt.setString(2, food_name);
			ResultSet rs = stmt.executeQuery();
			String result = "no relation";
			//			결과값, 관계가 좋으면 60점, 좋지 않으면 -100, 관계가 없으면 0
			while(rs.next()) {
				result = rs.getString("ingredient_relation"); 
			}
			if(result.equals("GOOD")) {
				System.out.println(result);
				return 60;
			} else if(result.equals("BAD")) {
				System.out.println(result);
				return -100;
			} else System.out.println(result); return 0;
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("AnalysisDAO.ingrerel : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}
		
	}

	@Override
	public int groupRelation(String med_name, String food_name) {
		Connection con= null;
		System.out.println("group : " + med_name + " " + food_name);
		//약품성분+식품성분 관계를 리턴 
		String sql = "select group_relation from group_RELATION "
				+ "where med_group in(select med_group from med where med_name = ?) "
				+ "and food_name = ?";

		try{
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, med_name);
			stmt.setString(2, food_name);
			ResultSet rs = stmt.executeQuery();
			String result = "no relation";
			//			결과값, 관계가 좋으면 60점, 좋지 않으면 -100, 관계가 없으면 0
			while(rs.next()) {
				result = rs.getString("group_relation"); 
			}
			if(result.equals("GOOD")) {
				System.out.println(result);
				return 30;
			} else if(result.equals("BAD")) {
				System.out.println(result);
				return -30;
			} else System.out.println(result); return 0;
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("AnalysisDAO.group : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}		
	}


	@Override
	public int diseaseRelation(String med_name, String food_name) {
		Connection con= null;
		System.out.println("disease : " + med_name + " " + food_name);
		//약품성분+식품성분 관계를 리턴 
		String sql = "select disease_relation from DISEASE_RELATION "
				+ "where disease in(select med_disease from med where med_name = ?) "
				+ "and food_name = ?";

		try{
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			System.out.println("11");
			stmt.setString(1, med_name);
			stmt.setString(2, food_name);
			System.out.println("111");
			ResultSet rs = stmt.executeQuery();
			String result = "no relation";
			//			결과값, 관계가 좋으면 60점, 좋지 않으면 -100, 관계가 없으면 0
			while(rs.next()) {
				result = rs.getString("disease_relation"); 
			}
			if(result.equals("GOOD")) {
				System.out.println(result);
				return 10;
			} else if(result.equals("BAD")) {
				System.out.println(result);
				return -10;
			} else System.out.println(result); return 0;
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("AnalysisDAO.diesease : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}		
	}


	@Override
	public ArrayList<String> goodIngredient(String med_name) {
		Connection con= null;
		System.out.println("goodlist : " + med_name);
		//약품성분+식품성분 관계를 리턴 
		String sql = "select food_name from food where food_ingredient in(SELECT food_ingredient FROM ingredient_relation WHERE med_main_ingredient IN (SELECT med_main_ingredient FROM med WHERE med_name = ?) AND ingredient_relation = 'GOOD')";
		try{
			ArrayList<String> goodlist = new ArrayList<String>();
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, med_name);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				goodlist.add(rs.getString("food_name"));
			}
			return goodlist;
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("AnalysisDAO.goodIngredient : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}		
	}
	

	@Override
	public ArrayList<String> badIngredient(String med_name) {
		Connection con= null;
		System.out.println("badlist : " + med_name);
		//약품성분+식품성분 관계를 리턴 
		String sql = "select food_name from food where food_ingredient in(SELECT food_ingredient FROM ingredient_relation WHERE med_main_ingredient IN (SELECT med_main_ingredient FROM med WHERE med_name= ? ) AND ingredient_relation = 'BAD')";

		try{
			ResultSet rs = null;
			ArrayList<String> badlist = new ArrayList<String>();
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, med_name);
			rs = stmt.executeQuery();
			while(rs.next()) {
				badlist.add(rs.getString("food_name"));
			}
			return badlist;
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("AnalysisDAO.badIngredient : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}		
	}
}

