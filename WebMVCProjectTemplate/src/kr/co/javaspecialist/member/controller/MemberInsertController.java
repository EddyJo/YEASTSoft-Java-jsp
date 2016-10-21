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
				int age = Integer.parseInt(request.getParameter("age")); 
				String gender = request.getParameter("gender");
				String location = request.getParameter("location");

				MemberVO member = new MemberVO();
				member.setUserid(userid);
				member.setPassword(password);
				member.setGender(gender);
				member.setAge(age);
				member.setLocation(location);				
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
