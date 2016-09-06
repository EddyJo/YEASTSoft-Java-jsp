package kr.co.javaspecialist.food.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.food.model.FoodService;

public class FoodFunController extends FoodController {

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/food/insertForm.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				int serial = Integer.parseInt(request.getParameter("serial_num"));
				int serial_num = serial; 
				String foodName = request.getParameter("foodName");
				String goodDisease = request.getParameter("goodDisease");
				String badDisease = request.getParameter("badDisease");		
				FoodService service = new FoodService();
				String result = service.sayFood(serial_num, foodName, goodDisease, badDisease);
				request.setAttribute("result", result);
							
				//foodInfoVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기(구현 전)
				//foodInfoVO foodInfo = new foodInfoVO();
				//foodInfo.setFoodName(foodName);
				//foodInfo.setGoodDisease(goodDisease);
				//foodInfo.setBadDisease(badDisease);
				//dao.insertFoodInfo(foodInfo);

				return "/food/insertFoodInfo.jsp";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/board/error.jsp";
			}
		}
		return view;
	}
}
