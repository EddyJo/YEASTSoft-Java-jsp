package kr.co.javaspecialist.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.javaspecialist.common.db.DBConn;

public class MemberDAO implements IMemberDAO{
	
	public void insert(MemberVO member) {
		Connection con = null;
		try {
			con = DBConn.getConnection();
			//1. 쿼리 작성
			String sql = "insert into member (userid, password, age, gender, location) "
					+ "values (?, ?, ?, ?, ?)";
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql);
			//3. 쿼리 파라미터 설정
			stmt.setString(1, member.getUserid());
			stmt.setString(2, member.getPassword());
			stmt.setInt(3, member.getAge());
			stmt.setString(4, member.getGender());
			stmt.setString(5, member.getLocation());
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			DBConn.closeConnection(con);
		}
	}
	
	public MemberVO selectMember(String userid) {
		MemberVO member = new MemberVO();
		Connection con = null;
		try {
			con = DBConn.getConnection();
			
			String sql = "select * from member where userid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, userid);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				//rs에는 쿼리 실행결과가 있다. rs에 있는 데이터를 vo에 담아야 한다.
				member.setUserid(rs.getString("userid"));
				member.setPassword(rs.getString("password"));
				member.setGender(rs.getString("gender"));
				member.setAge(rs.getInt("age"));
				member.setLocation(rs.getString("location"));
			}
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally{
			DBConn.closeConnection(con);
		}
		
		return member;
	}
	
	public ArrayList<MemberVO> selectAllMembers() {
		ArrayList<MemberVO> members = null;
		Connection con = null;
		try {
			members = new ArrayList<MemberVO>();
			con = DBConn.getConnection();
			String sql = "select userid, password, gender, age, location from member";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			//결과 셋이 여러개 이므로...
			while(rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setUserid(rs.getString("userid"));
				vo.setPassword(rs.getString("password"));
				vo.setGender(rs.getString("gender"));
				vo.setAge(rs.getInt("age"));
				vo.setLocation(rs.getString("location"));
				members.add(vo);
			}
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally {
			DBConn.closeConnection(con);
		}
		
		return members;
	}

	public void update(MemberVO member) {
		Connection con = null;
		try {
			con = DBConn.getConnection();
			con.setAutoCommit(false);
			String sql = "update member set "
					+ "password=?, gender=?, age=?, location=?"
					+ "where userid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, member.getPassword());
			stmt.setString(2, member.getGender());
			stmt.setInt(3, member.getAge());
			stmt.setString(4, member.getLocation());
			stmt.setString(5, member.getUserid());
			stmt.executeUpdate();
			con.commit();
		}catch(SQLException e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				//nothing
			}
			throw new RuntimeException(e);
		}finally {
			DBConn.closeConnection(con);
		}
	}

	public int delete(MemberVO member) {
		Connection con = null;
		int count=0;
		try{
			con = DBConn.getConnection();
			String sql = "delete from member where userid=? and password=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, member.getUserid());
			stmt.setString(2, member.getPassword());
			
			count = stmt.executeUpdate();
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally{
			DBConn.closeConnection(con);
		}
		return count;
	}
}
