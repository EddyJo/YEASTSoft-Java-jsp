package kr.co.javaspecialist.medicine.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;


import kr.co.javaspecialist.common.db.DBConn;
import kr.co.javaspecialist.food.model.FoodInfoVO;
import kr.co.javaspecialist.member.model.MemberVO;

public class MedInfoDAO implements IMedInfoDAO {

	@Override
	//새로운 약품정보 약품DB에 추가하는 메서드
	public void insertMedInfo(MedInfoVO medinfo) {
		Connection con= null;
		String sql2 ="insert into med_info values (? ,?, ?)";
		String sql1 = "select nvl(max(med_serial_num),0) from med_info";
		try{
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int med_serial_num = 0;
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql1);
			ResultSet rs = stmt.executeQuery();
			rs.next();
			med_serial_num = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt = con.prepareStatement(sql2);
			stmt.setInt(1, med_serial_num);
			stmt.setString(2, medinfo.getMedName());
			stmt.setString(3, medinfo.getDisease());
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("MedInfoDAO.insertMedInfo : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}

	}
	public Collection<MedInfoVO> selectMedList(String medName) {
		Connection con = null;
		ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();
		String sql = "select * from med_info where med_name = ? order by med_serial_num";
		try {
			con= DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, medName);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MedInfoVO medinfo = new MedInfoVO();
				medinfo.setSerialNum(rs.getInt("med_serial_num"));
				medinfo.setMedName(rs.getString("med_name"));
				medinfo.setDisease(rs.getString("disease"));
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

	public Collection<MedInfoVO> selectMedListAll() {
		Connection con = null;
		ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();
		String sql = "select * from med_info order by med_serial_num";
		try {
			con= DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MedInfoVO medinfo = new MedInfoVO();
				medinfo.setSerialNum(rs.getInt("med_serial_num"));
				medinfo.setMedName(rs.getString("med_name"));
				medinfo.setDisease(rs.getString("disease"));
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
	public String update(int serialNum) {
		Connection con = null;
		String sql = "update med_info set med_name=?, disease=? where med_serial_num=?"; 
		try {
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
//			stmt.setString(1, medName);
//			stmt.setString(2, disease);
			stmt.setInt(3, serialNum);
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
	public String delete(int serialNum) {
		// 관리자 식품 정보 삭제 구현
		Connection con = null;
		String sql = "delete from med_info where MED_SERIAL_NUM = ?";
		try{
			con = DBConn.getConnection(); //sqldeveloper의 hr 계정연결
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, serialNum);
			pstmt.executeUpdate();//쿼리문 실행
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			DBConn.closeConnection(con);
		}

		return "삭제되었습니다";

	}
	@Override
	public MedInfoVO selectMedInfo(String medName) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = DBConn.getConnection();
			//1. 쿼리 작성
			int serial_num = 0;
			String sql = "select * from med_info where foodName=?";
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			serial_num = rs.getInt(1)+1;
			//3. 쿼리 파라미터 설정
			stmt.setString(1, medName);
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			DBConn.closeConnection(con);
		}
		return null;
	}
}
