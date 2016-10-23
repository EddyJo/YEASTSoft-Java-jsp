package kr.co.javaspecialist.foodDB.controller;


import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.foodDB.model.FoodInfoVO;

public class FoodSelectController extends foodController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
			String method = request.getMethod();
			String view = "/";
			if(method.equalsIgnoreCase("get")){
				view = "/food/insertForm.jsp";
			}else if(method.equalsIgnoreCase("post")){
				try{
					String food_name = request.getParameter("food_name");
					Collection<FoodInfoVO> list = dao.selectFoodList(food_name);
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
