package kr.co.javaspecialist.medicineDB.model;

import java.util.Collection;

public interface IMedInfoDAO {
	void insertMedInfo(MedInfoVO medinfo);
	Collection<MedInfoVO> selectMedList(String med_name);
	Collection<MedInfoVO> selectMedListAll();
	MedInfoVO selectMedInfo(String med_name);
	String delete(int med_id);
	String update(int med_id);

}