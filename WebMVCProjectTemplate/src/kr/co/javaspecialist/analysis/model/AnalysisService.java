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
 		//약품DAO, 식품DAO
 		//toString 으로 출력 
 		//분석 (추후 업데이트)
 		MedInfoDAO med = new MedInfoDAO();
 		Collection<MedInfoVO> medList = med.selectMedList(med_name);
 		
 		FoodInfoDAO food = new FoodInfoDAO();
 		Collection<FoodInfoVO> foodList = food.selectFoodList(food_name);
 		String result = "";
 		int score = 0;
 		System.out.println(foodList);
 		for(MedInfoVO medicine : medList) {
 			if(medicine == null){
 				result = "아직 DB에 약품이 없거나 존재하지 않는 약품입니다.";
 			}else{
 				for(FoodInfoVO foodinfo : foodList){
 					if(medicine.getDisease().equals(foodinfo.badDisease)){
 						score = 0;
 						result = medicine.getMedName() + "와 " + foodinfo.foodName +"은 나쁜 관계입니다.";
 					}else if(medicine.getDisease().equals(foodinfo.goodDisease)){
 						score = 100;
 						result = medicine.getMedName() + "와 " + foodinfo.foodName +"은 좋은 관계입니다.";
 					}else{
 						score = 50;
 						result = medicine.getMedName() + "와 " + foodinfo.foodName +"은 아무런 관계가 없습니다.";
 					}
 						
 				}
 			}
 		}

 		return score+"";
 	}
 
 }