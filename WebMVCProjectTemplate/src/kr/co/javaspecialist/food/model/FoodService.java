package kr.co.javaspecialist.food.model;

public class FoodService {
	public String sayFood(String foodName, String goodDisease, String badDisease){
		return "food_info TABLE에 <"+foodName+" [ "+goodDisease+ badDisease +" ] >이 저장되었습니다.";
	}
}
