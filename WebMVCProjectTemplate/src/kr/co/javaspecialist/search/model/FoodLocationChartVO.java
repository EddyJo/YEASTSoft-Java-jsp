package kr.co.javaspecialist.search.model;

public class FoodLocationChartVO {
	private String foodName;
	private String locationName;
	private int countFoodPerLoc;
	private String color;
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public int getCountFoodPerLoc() {
		return countFoodPerLoc;
	}
	public void setCountFoodPerLoc(int countFoodPerLoc) {
		this.countFoodPerLoc = countFoodPerLoc;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	
}
