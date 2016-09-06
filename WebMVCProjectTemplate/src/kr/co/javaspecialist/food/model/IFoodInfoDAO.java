package kr.co.javaspecialist.food.model;

import java.util.ArrayList;
import java.util.Collection;

public interface IFoodInfoDAO {
		void insert_FoodInfo(FoodInfoVO FoodInfo);
		Collection<FoodInfoVO> selectFoodList(String foodname);
		FoodInfoVO select_FoodInfo(String foodName);
//		ArrayList<FoodInfoVO> selectAll_FoodInfo();
//		void update(FoodInfoVO FoodInfo);
//		int delete(FoodInfoVO FoodInfo);	
		}
	
