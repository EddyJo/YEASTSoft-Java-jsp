package kr.co.javaspecialist.medicineDB.model;

public class MedInfoVO {
	private int med_id;
	private String med_name;
	private String med_main_ingredient;
	private String med_group;
	private String med_disease;
	public int getMed_id() {
		return med_id;
	}
	public void setMed_id(int med_id) {
		this.med_id = med_id;
	}
	public String getMed_name() {
		return med_name;
	}
	public void setMed_name(String med_name) {
		this.med_name = med_name;
	}
	public String getMed_main_ingredient() {
		return med_main_ingredient;
	}
	public void setMed_main_ingredient(String med_main_ingredient) {
		this.med_main_ingredient = med_main_ingredient;
	}
	public String getMed_group() {
		return med_group;
	}
	public void setMed_group(String med_group) {
		this.med_group = med_group;
	}
	public String getMed_disease() {
		return med_disease;
	}
	public void setMed_disease(String med_disease) {
		this.med_disease = med_disease;
	}
	@Override
	public String toString() {
		return "MedInfoVO [med_id=" + med_id + ", med_name=" + med_name + ", med_main_ingredient=" + med_main_ingredient
				+ ", med_group=" + med_group + ", med_disease=" + med_disease + "]";
	}
	
	
	
}
