package kr.co.javaspecialist.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.member.model.MemberVO;

public class MemberMypageController extends MemberController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		HttpSession session = ((HttpServletRequest)request).getSession();

		String view = "/";
		if(method.equalsIgnoreCase("get")) {
			view = "/member/login.jsp";
		}else if(method.equalsIgnoreCase("post")) {
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			MemberVO member = dao.selectMember(userid);
			String dbPassword = member.getPassword();
			view = "/member/login.jsp";
			if(dbPassword == null) {
				//아이디가 없음
				session.invalidate();
				request.setAttribute("message", "NOT_VALID_USER");
			}else {
				//아이디 있음
				if(dbPassword.equals(password)) {
					//비밀번호 일치
					String manager = "admin";
					session.setAttribute("userid", userid);
					System.out.println(userid);
					return "redirect:/search.do";
				}else {
					//비밀번호 불일치
					session.invalidate();
					request.setAttribute("message", "WRONG_PASSWORD");
					view = "/member/login.jsp";
				}
			}
			System.out.println("22222");

		}
		return view;
	}

}
