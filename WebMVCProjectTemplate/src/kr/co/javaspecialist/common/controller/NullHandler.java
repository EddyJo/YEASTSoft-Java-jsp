package kr.co.javaspecialist.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NullHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("message", "잘못된 .do 요청입니다. command를 확인하세요.");
		return "/error/url.jsp";
	}

}
