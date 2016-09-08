package kr.co.javaspecialist.medicine.model;

public class MedicineService {
	public String saymedi(String medname, String disease){
		return  "med_info TABLE에 <"+medname+" & "+disease+ ">이 저장되었습니다.";
	}
}
