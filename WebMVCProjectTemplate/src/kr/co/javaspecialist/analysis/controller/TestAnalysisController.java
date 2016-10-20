package kr.co.javaspecialist.analysis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.analysis.model.AnalysisDAO;
import kr.co.javaspecialist.analysis.model.AnalysisService;
import kr.co.javaspecialist.common.controller.CommandHandler;

public class TestAnalysisController implements CommandHandler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String med_name = request.getParameter("med_name");
		String food_name = request.getParameter("food_name");
		AnalysisDAO dao = new AnalysisDAO();
		
		int ingre_score = dao.ingredientRelation(med_name, food_name);
		int group_score = dao.groupRelation(med_name, food_name);
		int disease_score = dao.diseaseRelation(med_name, food_name);
		
		System.out.println("성분 : "+ingre_score);
		System.out.println("분류 : "+group_score);
		System.out.println("질병 : " + disease_score);
		
		if(ingre_score==-100){
			String result1 = ingre_score+"";
			String result2[] = {med_name, food_name,result1};
			request.setAttribute("result", result2);
			return "/view.jsp";
		}else{
			int sum = ingre_score + group_score + disease_score;
			String result1 = sum + "";
			//String result1 = "100";
			String result2[] = {med_name, food_name, result1};
			request.setAttribute("result", result2);
			return "/view.jsp";
		}
	}


}
