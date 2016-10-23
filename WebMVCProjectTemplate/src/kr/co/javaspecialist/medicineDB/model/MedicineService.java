package kr.co.javaspecialist.medicineDB.model;

	public class MedicineService {
		public String saymedi(String med_name, String med_main_ingredient, String med_group, String med_disease){
			return  "med_info TABLE에 <"+med_name+" & "+med_main_ingredient+ med_group + med_disease + ">이 저장되었습니다.";
		}
	}
