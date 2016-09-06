package kr.co.javaspecialist.food.model;

import java.util.ArrayList;
import java.util.Collection;

public interface IFoodInfoDAO {
		void insertFoodInfo(FoodInfoVO FoodInfo);
		Collection<FoodInfoVO> selectFoodList(String foodname);
		FoodInfoVO selectFoodInfo(String foodName);
//		ArrayList<FoodInfoVO> selectAll_FoodInfo();
//		void update(FoodInfoVO FoodInfo);
//		int delete(FoodInfoVO FoodInfo);	
		}
	
