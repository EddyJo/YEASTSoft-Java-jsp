package kr.co.javaspecialist.analysis.model;

public interface IAnalysisDAO {
	int ingredientRelation(String med_name, String food_name);
	int groupRelation(String med_name, String food_name);
	int diseaseRelation(String med_name, String food_name);
	
}
