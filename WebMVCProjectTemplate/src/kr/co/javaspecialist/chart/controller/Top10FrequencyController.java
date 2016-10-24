package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.FoodLocationChartVO;
import kr.co.javaspecialist.search.model.MedTopChartVO;
import kr.co.javaspecialist.search.model.SearchLogDAO;

public class Top10FrequencyController implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		SearchLogDAO dao = new SearchLogDAO();
		Collection<MedTopChartVO> topMedChart = dao.getTop10Medicine();
		Gson gson = new Gson();
		String medTopData =gson.toJson(topMedChart);
		System.out.println(medTopData);
		request.setAttribute("medTopData", medTopData);
		return "/chart/medtopchart.jsp";
	}
}
