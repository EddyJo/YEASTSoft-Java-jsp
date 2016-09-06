package kr.co.javaspecialist.analysis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.analysis.model.analysisService;
import kr.co.javaspecialist.common.controller.CommandHandler;


public class AnalysisController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String med_name = request.getParameter("med_name");
		String food_name = request.getParameter("food_name");
		analysisService service = new analysisService();
		String result = service.searchReview(med_name, food_name);
		request.setAttribute("result", result);
		
		return "다시 controller 로 가야함";
	}

}
