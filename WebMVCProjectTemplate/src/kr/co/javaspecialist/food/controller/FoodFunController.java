package kr.co.javaspecialist.food.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.food.model.FoodInfoVO;
import kr.co.javaspecialist.food.model.FoodService;

public class FoodFunController extends FoodController {

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			Collection<FoodInfoVO> allList = dao.selectFoodListAll();
			request.setAttribute("allList", allList);
			view = "/food/insertForm.jsp";
		}else if(method.equalsIgnoreCase("post")){
			String foodName = request.getParameter("foodName");
			String goodDisease = request.getParameter("goodDisease");
			String badDisease = request.getParameter("badDisease");	
			Collection<FoodInfoVO> fooddb = dao.selectFoodList(foodName);
			for(FoodInfoVO fooddata : fooddb){
				if(badDisease.equals(fooddata.badDisease)||goodDisease.equals(fooddata.goodDisease)){
					String warning = "경고!, 중복된 데이터입니다";
					request.setAttribute("warning", warning);
					Collection<FoodInfoVO> allList = dao.selectFoodListAll();
					request.setAttribute("allList", allList);
					return "/food/insertForm.jsp";
				}
			}
			try{
				FoodService service = new FoodService();
				String result = service.sayFood(foodName, goodDisease, badDisease);
				request.setAttribute("result", result);
							
				//foodInfoVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기(구현 전)
				FoodInfoVO foodInfo = new FoodInfoVO();
				foodInfo.setFoodName(foodName);
				foodInfo.setGoodDisease(goodDisease);
				foodInfo.setBadDisease(badDisease);
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
