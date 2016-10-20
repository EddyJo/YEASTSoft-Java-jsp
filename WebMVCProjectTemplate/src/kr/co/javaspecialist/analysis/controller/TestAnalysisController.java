package kr.co.javaspecialist.analysis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.analysis.model.AnalysisServie;
import kr.co.javaspecialist.analysis.model.AnalysisVO;
import kr.co.javaspecialist.analysis.model.RecommandService;
import kr.co.javaspecialist.common.controller.CommandHandler;

public class TestAnalysisController implements CommandHandler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String med_name = request.getParameter("med_name");
		String food_name = request.getParameter("food_name");
		AnalysisServie analysis = new AnalysisServie();
		RecommandService recommand = new RecommandService();
		AnalysisVO result = new AnalysisVO();
		result.setMed_name(med_name);
		result.setFood_name(food_name);
		result.setScore(analysis.analysis(med_name, food_name));
		result.setGood_foods(recommand.recommandgood(med_name));
		result.setBad_foods(recommand.recommandbad(med_name));
		System.out.println(result);
		request.setAttribute("result", result);
		return "/view.jsp";
	}
}
