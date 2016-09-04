package kr.co.javaspecialist.match.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.match.model.MathchService;

public class MatchController implements CommandHandler {
	//약품명과 식품명 입력되면 실행되는 컨트롤러. (두개 입력받는 페이지 필요)
	@Override
	public String process(HttpServletRequest request, 
			HttpServletResponse response) {
		String mname = request.getParameter("mname");
		String fname = request.getParameter("fname");
		MathchService service = new MathchService();
		String result = service.sayResult(mname, fname);
		request.setAttribute("result", result);
		
		return "/match/match.jsp";
	}

}
