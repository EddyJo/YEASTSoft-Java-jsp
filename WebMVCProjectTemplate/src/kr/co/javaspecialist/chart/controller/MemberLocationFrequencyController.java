package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.SearchLogDAO;
import kr.co.javaspecialist.search.model.MemberLocationChartVO;
import kr.co.javaspecialist.search.model.SearchFoodLogChartVO;

public class MemberLocationFrequencyController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		SearchLogDAO dao = new SearchLogDAO();
		Collection<MemberLocationChartVO> locationchart = dao.getFrequencyGroupingbyLocation();
		Gson gson = new Gson();
		String LocationData = gson.toJson(locationchart);
		System.out.println(LocationData);
		request.setAttribute("locationData",LocationData);
		return "/chart/locationfrechart.jsp";
		
		
	}

}
