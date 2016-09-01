package kr.co.javaspecialist.emp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.emp.model.DeptVO;
import kr.co.javaspecialist.emp.model.EmpVO;

public class EmpUpdateController extends EmpController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")) {
			try {
				int empno = Integer.parseInt(request.getParameter("empno"));
				List<EmpVO> mgrList = empDao.getAllMgr();
				List<DeptVO> deptList = deptDao.getAllDepts();
				EmpVO emp = empDao.getEmpDetails(empno);
				request.setAttribute("mgrList", mgrList);
				request.setAttribute("deptList", deptList);
				request.setAttribute("emp", emp);
				view = "/emp/update.jsp";
			}catch(Exception e) {
				request.setAttribute("message", "UPDATE_ERROR");
				view = "/emp/error.jsp";
			}
		}else if(method.equalsIgnoreCase("post")) {
			try {
				int empno = Integer.parseInt(request.getParameter("empno"));
				String ename = request.getParameter("ename");
				String job = request.getParameter("job");
				int mgr = Integer.parseInt(request.getParameter("mgr"));
				String hiredate = request.getParameter("hiredate");
				double sal = Double.parseDouble(request.getParameter("sal"));
				String commStr = request.getParameter("comm");
				int deptno = Integer.parseInt(request.getParameter("deptno"));
				EmpVO emp = new EmpVO();
				emp.setEname(ename);
				emp.setEmpno(empno);
				emp.setJob(job);
				emp.setMgr(mgr);
				emp.setHiredate(java.sql.Date.valueOf(hiredate));
				emp.setSal(sal);
				if(commStr == null || commStr.equals("")) {
					emp.setComm(0);
				}else {
					emp.setComm(Double.parseDouble(commStr));
				}
				emp.setDeptno(deptno);
				empDao.updateEmp(emp);
				logger.info("Update Success : " + emp.toString());
				
				view = "redirect:/emp/list.do";	
			}catch(Exception e) {
				logger.error(e.getMessage());
				request.setAttribute("message", "UPDATE_ERROR");
				view="/emp/error.jsp";
			}
		}
		return view;
	}

}
