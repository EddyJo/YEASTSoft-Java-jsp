package kr.co.javaspecialist.medicine.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import kr.co.javaspecialist.common.db.DBConn;

public class MedInfoDAO implements IMedInfoDAO {

	@Override
	//새로운 약품정보 약품DB에 추가하는 메서드
	public void insertMedInfo(MedInfoVO medinfo) {
		Connection con= null;
		String sql ="insert into med_info values (?, ?)";
		try{
			con= DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, medinfo.getMedName());
			pstmt.setString(2, medinfo.getDisease());
			pstmt.executeUpdate();			
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("MedInfoDAO.insertMedInfo : " + e.getMessage());
		}finally{
			DBConn.closeConnection(con);
		}

	}

}
