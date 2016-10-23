package kr.co.javaspecialist.foodDB.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FoodDeleteController extends foodController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/food/insertform.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				String foodId = request.getParameter("food_id");
				int food_id = Integer.parseInt(foodId);
				String result = dao.delete(food_id);
				request.setAttribute("result", result);
				view = "redirect:/insertFoodInfo.do";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				view = "/error/error.jsp";
			}
		}
		return view;
	}
}

