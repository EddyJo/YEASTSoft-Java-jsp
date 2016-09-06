package kr.co.javaspecialist.analysis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.analysis.model.AnalysisService;
import kr.co.javaspecialist.common.controller.CommandHandler;


public class AnalysisController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String med_name = request.getParameter("med_name");
		String food_name = request.getParameter("food_name");
		AnalysisService service = new AnalysisService();
		String result = service.analysis(med_name, food_name);
		request.setAttribute("result", result);
		
		return "/view.jsp";
	}

}
