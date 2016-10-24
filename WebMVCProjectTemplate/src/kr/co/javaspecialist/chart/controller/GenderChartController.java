package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.common.controller.CommandHandler;

import kr.co.javaspecialist.search.model.GenderVO;
import kr.co.javaspecialist.search.model.SearchLogDAO;

public class GenderChartController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		SearchLogDAO dao = new SearchLogDAO();
		String gender = request.getParameter("gender");
		Collection<GenderVO> genderchart = dao.getGendertop10(gender);
		Gson gson = new Gson();
		String genderJS = gson.toJson(genderchart);
		request.setAttribute("gchart", genderJS);
		return "/chart/genderchart.jsp";
	}

}
