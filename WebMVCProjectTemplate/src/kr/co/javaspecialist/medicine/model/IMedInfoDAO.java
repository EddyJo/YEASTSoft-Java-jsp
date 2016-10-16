package kr.co.javaspecialist.medicine.model;

import java.util.Collection;



public interface IMedInfoDAO {
	void insertMedInfo(MedInfoVO medinfo);
	Collection<MedInfoVO> selectMedList(String medName);
	Collection<MedInfoVO> selectMedListAll();
	MedInfoVO selectMedInfo(String medName);
	String delete(int serialNum);
	String update(int serialNum);

}
