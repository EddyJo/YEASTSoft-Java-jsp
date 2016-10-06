package kr.co.javaspecialist.chart.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.MedLocationChartVO;
import kr.co.javaspecialist.search.model.SearchLogDAO;

public class MedLocationFrequencyController implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		SearchLogDAO dao = new SearchLogDAO();
		String medName = request.getParameter("medName");
		Collection<MedLocationChartVO> locationchart = dao.getMedCountGroupingbyLocation(medName);
		Gson gson = new Gson();
		String LocationData = gson.toJson(locationchart);
		System.out.println(LocationData);
		request.setAttribute("locationData",LocationData);
		return "/chart/medperlocchart.jsp";
		
		
	}
}
