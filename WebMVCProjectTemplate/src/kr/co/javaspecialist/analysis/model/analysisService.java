package kr.co.javaspecialist.analysis.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.medicine.model.MedInfoDAO;
import kr.co.javaspecialist.medicine.model.MedInfoVO;

public class analysisService {
	public String analysis(String med_name, String food_name){
		int i=0;
		//약품DAO, 식품DAO
		//toString 으로 출력 
		//분석 (추후 업데이트)
		MedInfoDAO med = new MedInfoDAO();
		Collection<MedInfoVO> medList = med.selectMedList(med_name);
		
//		FoodInfoDAO food = new FoodinfoDAO();
//		Collection<FoodInfoVO> FoodList = food.selectFoodList(food_name);
		
		for(i=0; i<medList.size(); i++) {
			medList.toString();
		}
		
		return "analysis.jsp";
	}

}
