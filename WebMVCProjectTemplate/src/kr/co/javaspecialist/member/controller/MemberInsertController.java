package kr.co.javaspecialist.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.member.model.MemberVO;

public class MemberInsertController extends MemberController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		HttpSession session = ((HttpServletRequest)request).getSession();

		String view = "/";
		if(method.equalsIgnoreCase("get")) {
			view = "/member/join.jsp";
		}else if(method.equalsIgnoreCase("post")) {
			try {
				String userid = request.getParameter("userid");
				String password = request.getParameter("password");
				String name = request.getParameter("name");		
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");

				MemberVO member = new MemberVO();
				member.setUserid(userid);
				member.setPassword(password);
				member.setName(name);
				member.setPhone(phone);
				member.setEmail(email);
				
				dao.insert(member);
				session.invalidate();
				
				view = "/member/login.jsp";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/member/error.jsp";
			}
		}
		return view;
	}

}
