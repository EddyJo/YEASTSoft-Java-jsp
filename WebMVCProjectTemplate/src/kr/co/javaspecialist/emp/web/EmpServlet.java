package kr.co.javaspecialist.emp.web;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import kr.co.javaspecialist.emp.model.DeptDAO;
import kr.co.javaspecialist.emp.model.DeptVO;
import kr.co.javaspecialist.emp.model.EmpDAO;
import kr.co.javaspecialist.emp.model.EmpVO;
import kr.co.javaspecialist.emp.model.IDeptDAO;
import kr.co.javaspecialist.emp.model.IEmpDAO;

@WebServlet("/emp")
public class EmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger logger = Logger.getLogger(EmpServlet.class);

	IEmpDAO empDao = new EmpDAO();
	IDeptDAO deptDao = new DeptDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			if(path.equals("list")) {
				ArrayList<EmpVO> emps = empDao.getAllEmps();
				request.setAttribute("empList", emps);
				logger.info(emps);
				if("json".equals(request.getParameter("list"))) {
					//ArrayList의 데이터를 JSON 데이터로 변환
					Gson gson = new Gson();
					String jsonStr = gson.toJson(emps);
					response.setCharacterEncoding("utf-8");
					response.getWriter().println(jsonStr);
					
					//JSON 데이터를 객체로 변환
					Type collectionType = new TypeToken<List<EmpVO>>(){}.getType();
					List<EmpVO> lists = gson.fromJson(jsonStr, collectionType);
					logger.info(lists);
					return;
				}
			}else if(path.equals("insert")) {
				try {
					List<EmpVO> mgrList = empDao.getAllMgr();
					List<DeptVO> deptList = deptDao.getAllDepts();
					request.setAttribute("mgrList", mgrList);
					request.setAttribute("deptList", deptList);
				}catch(Exception e) {
					request.setAttribute("message", "INSERT_ERROR");
					path = "error";
				}
			}else if(path.equals("update")) {
				try {
					int empno = Integer.parseInt(request.getParameter("update"));
					List<EmpVO> mgrList = empDao.getAllMgr();
					List<DeptVO> deptList = deptDao.getAllDepts();
					EmpVO emp = empDao.getEmpDetails(empno);
					request.setAttribute("mgrList", mgrList);
					request.setAttribute("deptList", deptList);
					request.setAttribute("emp", emp);
				}catch(Exception e) {
					request.setAttribute("message", "UPDATE_ERROR");
					path = "error";
				}
			}else if(path.equals("delete")) {
				try {
					int empno = Integer.parseInt(request.getParameter("delete"));
					request.setAttribute("empno", empno);
				}catch(Exception e) {
					request.setAttribute("message", "DELETE_ERROR");
					path = "error";
				}
			}
		}else {
			ArrayList<EmpVO> emps = empDao.getAllEmps();
			request.setAttribute("empList", emps);
			path = "list"; 
			logger.info(emps);
		}
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/emp/" + path + ".jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			if(path.equals("insert")) {
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
					empDao.insertEmp(emp);
					logger.info("Insert Success : " + emp.toString());
					response.sendRedirect("emp?list");
					return;	
				}catch(Exception e) {
					logger.error(e.getMessage());
					request.setAttribute("message", "INSERT_ERROR");
					path="error";
				}
			}else if(path.equals("update")) {
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
					response.sendRedirect("emp?list");
					return;	
				}catch(Exception e) {
					logger.error(e.getMessage());
					request.setAttribute("message", "UPDATE_ERROR");
					path="error";
				}
			}else if(path.equals("delete")) {
				try {
					int empno = Integer.parseInt(request.getParameter("empno"));
					String ename = request.getParameter("ename");
					EmpVO emp = empDao.getEmpDetails(empno);
					if(ename.equalsIgnoreCase(emp.getEname())) {
						empDao.deleteEmp(empno);
						logger.info("Delete Success : " + emp.toString());
						response.sendRedirect("emp?list");
						return;
					}else {
						logger.error("삭제 실패 : 사원이름이 다릅니다");
						request.setAttribute("message", "DELETE_ERROR");
						path="error";
					}
				}catch(Exception e) {
					logger.error(e.getMessage());
					request.setAttribute("message", e.getMessage());
					path="error";
				}
			}
		}
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/emp/" + path + ".jsp");
		disp.forward(request, response);
	}

}
