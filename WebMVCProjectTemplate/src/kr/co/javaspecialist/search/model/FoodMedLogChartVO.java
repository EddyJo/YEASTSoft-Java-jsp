package kr.co.javaspecialist.search.model;

public class FoodMedLogChartVO {

	private String foodName;
	private String MedName;
	private String matchName;
	private String color;
	private int countFoodMed;
	
	
	public String getMatchName() {
		return matchName;
	}
	public void setMatchName(String matchName) {
		this.matchName = matchName;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getMedName() {
		return MedName;
	}
	public void setMedName(String medName) {
		MedName = medName;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getCountFoodMed() {
		return countFoodMed;
	}
	public void setCountFoodMed(int countFoodMed) {
		this.countFoodMed = countFoodMed;
	}
	

	
	
	
	
	
}
