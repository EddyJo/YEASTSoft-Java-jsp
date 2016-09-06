package kr.co.javaspecialist.food.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.food.model.FoodInfoDAO;
import kr.co.javaspecialist.food.model.IFoodInfoDAO;
import kr.co.javaspecialist.medicine.model.IMedInfoDAO;
import kr.co.javaspecialist.medicine.model.MedInfoDAO;

public abstract class FoodController implements CommandHandler {
	IFoodInfoDAO dao = new FoodInfoDAO();


}
