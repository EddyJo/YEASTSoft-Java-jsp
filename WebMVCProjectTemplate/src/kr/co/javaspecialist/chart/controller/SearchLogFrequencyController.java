package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.util.SystemOutLogger;

import com.google.gson.Gson;

import kr.co.javaspecialist.chart.model.SearchLogChartVO;
import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.SearchLogDAO;

public class SearchLogFrequencyChartController implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		SearchLogDAO sdao = new SearchLogDAO();
		Collection<SearchLogChartVO> logChart = sdao.getFrequencyGroupingbyMedcine();
		Gson gson = new Gson();
		String logData = gson.toJson(logChart);
		System.out.println(logData);
		request.setAttribute("logData", logData);
		return "/chart/medfrechart.jsp";
	}

}
