package kr.co.javaspecialist.analysis.model;

public interface IAnalysisDAO {
	int ingredientRelation(String med_name, String food_name);
	int groupRelation(int score, String med_ingredient);
	int diseaseRelation(int score, String disease);
	
}
