package kr.co.javaspecialist.search.model;

public class MedLocationChartVO {
	private String medName;
	private String locationName;
	private int countMedPerLoc;
	private String color;
	
	public String getMedName() {
		return medName;
	}
	public void setMedName(String medName) {
		this.medName = medName;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public int getCountMedPerLoc() {
		return countMedPerLoc;
	}
	public void setCountMedPerLoc(int countMedPerLoc) {
		this.countMedPerLoc = countMedPerLoc;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	
}
