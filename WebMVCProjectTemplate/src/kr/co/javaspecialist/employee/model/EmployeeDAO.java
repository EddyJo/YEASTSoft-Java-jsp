package kr.co.javaspecialist.employee.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class EmployeeDAO {
	public Connection getConnection() {
		DataSource ds = null;
		Connection con = null;
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:/comp/env/jdbc/Oracle");
			con = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void closeConnection(Connection con) {
		if(con!=null) {
 			try { con.close(); } catch(Exception e){}
		}
	}
	
	public EmployeeVO selectEmployeeInfo(int employeeId) {
		EmployeeVO employee = new EmployeeVO();
		Connection con = null;
		try {
			con = getConnection();
			String sql = "select * from employees where employee_id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, employeeId);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				employee.setEmployeeId(employeeId);
				employee.setFirstName(rs.getString("first_name"));
				employee.setLastName(rs.getString("last_name"));
				employee.setEmail(rs.getString("email"));
				employee.setJobId(rs.getString("job_id"));
				employee.setManagerId(rs.getInt("manager_id"));
				employee.setPhoneNumber(rs.getString("phone_number"));
				employee.setHireDate(rs.getDate("hire_date"));
				employee.setSalary(rs.getDouble("salary"));
				employee.setCommissionPct(rs.getDouble("commission_pct"));
				employee.setDepartmentId(rs.getInt("department_id"));
			}else {
				employee = null;
			}
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			closeConnection(con);
		}
		return employee;
	}
	
	public ArrayList<EmployeeVO> selectAllEmployees() {
		ArrayList<EmployeeVO> employees = new ArrayList<EmployeeVO>();
		Connection con = null;
		try {
			con = getConnection();
			String sql = "select * from employees";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				EmployeeVO employee = new EmployeeVO();
				employee.setEmployeeId(rs.getInt("employee_id"));
				employee.setFirstName(rs.getString("first_name"));
				employee.setLastName(rs.getString("last_name"));
				employee.setEmail(rs.getString("email"));
				employee.setJobId(rs.getString("job_id"));
				employee.setManagerId(rs.getInt("manager_id"));
				employee.setPhoneNumber(rs.getString("phone_number"));
				employee.setHireDate(rs.getDate("hire_date"));
				employee.setSalary(rs.getDouble("salary"));
				employee.setCommissionPct(rs.getDouble("commission_pct"));
				employee.setDepartmentId(rs.getInt("department_id"));
				employees.add(employee);
			}
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			closeConnection(con);
		}
				
		return employees;
	}

	public ArrayList<EmployeeVO> selectEmployeesByPate(int page) {
		ArrayList<EmployeeVO> employees = new ArrayList<EmployeeVO>();
		Connection con = null;
		try {
			con = getConnection();
			String sql = "select * from employees";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				EmployeeVO employee = new EmployeeVO();
				employee.setEmployeeId(rs.getInt("employee_id"));
				employee.setFirstName(rs.getString("first_name"));
				employee.setLastName(rs.getString("last_name"));
				employee.setEmail(rs.getString("email"));
				employee.setJobId(rs.getString("job_id"));
				employee.setManagerId(rs.getInt("manager_id"));
				employee.setPhoneNumber(rs.getString("phone_number"));
				employee.setHireDate(rs.getDate("hire_date"));
				employee.setSalary(rs.getDouble("salary"));
				employee.setCommissionPct(rs.getDouble("commission_pct"));
				employee.setDepartmentId(rs.getInt("department_id"));
				employees.add(employee);
			}
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally {
			closeConnection(con);
		}
				
		return employees;
	}
}






