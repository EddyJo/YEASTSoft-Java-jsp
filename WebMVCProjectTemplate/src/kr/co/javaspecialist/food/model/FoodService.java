package kr.co.javaspecialist.food.model;

public class FoodService {
	public String sayFood(int serial_num, String foodName, String goodDisease, String badDisease){
		return "데이터가 저장되었습니다.. // " + foodName +","+goodDisease+","+badDisease+ "저장";
	}
}
