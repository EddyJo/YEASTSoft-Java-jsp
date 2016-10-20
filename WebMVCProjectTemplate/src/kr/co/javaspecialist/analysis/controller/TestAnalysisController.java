package kr.co.javaspecialist.analysis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.analysis.model.AnalysisDAO;
import kr.co.javaspecialist.analysis.model.AnalysisService;
import kr.co.javaspecialist.common.controller.CommandHandler;

public class TestAnalysisController implements CommandHandler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		AnalysisDAO dao = new AnalysisDAO();
		int score = dao.ingredientRelation("니소론정", "소주");
		System.out.println(score);
		return "/view.jsp";
	}


}
