package kr.co.javaspecialist.medicine.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.board.model.BoardVO;
import kr.co.javaspecialist.common.db.DBConn;

public class MedInfoDAO implements IMedInfoDAO {

	@Override
	//새로운 약품정보 약품DB에 추가하는 메서드
	public void insertMedInfo(MedInfoVO medinfo) {
		Connection con= null;
		String sql2 ="insert into med_info values (? ,?, ?)";
		String sql1 = "select nvl(max(serial_num),0) from med_info";
		try{
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
	public Collection<MedInfoVO> selectMedList(String med_name) {
			Connection con = null;
			ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();

			String sql = "select med_name, disease from med_info where med_name = ?";
			try {
				con= DBConn.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, med_name);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					MedInfoVO medinfo = new MedInfoVO();
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
//	public BoardVO selectArticle(int bbsno) {}
//	public void updateReadCount(int bbsno) {}
//	public int selectTotalArticleCount() {}
//	public void updateArticle(BoardVO board) {}
//	public void deleteArticle(int bbsno, int replynumber) {}

	@Override
	public Collection<MedInfoVO> selectMedList() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
