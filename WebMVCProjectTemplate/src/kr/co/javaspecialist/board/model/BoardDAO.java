package kr.co.javaspecialist.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO implements IBoardDAO {

	private Connection getConnection() {
		DataSource ds = null; //javax.sql.*
		Connection con = null;
		try{
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle");
			con = ds.getConnection();
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}

	private void closeConnection(Connection con) {
		if(con!=null) {
			try { con.close(); }catch(Exception e) {}
		} 
	}

	/**
	 * 게시글을 등록 하는 메서드<br>
	 * 기존 게시글 중 가장 큰 글번호를 조회한 다음 1을 더해 새로운 개시글의 글번호로 함<br>
	 * 새로운 글 저장시... 마스터 글번호는 글번호와 같은 값으로 저장<br>
	 * 조회수, 답변글번호, 답변글단계는 모두 0값<br>
	 * 작성한 날짜는 현재 날짜 적용<br>
	 * @param board
	 */
	public void insertArticle(BoardVO board) {
		Connection con = null;
		String sql1 = "select nvl(max(bbsno),0) from board"; //Oracle
		//		String sql1 = "select coalesce(max(bbsno),0) from board";//PostgreSQL
		int bbsno = 0;
		String sql2 = "insert into board values (?, ?, ?, ?, ?, ?, SYSDATE, ?, 0, 0, 0)"; //Oracle
		//		String sql2 = "insert into board values(?,?,?,?,?,?,NOW(),?,0,0,0)"; //PostgreSQL
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql1);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			bbsno = rs.getInt(1)+1;
			pstmt = con.prepareStatement(sql2);
			pstmt.setInt(1, bbsno);
			pstmt.setString(2, board.getName());
			pstmt.setString(3, board.getPassword());
			pstmt.setString(4, board.getEmail());
			pstmt.setString(5, board.getSubject());
			pstmt.setString(6, board.getContent());
			pstmt.setInt(7, bbsno);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("BoardDAO.insertArticle : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
	}//end insertArticle

	/**
	 * 게시글 목록을 조회하는 메서드<br>
	 * 다중 쿼리를 이용하였음
	 * @param page 페이지 번호
	 * @param maxno 한 화면에 보여질 목록의 개수
	 * @return list Board 정보가 저장되어 있는 ArrayList객체
	 */
	public Collection<BoardVO> selectArticleList(int page, int maxno) {
		Connection con = null;
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		String sql = "select bbsno,name,email,subject,writedate,readcount,masterid,replynumber,replystep,rnum from ( "
				+ " select bbsno,name,email,subject,writedate,readcount,masterid,replynumber,replystep, rownum rnum from ( "
				+ " select bbsno,name,email,subject,writedate,readcount,masterid,replynumber,replystep from board "
				//				+ " start with replyNumber=0 "
				//				+ " connect by prior bbsno=replyNumber "
				+ " order by masterid desc, replyNumber, replyStep)) "
				+ " where rnum between ? and ? "; //Oracle
//				String sql = "select bbsno, name, subject, writedate, readcount, email, masterid, replynumber, replystep, rownum() as rnum " +
//						"from board order by masterid desc, replynumber, replystep limit 10 offset ?"; //PostgreSQL, hsqlDB
		int start = (page-1) * 10 +1;
		int end = start + maxno-1;
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1, (start-1)*10);//PostgreSQL 일 경우
			pstmt.setInt(1, start); //Oracle 일 경우
			pstmt.setInt(2, end); //Oracle 일 경우
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setBbsno(rs.getInt("bbsno"));
				board.setName(rs.getString("name"));
				board.setEmail(rs.getString("email"));
				board.setSubject(rs.getString("subject"));
				board.setWritedate(rs.getDate("writedate"));
				board.setReadcount(rs.getInt("readcount"));
				board.setReplynumber(rs.getInt("replynumber"));
				board.setReplystep(rs.getInt("replystep"));
				board.setSeq(rs.getInt("rnum"));
				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("BoardDAO.selectArticleList : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		return list;
	}//end selectArticleList

	/**
	 * 게시글 목록을 조회하는 메서드<br>
	 * 한꺼번에 100개 게시글을 가져온다. Dandelion datatables를 사용하기 위해서 만들었다.
	 * @return list Board 정보가 저장되어 있는 ArrayList객체
	 */
	public Collection<BoardVO> selectArticleList() {
		Connection con = null;
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		String sql = "select bbsno,name,email,subject,writedate,readcount,masterid,replynumber,replystep,rnum from ( "
				+ " select bbsno,name,email,subject,writedate,readcount,masterid,replynumber,replystep, rownum rnum from ( "
				+ " select bbsno,name,email,subject,writedate,readcount,masterid,replynumber,replystep from board "
				//				+ " start with replyNumber=0 "
				//				+ " connect by prior bbsno=replyNumber "
				+ " order by masterid desc, replyNumber, replyStep)) "
				+ " where rnum between 1 and 100 "; //Oracle
//		String sql = "select bbsno, name, subject, writedate, readcount, email, "
//					 + "masterid, replynumber, replystep, rownum() as rnum "
//					 + "from board "
// 					 + "order by masterid desc, replynumber, replystep "
// 					 + "limit 100 offset 0";	//PostgreSQL
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setBbsno(rs.getInt("bbsno"));
				board.setName(rs.getString("name"));
				board.setEmail(rs.getString("email"));
				board.setSubject(rs.getString("subject"));
				board.setWritedate(rs.getDate("writedate"));
				board.setReadcount(rs.getInt("readcount"));
				board.setEmail(rs.getString("email"));
				board.setMasterid(rs.getInt("masterid"));
				board.setReplynumber(rs.getInt("replynumber"));
				board.setReplystep(rs.getInt("replystep"));
				board.setSeq(rs.getInt("rnum"));
				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("BoardDAO.selectArticleList : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		return list;
	}//end selectArticleList
	
	/**
	 * 게시글 하나를 조회함
	 * @param bbsno 게시글번호(목록의 번호 아님)
	 * @return board
	 */
	public BoardVO selectArticle(int bbsno) {
		Connection con = null;
		BoardVO board = null;
		String sql = "select * from board where bbsno=?";
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bbsno);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				board = new BoardVO();
				board.setBbsno(rs.getInt("bbsno"));
				board.setName(rs.getString("name"));
				board.setEmail(rs.getString("email"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setReadcount(rs.getInt("readcount"));
				board.setWritedate(rs.getDate("writedate"));
				board.setMasterid(rs.getInt("masterid"));
				board.setReplynumber(rs.getInt ("replynumber"));
				board.setReplystep(rs.getInt("replystep"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("BoardDAO.selectArticle " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		return board;
	}

	/**
	 * 조회수 증가되는 메서드 selectArticle메서드에서 사용됨<br>
	 * selectArticle(bbsno) 메서드에서 호출되어야 함
	 * @param bbsno 조회수가 증가 될 게시판 글 번호
	 */
	public void updateReadCount(int bbsno) {
		Connection con = null;
		String sql = "update board set readcount=readcount+1 where bbsno=?";
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,bbsno);
			pstmt.executeUpdate();
		} catch (Exception e) {
			throw new RuntimeException("BoardDAO.updateReadCount : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
	}

	/**
	 * 게시글 총 수를 반환하는 메서드
	 * @return count 게시글의 총 수
	 */
	public int selectTotalArticleCount() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count=0;
		String sql = "select count(bbsno) from board";
		try {
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			throw new RuntimeException("BoardDAO.selectTotalBbsCount : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		return count;
	}

	/**
	 * 댓글 달기위한 메서드<br>
	 * 조회수는 0으로 초기화<br>
	 * 글 번호는 가장 큰 글번호 +1<br>
	 * 마스터 글번호를 알아야 함.board에 저장되어 넘어옴<br>
	 * 답변 글 순서(replyNumber)는 현재글보다 replynumber가 큰 글들의 replynumber 값을 모두 1씩 더한다. <br>
	 * 답변 글 단계 masterid의 replyStep을 가져와 +1한 값을 사용<br>
	 * @param board 댓글정보, 마스터글번호 포함
	 */
	public void replyArticle(BoardVO board) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			//트랜젝션 처리 하기 위해 오토커밋 상태를 끈다.
			con.setAutoCommit(false);
			String sql1 = "update board set replynumber=replynumber+1 where masterid=? and replynumber > ?";
			//답글일 경우 현재글보다 replynumber가 큰 글들의 replynumber 값을 모두 1씩 더한다.
			pstmt = con.prepareStatement(sql1);
			pstmt.setInt(1, board.getMasterid());
			pstmt.setInt(2, board.getReplynumber());
			pstmt.executeUpdate();
			//쿼리전송 sql2
			String sql2 = "select nvl(max(bbsno),0) from board";//Oracle
			//			String sql2 = "select coalesce(max(bbsno),0) from board";//PostgreSQL
			pstmt = con.prepareStatement(sql2);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board.setBbsno(rs.getInt(1)+1);
			}
			//쿼리 전송 sql3
			String sql3 = "insert into board values (?, ?, ?, ?, ?, ?, SYSDATE, ?, 0, ?, ?)";//Oracle
			//			String sql3 = "insert into board values (?,?,?,?,?,?,NOW(),?,0,?,?)";//PostgreSQL
			pstmt = con.prepareStatement(sql3);
			pstmt.setInt(1, board.getBbsno());
			pstmt.setString(2, board.getName());
			pstmt.setString(3, board.getPassword());
			pstmt.setString(4, board.getEmail());
			pstmt.setString(5, board.getSubject());
			pstmt.setString(6, board.getContent());
			pstmt.setInt(7, board.getMasterid());
			pstmt.setInt(8, board.getReplynumber()+1);
			pstmt.setInt(9, board.getReplystep()+1);
			pstmt.executeUpdate();
			con.commit();//위 쿼리가 무사히 실행되면 커밋
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) { }
			throw new RuntimeException("BoardDAO.replyArticle : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
	}

	/**
	 * 게시글의 비밀번호를 조회하는 메서드
	 * @param bbsno 게시글 번호
	 * @return password 게시글의 비밀번호
	 */
	public String getPassword(int bbsno) {
		Connection con = null;
		String password = "";
		String sql = "select password from board where bbsno=?";
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bbsno);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				password = rs.getString("password");
			}
		} catch (Exception e) {
			throw new RuntimeException("BoardDAO.getPassword : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		return password;
	}

	/**
	 * 게시판 글을 수정하는 메서드
	 * @param board 수정할 게시판 정보
	 */
	public void updateArticle(BoardVO board) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update board set name=?, email=?, subject=?, content=?, writedate=sysdate where bbsno=?";//Oracle
		//		String sql = "update board set name=?, email=?, subject=?, content=?, writedate=NOW() where bbsno=?";//PostgreSQL
		try {
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getEmail());
			pstmt.setString(3, board.getSubject());
			pstmt.setString(4, board.getContent());
			pstmt.setInt(5, board.getBbsno());
			pstmt.executeUpdate();
		} catch (Exception e) {
			throw new RuntimeException("BoardDAO.updateArticle : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
	}

	/**
	 * 게시글 삭제하는 메소드<br>
	 * 메인글이면 메인글과 댓글 모두 삭제, 댓글이면 댓글만 삭제
	 * @param bbsno 삭제하려는 글번호
	 * @param replynumber 댓글인지 메인글인지 확인하기 위해
	 */
	public void deleteArticle(int bbsno, int replynumber) {
		String sql ="";
		Connection con = null;
		try {
			con = getConnection();
			if(replynumber > 0) {
				sql = "delete from board where bbsno=?";
			}else {
				sql = "delete from board where masterid=?";
			}
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bbsno);
			pstmt.executeUpdate();
		} catch (Exception e) {
			throw new RuntimeException("BoardDAO.deleteArticle : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
	}
	
	@Override
	public Collection<BoardVO> searchListByContentKeyword(String keyword) {
		Connection con = null;
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		String sql = " select bbsno,name,email,subject,writedate,readcount,masterid,replynumber,replystep from board "
				+ " where subject like ? or content like ? " 
				+ " order by masterid desc, replyNumber, replyStep "; //Oracle
//		String sql = "SELECT BOARD_ID, CATEGORY_ID, WRITER, EMAIL, TITLE, WRITE_DATE, READ_COUNT, MASTER_ID, "
//					+ "		 REPLY_NUMBER, REPLY_STEP, @ROWNUM := @ROWNUM + 1 AS RNUM "
//	    			+ "	FROM BOARD, (SELECT @ROWNUM := 0) R "
//	    			+ " WHERE TITLE LIKE ? OR CONTENT LIKE ?"
//	    			+ "	ORDER BY MASTER_ID DESC, REPLY_NUMBER, REPLY_STEP ASC"; //MySQL
		try {
			con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			pstmt.setString(2, "%"+keyword+"%");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setBbsno(rs.getInt("bbsno"));
				board.setName(rs.getString("name"));
				board.setEmail(rs.getString("email"));
				board.setSubject(rs.getString("subject"));
				board.setReadcount(rs.getInt("readcount"));
				board.setWritedate(rs.getDate("writedate"));
				board.setMasterid(rs.getInt("masterid"));
				board.setReplynumber(rs.getInt ("replynumber"));
				board.setReplystep(rs.getInt("replystep"));
				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("BoardDAO.searchListByContentKeyword : " + e.getMessage());
		} finally {
			closeConnection(con);
		}
		return list;
	}
}
