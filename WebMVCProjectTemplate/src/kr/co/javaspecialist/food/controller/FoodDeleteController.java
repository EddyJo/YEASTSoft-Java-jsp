package kr.co.javaspecialist.food.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FoodDeleteController<Int> extends FoodController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/food/insertform.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				String serialNum = request.getParameter("serialNum");
				int serialNumber= Integer.parseInt(serialNum);
				String result = dao.delete(serialNumber);
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
