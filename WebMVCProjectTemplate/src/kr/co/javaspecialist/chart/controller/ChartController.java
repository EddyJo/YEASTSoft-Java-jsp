package kr.co.javaspecialist.chart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.chart.model.ChartService;
import kr.co.javaspecialist.common.controller.CommandHandler;

public class ChartController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("charttype");
		ChartService chart = new ChartService();
		String result = chart.showChart(type);
		request.setAttribute("result", result);
		return "/chart/chart.jsp";
	}

}
