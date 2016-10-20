package kr.co.javaspecialist.analysis.model;

import java.util.ArrayList;

public interface IAnalysisDAO {
	int ingredientRelation(String med_name, String food_name);
	int groupRelation(String med_name, String food_name);
	int diseaseRelation(String med_name, String food_name);
	ArrayList<String> goodIngredient(String med_name);
	ArrayList<String> badIngredient(String med_name);
}
