package kr.co.javaspecialist.analysis.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.board.model.BoardVO;
import kr.co.javaspecialist.medicine.model.MedInfoDAO;

public class analysisService {
	public String analysis(String med_name, String food_name){
		
		//약품DAO, 식품DAO
		//toString 으로 출력 
		//분석 (추후 업데이트)
		MedInfoDAO med = new MedInfoDAO();
		Collection<MedInfoVO> list = med.selectMedList(med_name);
		
		FoodInfoDAO food = new FoodinfoDAO();
		Collection<FoodInfoVO> list = food.selectFoodList(food_name);
		
		for(i=0; i<list.length; i++) {
			
		}
		
		return
	}

}
