package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.SearchLogDAO;
import kr.co.javaspecialist.search.model.SearchFoodLogChartVO;

public class SearchFoodLogFrequencyController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) {
		SearchLogDAO dao = new SearchLogDAO();
		Collection<SearchFoodLogChartVO> foodlogchart = dao.getFrequencyGroupingbyFood();
		Gson gson = new Gson();
		String foodLogData = gson.toJson(foodlogchart);
		System.out.println(foodLogData);
		request.setAttribute("foodLogData",foodLogData );
		return "/chart/foodfrechart.jsp";
		
		
	}

}
