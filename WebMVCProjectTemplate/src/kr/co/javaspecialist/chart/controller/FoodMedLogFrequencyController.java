package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.FoodMedLogChartVO;
import kr.co.javaspecialist.search.model.SearchLogDAO;

public class FoodMedLogFrequencyController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		SearchLogDAO dao = new SearchLogDAO();
		Collection<FoodMedLogChartVO> foodMedchart = dao.getFoodMedCount();
		Gson gson = new Gson();
		String FoodMedData =gson.toJson(foodMedchart);
		request.setAttribute("foodMedData", FoodMedData);
		return "/chart/foodmedchart.jsp";
	}

}
