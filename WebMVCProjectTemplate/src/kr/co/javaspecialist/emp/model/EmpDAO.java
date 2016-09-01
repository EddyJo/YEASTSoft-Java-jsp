package kr.co.javaspecialist.emp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.common.db.DBConn;


public class EmpDAO implements IEmpDAO {
	static final Logger logger = Logger.getLogger(EmpDAO.class);
	
	public int getEmpCount() {
		Connection con=null;
		int rowCount = 0;
		String sql = "select count(*) from emp";
		try {
			con = DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			rowCount = rs.getInt(1);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			DBConn.closeConnection(con);
		}
		return rowCount;
	}
	
	public ArrayList<Integer> getAllEmpno() {
		Connection con=null;
		ArrayList<Integer> listData = new ArrayList<Integer>();
		String sql = "select empno from emp";
		try {
			con = DBConn.getConnection();

			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				listData.add(rs.getInt("empno"));
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			DBConn.closeConnection(con);
		}
		return listData;
	}

	public ArrayList<EmpVO> getAllEmps() {
		ArrayList<EmpVO> lists = new ArrayList<EmpVO>();
		String sql = "select * from emp";
		Connection con = DBConn.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				EmpVO vo = new EmpVO();
				vo.setEmpno(rs.getInt("empno"));
				vo.setEname(rs.getString("ename"));
				vo.setJob(rs.getString("job"));
				vo.setMgr(rs.getInt("mgr"));
				vo.setHiredate(rs.getDate("hiredate"));
				vo.setSal(rs.getDouble("sal"));
				vo.setComm(rs.getDouble("comm"));
				vo.setDeptno(rs.getInt("deptno"));
				lists.add(vo);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally { 
			DBConn.closeConnection(con); 
		}
		return lists;
	}
	
	public ArrayList<String> getAllColumnNames() {
		ArrayList<String> columnNames = new ArrayList<String>();
		String sql = "select * from emp";
		Connection con = null;
		
		try {
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int columnCount = metaData.getColumnCount();
			for(int i=0; i<columnCount; i++) {
				columnNames.add(metaData.getColumnName(i+1).toUpperCase());
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally { 
			DBConn.closeConnection(con); 
		}
		
		return columnNames;
	}
	
	public int insertEmp(EmpVO vo) {
		Connection con=null;
		int count=0;
		String sql = "insert into emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)" +
				" values (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			con = DBConn.getConnection();

			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, vo.getEmpno());
			pstmt.setString(2, vo.getEname());
			pstmt.setString(3, vo.getJob());
			pstmt.setInt(4, vo.getMgr());
			pstmt.setDate(5, vo.getHiredate());
			pstmt.setDouble(6, vo.getSal());
			pstmt.setDouble(7, vo.getComm());
			pstmt.setInt(8, vo.getDeptno());
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			DBConn.closeConnection(con);
		}
		return count;
	}
	
	public int updateEmp(EmpVO vo) {
		int count=0;
		String sql = "update emp set ename=?, job=?, mgr=?, hiredate=?, sal=?, comm=?, deptno=? where empno=?";
		Connection con = DBConn.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getEname());
			stmt.setString(2, vo.getJob());
			stmt.setInt(3, vo.getMgr());
			stmt.setDate(4, vo.getHiredate());
			stmt.setDouble(5, vo.getSal());
			if(vo.getComm() < 0) {
				stmt.setNull(6, java.sql.Types.FLOAT);
			} else {
				stmt.setDouble(6, vo.getComm());
			}
			stmt.setInt(7, vo.getDeptno());
			stmt.setInt(8, vo.getEmpno());
			count = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			DBConn.closeConnection(con);
		}
		return count;
	}
	
	public int deleteEmp(int empno) {
		Connection con=null;
		int deletedRow = 0;
		String sql = "delete from emp where empno=?";
		try {
			con = DBConn.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, empno);
			deletedRow = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			DBConn.closeConnection(con);
		}
		return deletedRow;
	}

	@Override
	public ArrayList<EmpVO> getAllMgr() {
		Connection con=null;
		ArrayList<EmpVO> mgrList = new ArrayList<EmpVO>();
		String sql = "select empno, ename from emp";
		try {
			con = DBConn.getConnection();

			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				EmpVO emp = new EmpVO();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				mgrList.add(emp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			DBConn.closeConnection(con);
		}
		return mgrList;
	}

	@Override
	public EmpVO getEmpDetails(int empno) {
		EmpVO emp = new EmpVO();
		String sql = "select * from emp where empno=?";
		Connection con = null;
		try {
			con = DBConn.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, empno);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				emp.setEmpno(empno);
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally { 
			DBConn.closeConnection(con); 
		}
		
		return emp;
	}

	@Override
	public ArrayList<AvgSalChartVO> getAvgSalByDeptno() {
		ArrayList<AvgSalChartVO> salList = new ArrayList<AvgSalChartVO>();
		String sql = "select deptno, avg(sal) as avg_sal, max(sal) as max_sal from emp group by deptno order by deptno";
		Connection con = null;
		try {
			con = DBConn.getConnection();

			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				AvgSalChartVO salVO = new AvgSalChartVO();
				salVO.setDeptno(rs.getInt("deptno"));
				salVO.setAvgSal(rs.getDouble("avg_sal"));
				salVO.setMaxSal(rs.getDouble("max_sal"));
				salList.add(salVO);
			}
			salList.get(salList.size()-1).setDashLengthLine(5);
			AvgSalChartVO sal40 = new AvgSalChartVO();
			double avgSum = 0;
			double maxSum = 0;
			for(AvgSalChartVO vo : salList) {
				avgSum = avgSum + vo.getAvgSal();
				maxSum = maxSum + vo.getMaxSal();
			}
			sal40.setDeptno(40);
			sal40.setAvgSal(avgSum/salList.size());
			sal40.setMaxSal(maxSum/salList.size());
			sal40.setDashLengthColumn(5);
			sal40.setAlpha(0.2);
			sal40.setAdditional("(projection)");
			salList.add(sal40);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			DBConn.closeConnection(con);
		}
		return salList;
	}
}
