package kr.co.javaspecialist.food.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FoodDeleteController extends FoodController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/food/insertform.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				String foodName = (String)request.getParameter("foodName");
				String result = dao.delete(foodName);
				request.setAttribute("result", result);
				return "/food/deleteFoodInfo.jsp";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				view = "/error/error.jsp";
			}
		}
		return view;
	}

}
