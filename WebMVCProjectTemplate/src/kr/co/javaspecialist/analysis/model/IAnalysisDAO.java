package kr.co.javaspecialist.analysis.model;

public interface IAnalysisDAO {
	int ingredientRelation(String med_ingredient, String food_ingredient);
	int groupRelation(AnalysisVO analysis);
	int diseaseRelation(AnalysisVO analysis);
	
}
