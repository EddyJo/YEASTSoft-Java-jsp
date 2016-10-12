package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.FoodLocationChartVO;
import kr.co.javaspecialist.search.model.SearchLogDAO;

public class FoodLocationFrequencyController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		SearchLogDAO dao = new SearchLogDAO();
		String foodName = request.getParameter("foodName");
		Collection<FoodLocationChartVO> locFoodchart = dao.getFoodCountGroupingbyLocation(foodName);
		Gson gson = new Gson();
		String LocFoodData = gson.toJson(locFoodchart);
		request.setAttribute("locfoodData", LocFoodData);
		//System.out.println(LocFoodData);
		return "/chart/fcountperlocchart.jsp";
	}

}
