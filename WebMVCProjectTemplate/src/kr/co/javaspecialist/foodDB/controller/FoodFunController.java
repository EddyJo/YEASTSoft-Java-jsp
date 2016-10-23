package kr.co.javaspecialist.foodDB.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.foodDB.model.FoodInfoVO;
import kr.co.javaspecialist.foodDB.model.FoodService;

public class FoodFunController extends foodController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			Collection<FoodInfoVO> allList = dao.selectFoodListAll();
			request.setAttribute("allList", allList);
			view = "/food/insertForm.jsp";
		}else if(method.equalsIgnoreCase("post")){
			String food_name = request.getParameter("food_name");
			String food_ingregrient = request.getParameter("food_ingregrient");
			Collection<FoodInfoVO> fooddb = dao.selectFoodList(food_name);
			for(FoodInfoVO fooddata : fooddb){
				if(food_ingregrient.equals(fooddata.food_ingredient)){
					String warning = "경고!, 중복된 데이터입니다";
					request.setAttribute("warning", warning);
					Collection<FoodInfoVO> allList = dao.selectFoodListAll();
					request.setAttribute("allList", allList);
					return "/food/insertForm.jsp";
				}
			}
			try{
				FoodService service = new FoodService();
				String result = service.sayFood(food_name, food_ingregrient);
				request.setAttribute("result", result);
							
				//foodInfoVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기(구현 전)
				FoodInfoVO foodInfo = new FoodInfoVO();
				foodInfo.setFood_name(food_name);
				foodInfo.setFood_ingredient(food_ingregrient);
				dao.insertFoodInfo(foodInfo);

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

