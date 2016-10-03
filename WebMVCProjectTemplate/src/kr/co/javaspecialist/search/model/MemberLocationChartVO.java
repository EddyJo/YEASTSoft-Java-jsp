package kr.co.javaspecialist.search.model;

public class MemberLocationChartVO {
	private String LocationName;
	private int countLocation;
	private String color;
	public String getLocationName() {
		return LocationName;
	}
	public void setLocationName(String locationName) {
		LocationName = locationName;
	}
	public int getCountLocation() {
		return countLocation;
	}
	public void setCountLocation(int countLocation) {
		this.countLocation = countLocation;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
}
