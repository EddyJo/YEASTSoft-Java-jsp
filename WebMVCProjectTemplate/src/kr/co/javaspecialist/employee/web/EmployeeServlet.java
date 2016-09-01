package kr.co.javaspecialist.employee.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.employee.model.EmployeeDAO;
import kr.co.javaspecialist.employee.model.EmployeeVO;

@WebServlet("/Emp.do")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	EmployeeDAO dao = new EmployeeDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empid = request.getParameter("empid");
		if(empid != null) {
			EmployeeVO employee = dao.selectEmployeeInfo(Integer.parseInt(empid));
			if(employee == null) {
				response.getWriter().append("employee is null");
				return;
			}
			request.setAttribute("emp", employee);
			RequestDispatcher disp = request.getRequestDispatcher("empinfo.jsp");
			disp.forward(request, response);
		}else {
			ArrayList<EmployeeVO> employees = dao.selectAllEmployees();
			request.setAttribute("emps", employees);
			RequestDispatcher disp = request.getRequestDispatcher("emplist.jsp");
			disp.forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
