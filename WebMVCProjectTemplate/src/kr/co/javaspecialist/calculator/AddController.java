package kr.co.javaspecialist.calculator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;

public class AddController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//파라미터 조회
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		//DAO 또는 Service 객체의 메서드 호출
		CalcService calc = new CalcService();
		int result = calc.add(Integer.parseInt(num1), Integer.parseInt(num2));
		
		//결과를 request에 저장
		request.setAttribute("result", result);
		
		//뷰 url을 리턴
		return "/calculator/result.jsp";
	}

}
