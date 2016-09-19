package kr.co.javaspecialist.food.model;

import java.util.Collection;

public interface IFoodInfoDAO {
		void insertFoodInfo(FoodInfoVO FoodInfo);
		Collection<FoodInfoVO> selectFoodListAll();
		Collection<FoodInfoVO> selectFoodList(String foodName);
		FoodInfoVO selectFoodInfo(String foodName);
		String delete(int serialNum);
//		ArrayList<FoodInfoVO> selectAll_FoodInfo();
//		void update(FoodInfoVO FoodInfo);
		}
	
