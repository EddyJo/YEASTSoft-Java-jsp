package kr.co.javaspecialist.medicine.model;

public class MedInfoVO {
	private String medName;
	private String disease;
	public String getMedName() {
		return medName;
	}
	public void setMedName(String medName) {
		this.medName = medName;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	@Override
	public String toString() {
		return "MedInfoVO [medName=" + medName + ", disease=" + disease + "]";
	}
		
}
