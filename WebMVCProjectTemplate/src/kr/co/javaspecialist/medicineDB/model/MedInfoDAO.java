package kr.co.javaspecialist.medicineDB.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.common.db.DBConn;


public class MedInfoDAO implements IMedInfoDAO {

	@Override
	public void insertMedInfo(MedInfoVO medinfo) {
		Connection con= null;
		String sql2 ="insert into MED values (? ,?, ?, ?, ?)";
		String sql1 = "select nvl(max(MED_ID),0) from MED";
		try{
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int med_id = 0;
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql1);
			ResultSet rs = stmt.executeQuery();
			rs.next();
			med_id = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt = con.prepareStatement(sql2);
			stmt.setInt(1, med_id);
			stmt.setString(2, medinfo.getMed_name());
			stmt.setString(3, medinfo.getMed_main_ingredient());
			stmt.setString(2, medinfo.getMed_disease());
			stmt.setString(2, medinfo.getMed_group());
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("MedInfoDAO.insertMedInfo : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}

	}

	@Override
	public Collection<MedInfoVO> selectMedList(String med_name) {
		Connection con = null;
		ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();
		String sql = "select * from MED where MED_NAME = ? order by MED_ID";
		try {
			con= DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, med_name);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MedInfoVO medinfo = new MedInfoVO();
				medinfo.setMed_id(rs.getInt("med_id"));
				medinfo.setMed_name(rs.getString("med_name"));
				medinfo.setMed_main_ingredient(rs.getString("med_main_ingredient"));
				medinfo.setMed_disease(rs.getString("med_group"));
				medinfo.setMed_group(rs.getString("med_disease"));
				list.add(medinfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("medInfoDAO.selectArticleList : " + e.getMessage());
		} finally {
			DBConn.closeConnection(con);
		}
		return list;
	}
	@Override
	public Collection<MedInfoVO> selectMedListAll() {
		Connection con = null;
		ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();
		String sql = "select * from MED order by MED_ID";
		try {
			con= DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MedInfoVO medinfo = new MedInfoVO();
				medinfo.setMed_id(rs.getInt("med_id"));
				medinfo.setMed_name(rs.getString("med_name"));
				medinfo.setMed_main_ingredient(rs.getString("med_main_ingredient"));
				medinfo.setMed_disease(rs.getString("med_group"));
				medinfo.setMed_group(rs.getString("med_disease"));
				list.add(medinfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("medInfoDAO.selectArticleList : " + e.getMessage());
		} finally {
			DBConn.closeConnection(con);
		}
		return list;
	}

	@Override
	public MedInfoVO selectMedInfo(String med_name) {
		Connection con = null;
		try {
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int med_id = 0;
			String sql = "select * from MED_ID where MED_NAME=?";
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			med_id = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt.setString(1, med_name);
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
	public String update(int med_id) {
		Connection con = null;
		String sql = "update MED set MED_NAME=?, MED_MAIN_INGREDIENT=?, MED_GROUP=?, MED_DISEASE=? where MED_ID=?"; 
		try {
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(3, med_id);
			stmt.executeUpdate();
			con.commit();
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			DBConn.closeConnection(con);
		}
		return "수정되었습니다.";
	}
	
	@Override
	public String delete(int med_id) {
		// 관리자 식품 정보 삭제 구현
		Connection con = null;
		String sql = "delete from MED where MED_ID = ?";
		try{
			con = DBConn.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, med_id);
			pstmt.executeUpdate();//쿼리문 실행
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			DBConn.closeConnection(con);
		}
	
		return "삭제되었습니다";
	
	}
}	