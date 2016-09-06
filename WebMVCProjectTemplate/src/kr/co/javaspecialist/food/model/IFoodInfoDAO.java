package kr.co.javaspecialist.food.model;

import java.util.ArrayList;

public interface IFoodInfoDAO {
		void insert_FoodInfo(FoodInfoVO FoodInfo);
		FoodInfoVO select_FoodInfo(String foodName);
		ArrayList<FoodInfoVO> selectAll_FoodInfo();
		void update(FoodInfoVO FoodInfo);
		int delete(FoodInfoVO FoodInfo);	
		}
	
