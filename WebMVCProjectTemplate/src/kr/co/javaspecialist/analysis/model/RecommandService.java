package kr.co.javaspecialist.analysis.model;

import java.util.ArrayList;

public class RecommandService {
	public ArrayList<String> recommandgood(String med_name){
		AnalysisDAO dao = new AnalysisDAO();
		return dao.goodIngredient(med_name);
	}
	public ArrayList<String> recommandbad(String med_name){
		AnalysisDAO dao = new AnalysisDAO();
		return dao.badIngredient(med_name);
	}
}
