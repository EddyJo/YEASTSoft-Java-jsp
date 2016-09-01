package kr.co.javaspecialist.emp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.emp.model.EmpVO;

public class EmpViewController extends EmpController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String empnoStr = request.getParameter("empno");
		String view = "/";
		if(empnoStr != null) {
			try {
				int empno = Integer.parseInt(empnoStr);
				EmpVO emp = empDao.getEmpDetails(empno);
				request.setAttribute("emp", emp);
				view = "/emp/view.jsp";
			}catch(Exception e) {
				request.setAttribute("message", "EMPNO_IS_NOT_VALID");
				view = "/emp/error.jsp";
			}
		}else {
			request.setAttribute("message", "EMPNO_NOT_FOUND");
			view = "/emp/error.jsp";
		}
		return view;
	}

}
