package kr.co.javaspecialist.food.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.food.model.FoodInfoVO;

public class FoodSelectController extends FoodController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/food/insertForm.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				String foodName = request.getParameter("foodName");
				Collection<FoodInfoVO> list = dao.selectFoodList(foodName);
				request.setAttribute("list", list);
				view = "/food/selectForm.jsp";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				view = "/error/error.jsp";
			}
		}
		return view;
	}
	

}
