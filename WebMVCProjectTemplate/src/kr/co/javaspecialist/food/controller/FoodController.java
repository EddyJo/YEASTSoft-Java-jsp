package kr.co.javaspecialist.food.controller;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.food.model.FoodInfoDAO;
import kr.co.javaspecialist.food.model.IFoodInfoDAO;

public abstract class FoodController implements CommandHandler {
	IFoodInfoDAO dao = new FoodInfoDAO();


}
