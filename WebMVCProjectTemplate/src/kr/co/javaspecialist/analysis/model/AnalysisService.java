package kr.co.javaspecialist.analysis.model;

import java.util.Collection;

import kr.co.javaspecialist.food.model.FoodInfoDAO;
import kr.co.javaspecialist.food.model.FoodInfoVO;
import kr.co.javaspecialist.medicine.model.MedInfoDAO;
import kr.co.javaspecialist.medicine.model.MedInfoVO;

public class AnalysisService {
	public int analysis(String med_name, String food_name){
		//약품DAO, 식품DAO
		//toString 으로 출력 
		//분석 (추후 업데이트)
		MedInfoDAO med = new MedInfoDAO();
		Collection<MedInfoVO> medList = med.selectMedList();
		FoodInfoDAO food = new FoodInfoDAO();
		Collection<FoodInfoVO> foodList = food.selectFoodList();
		System.out.println(foodList);
		System.out.println(foodList.size()==0);
		System.out.println(medList);

		String result = "";
		int score = 200;
		System.out.println(foodList);
		if(medList.size()!=0){
			for(MedInfoVO medicine : medList) {
				if(foodList.size()==0){
					score=0;
				}else{
					for(FoodInfoVO foodinfo : foodList){
						if(medicine.getDisease().equals(foodinfo.badDisease)){
							return score = 10;
							//result = medicine.getMedName() + "와 " + foodinfo.foodName +"은 나쁜 관계입니다.";
						}else if(medicine.getDisease().equals(foodinfo.goodDisease)){
							return score = 100;
							//result = medicine.getMedName() + "와 " + foodinfo.foodName +"은 좋은 관계입니다.";
						}else if(medicine.getDisease() != foodinfo.badDisease & medicine.getDisease() != foodinfo.goodDisease ){
							score = 50;
							result = medicine.getMedName() + "와 " + foodinfo.foodName +"은 아무런 관계가 없습니다.";
						}

					}
				}
			}
		}else{
			score = 0; 
		}
		return score;
	}

}