package kr.co.javaspecialist.emp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.emp.model.EmpVO;

public class EmpDeleteController extends EmpController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")) {
			try {
				int empno = Integer.parseInt(request.getParameter("empno"));
				request.setAttribute("empno", empno);
				view = "/emp/delete.jsp";
			}catch(Exception e) {
				request.setAttribute("message", "DELETE_ERROR");
				view = "/emp/error.jsp";
			}
		}else if(method.equalsIgnoreCase("post")) {
			try {
				int empno = Integer.parseInt(request.getParameter("empno"));
				String ename = request.getParameter("ename");
				EmpVO emp = empDao.getEmpDetails(empno);
				if(ename.equalsIgnoreCase(emp.getEname())) {
					empDao.deleteEmp(empno);
					logger.info("Delete Success : " + emp.toString());
					view = "redirect:/emp/list.do";
				}else {
					logger.error("삭제 실패 : 사원이름이 다릅니다");
					request.setAttribute("message", "DELETE_ERROR");
					view="/emp/error.jsp";
				}
			}catch(Exception e) {
				logger.error(e.getMessage());
				request.setAttribute("message", e.getMessage());
				view="/emp/error.jsp";
			}
		}
		return view;
	}

}
