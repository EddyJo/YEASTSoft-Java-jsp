package kr.co.javaspecialist.foodDB.model;

public class FoodService {
	public String sayFood(String food_name, String food_ingredient){
		return "FOOD TABLE에 <" + food_name + " [ " + food_ingredient + " ] >이 저장되었습니다.";
	}
}
