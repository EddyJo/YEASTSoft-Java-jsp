package kr.co.javaspecialist.foodDB.controller;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.foodDB.model.FoodInfoDAO;
import kr.co.javaspecialist.foodDB.model.IFoodInfoDAO;


public abstract class foodController implements CommandHandler {
	IFoodInfoDAO dao = new FoodInfoDAO();
	
}
