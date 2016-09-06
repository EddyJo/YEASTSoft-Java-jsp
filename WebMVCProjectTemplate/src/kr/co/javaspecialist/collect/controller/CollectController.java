package kr.co.javaspecialist.collect.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.collect.model.CollectService;
import kr.co.javaspecialist.common.controller.CommandHandler;

public class CollectController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String medi = request.getParameter("medi");
		String url = request.getParameter("url");
		CollectService collector = new CollectService();
		String result = collector.collect(url, medi);
		request.setAttribute("result", result);
		return "/collect/collect.jsp";
		//여기서든 DB에 저장되는 모델이므로 forward가 아니라 redirect 이용
	}

}
