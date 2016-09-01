package kr.co.javaspecialist.emp.controller;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import kr.co.javaspecialist.emp.model.EmpVO;

// /emp/list.do
public class EmpListController extends EmpController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<EmpVO> emps = empDao.getAllEmps();
		request.setAttribute("empList", emps);
		logger.info(emps);
		try {
			if("json".equals(request.getParameter("list"))) {
				//ArrayList의 데이터를 JSON 데이터로 변환
				Gson gson = new Gson();
				String jsonStr = gson.toJson(emps);
				response.setCharacterEncoding("utf-8");
				response.getWriter().println(jsonStr);
				response.getWriter().flush();
				//JSON 데이터를 객체로 변환
				Type collectionType = new TypeToken<List<EmpVO>>(){}.getType();
				List<EmpVO> lists = gson.fromJson(jsonStr, collectionType);
				logger.info(lists);
				return null;
			}
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		return "/emp/list.jsp";
	}

}
