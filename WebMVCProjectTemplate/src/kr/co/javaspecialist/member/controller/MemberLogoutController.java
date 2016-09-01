package kr.co.javaspecialist.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutController extends MemberController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		HttpSession session = ((HttpServletRequest)request).getSession();

		String view = "/";
		if(method.equalsIgnoreCase("get")) {
			session.invalidate(); //로그아웃
			view = "/index.jsp";
		}else if(method.equalsIgnoreCase("post")) {
			
		}
		return view;
	}

}
