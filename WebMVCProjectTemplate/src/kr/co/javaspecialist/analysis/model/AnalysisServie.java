package kr.co.javaspecialist.analysis.model;

public class AnalysisServie {
	
	public int analysis(String med_name, String food_name){
		AnalysisDAO dao = new AnalysisDAO();
		int ingre_score = dao.ingredientRelation(med_name,food_name);
		if(ingre_score==-100){
			return ingre_score;
		}else{
			int group_score = dao.groupRelation(med_name, food_name);
			int disease_score = dao.diseaseRelation(med_name, food_name);
			int sum = ingre_score + group_score + disease_score;
			return sum;
		}
	}
}
