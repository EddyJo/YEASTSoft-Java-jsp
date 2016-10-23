package kr.co.javaspecialist.foodDB.model;

import java.util.Collection;

public interface IFoodInfoDAO {
		void insertFoodInfo(FoodInfoVO FoodInfo);
		Collection<FoodInfoVO> selectFoodListAll();
		Collection<FoodInfoVO> selectFoodList(String food_name);
		FoodInfoVO selectFoodInfo(String food_name);
		String delete(int food_id);
//		ArrayList<FoodInfoVO> selectAll_FoodInfo();
//		void update(FoodInfoVO FoodInfo);
		}
	
