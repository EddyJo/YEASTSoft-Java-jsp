package kr.co.javaspecialist.search.model;

public class MedTopChartVO {
	private String medName;
	private int countmed;
	private String color;
	
	
	public String getMedName() {
		return medName;
	}
	public void setMedName(String medName) {
		this.medName = medName;
	}
	public int getCountmed() {
		return countmed;
	}
	public void setCountmed(int countmed) {
		this.countmed = countmed;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	@Override
	public String toString() {
		return "MedTopChartVO [medName=" + medName + ", countmed=" + countmed + ", color=" + color + "]";
	}



}
