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
	public Collection<MedInfoVO> selectMedList(String med_name) {
			Connection con = null;
			ArrayList<MedInfoVO> list = new ArrayList<MedInfoVO>();

			String sql = "select med_name, disease";
			try {
				con= DBConn.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					MedInfoVO board = new MedInfoVO();
					board.setMedName(rs.getString("med_name"));
					board.setDisease(rs.getString("disease"));
					list.add(board);
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("BoardDAO.selectArticleList : " + e.getMessage());
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
