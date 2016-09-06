package kr.co.javaspecialist.analysis.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.food.model.FoodInfoDAO;
import kr.co.javaspecialist.food.model.FoodInfoVO;
import kr.co.javaspecialist.medicine.model.MedInfoDAO;
import kr.co.javaspecialist.medicine.model.MedInfoVO;

public class AnalysisService {
	public String analysis(String med_name, String food_name){
		int i=0;
		//약품DAO, 식품DAO
		//toString 으로 출력 
		//분석 (추후 업데이트)
		MedInfoDAO med = new MedInfoDAO();
		Collection<MedInfoVO> medList = med.selectMedList(med_name);
		
		FoodInfoDAO food = new FoodInfoDAO();
		Collection<FoodInfoVO> foodList = food.selectFoodList(food_name);
		String result = "결과 = ";
		
		for(i=0; i<medList.size(); i++) {
			result = result + medList.toString() + ", ";
		}
		for(i=0; i<foodList.size(); i++) {
			result = result + foodList.toString() + ", ";
		}
		return result;
	}

}
