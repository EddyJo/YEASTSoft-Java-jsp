package kr.co.javaspecialist.employee.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.employee.model.EmployeeDAO;
import kr.co.javaspecialist.employee.model.EmployeeVO;

public class GetEmpInfoController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String empid = request.getParameter("empid");
		if(empid != null) {
			try {
				EmployeeDAO dao = new EmployeeDAO();
				int employeeId = Integer.parseInt(empid);
				EmployeeVO employee = dao.selectEmployeeInfo(employeeId);
				request.setAttribute("emp", employee);
			}catch(Exception e) {
				request.setAttribute("message", e.getMessage());
			}
		}else {
			request.setAttribute("message", "empid parameter not found");
		}
		
		return "/emp/empinfo.jsp";
	}

}
