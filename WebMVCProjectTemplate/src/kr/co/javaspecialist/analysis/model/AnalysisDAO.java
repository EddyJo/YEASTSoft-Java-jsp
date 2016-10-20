package kr.co.javaspecialist.analysis.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import kr.co.javaspecialist.common.db.DBConn;
import kr.co.javaspecialist.food.model.FoodInfoVO;
import kr.co.javaspecialist.member.model.MemberVO;

public class AnalysisDAO implements IAnalysisDAO {

	@Override
	public int ingredientRelation(String med_name, String food_name){
		Connection con= null;
		//약품성분+식품성분 관계를 리턴 
		String sql1 = "SELECT ingredient_relation FROM ingredient_relation "
				+ "WHERE med_main_ingredient IN (SELECT med_main_ingredient FROM med WHERE med_name=?) "
				+ "AND food_ingredient IN (SELECT food_ingredient FROM food WHERE food_name=?)";

		try{
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql1);
			stmt.setString(1, med_name);
			stmt.setString(2, food_name);
			ResultSet rs = stmt.executeQuery();
			String result = "no relation";
			//			결과값, 관계가 좋으면 60점, 좋지 않으면 -100, 관계가 없으면 0
			while(rs.next()) {
				result = rs.getString("ingredient_relation"); 
			}
			if(result=="GOOD") {
				System.out.println(result);
				return 60;
			} else if(result=="BAD") {
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int diseaseRelation(String med_name, String food_name) {
		// TODO Auto-generated method stub
		return 0;
	}
}

//	@Override
//	public int groupRelation(String med_name, String food_name) {
//		//점수와 약품성분을 받아 약품DB와 join 하여 약품군을 찾기
//		//약품성분을 select 하는 쿼리문
//		String sql2 = "SELECT MED_MAIN_INGREDIENT FROM MED WHERE MED_NAME=?"; 
//		
//		//점수와 질병명을 리턴
//		return 0;
//	}
//	
//	@Override
//	public int diseaseRelation(String med_name, String food_name){
//점수와 질병명을 받아 DB에서 관계찾기
//return 합계된 점수
//		Connection con= null;
//		String sql = "select disease_relation from disease_relation where disease = ? and food_name = ?";
//		try{
//			con = DBConn.getConnection();
//			PreparedStatement pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, analysis.getDisease();
//			pstmt.setString(2, analysis.getFood_name());
//			ResultSet rs = pstmt.executeQuery();
//			if(rs.getString(0).equals("GOOD") { 
//				
//			}else { BAD 이라면 있는 점수 리턴)
//				
//
//		}catch(SQLException e){
//			e.printStackTrace();
//			throw new RuntimeException("MedInfoDAO.insertMedInfo : " + e.getMessage());
//		}finally{
//			DBConn.closeConnection(con);
//		}
//		return score;
//	}
//}

//	public Collection<MedInfoVO> selectMedList(String medName) {
//		Connection con = null;
//		ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();
//		String sql = "select * from med_info where med_name = ? order by med_serial_num";
//		try {
//			con= DBConn.getConnection();
//			PreparedStatement pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, medName);
//			ResultSet rs = pstmt.executeQuery();
//			while(rs.next()) {
//				MedInfoVO medinfo = new MedInfoVO();
//				medinfo.setSerialNum(rs.getInt("med_serial_num"));
//				medinfo.setMedName(rs.getString("med_name"));
//				medinfo.setDisease(rs.getString("disease"));
//				list.add(medinfo);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw new RuntimeException("medInfoDAO.selectArticleList : " + e.getMessage());
//		} finally {
//			DBConn.closeConnection(con);
//		}
//		return list;
//	}
//
//	public Collection<MedInfoVO> selectMedListAll() {
//		Connection con = null;
//		ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();
//		String sql = "select * from med_info order by med_serial_num";
//		try {
//			con= DBConn.getConnection();
//			PreparedStatement pstmt = con.prepareStatement(sql);
//			ResultSet rs = pstmt.executeQuery();
//			while(rs.next()) {
//				MedInfoVO medinfo = new MedInfoVO();
//				medinfo.setSerialNum(rs.getInt("med_serial_num"));
//				medinfo.setMedName(rs.getString("med_name"));
//				medinfo.setDisease(rs.getString("disease"));
//				list.add(medinfo);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw new RuntimeException("medInfoDAO.selectArticleList : " + e.getMessage());
//		} finally {
//			DBConn.closeConnection(con);
//		}
//		return list;
//	}
//	@Override
//	public String update(int serialNum) {
//		Connection con = null;
//		String sql = "update med_info set med_name=?, disease=? where med_serial_num=?"; 
//		try {
//			con = DBConn.getConnection();
//			PreparedStatement stmt = con.prepareStatement(sql);
////			stmt.setString(1, medName);
////			stmt.setString(2, disease);
//			stmt.setInt(3, serialNum);
//			stmt.executeUpdate();
//			con.commit();
//		}catch(SQLException e) {
//			throw new RuntimeException(e);
//		}finally {
//			DBConn.closeConnection(con);
//		}
//		return "수정되었습니다.";
//	}
//
//	@Override
//	public String delete(int serialNum) {
//		// 관리자 식품 정보 삭제 구현
//		Connection con = null;
//		String sql = "delete from med_info where MED_SERIAL_NUM = ?";
//		try{
//			con = DBConn.getConnection(); //sqldeveloper의 hr 계정연결
//			PreparedStatement pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1, serialNum);
//			pstmt.executeUpdate();//쿼리문 실행
//		}catch(SQLException e){
//			throw new RuntimeException(e);
//		}finally{
//			DBConn.closeConnection(con);
//		}
//
//		return "삭제되었습니다";
//
//	}
//	@Override
//	public MedInfoVO selectMedInfo(String medName) {
//		// TODO Auto-generated method stub
//		Connection con = null;
//		try {
//			con = DBConn.getConnection();
//			//1. 쿼리 작성
//			int serial_num = 0;
//			String sql = "select * from med_info where foodName=?";
//			//2. statement 객체 생성 
//			PreparedStatement stmt = con.prepareStatement(sql);
//			ResultSet rs = stmt.executeQuery();
//			serial_num = rs.getInt(1)+1;
//			//3. 쿼리 파라미터 설정
//			stmt.setString(1, medName);
//			//4. 쿼리 실행, executeQuery 또는 executeUpdate
//			stmt.executeUpdate();
//		}catch(SQLException e) {
//			throw new RuntimeException(e);
//		}finally {
//			DBConn.closeConnection(con);
//		}
//		return null;
//	}
//}
