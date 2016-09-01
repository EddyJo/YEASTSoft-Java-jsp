package kr.co.javaspecialist.emp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.emp.model.AvgSalChartVO;

public class EmpSalaryChartController extends EmpController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<AvgSalChartVO> salList = empDao.getAvgSalByDeptno();
		Gson gson = new Gson();
		String salData = gson.toJson(salList);
		request.setAttribute("salData", salData);
		String view = "/emp/salary_chart.jsp";
		return view;
	}

}
