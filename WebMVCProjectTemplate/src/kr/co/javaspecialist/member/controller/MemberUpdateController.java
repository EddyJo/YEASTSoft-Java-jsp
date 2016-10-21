package kr.co.javaspecialist.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.member.model.MemberVO;

public class MemberUpdateController extends MemberController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		HttpSession session = ((HttpServletRequest)request).getSession();

		String view = "/";
		if(method.equalsIgnoreCase("get")) {
			String userid = (String)session.getAttribute("userid");

			if(userid != null && !userid.equals("")) {
				MemberVO member = dao.selectMember(userid);
				request.setAttribute("member", member);
				view = "/member/update.jsp";
			}else {
				//userid가 세션에 없을 경우 (로그인 하지 않았을 경우)
				request.setAttribute("message", "NOT_LOGGED_IN_USER");
				view = "/member/login.jsp";
			}
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
				member.setAge(age);
				member.setGender(gender);
				member.setLocation(location);
				
				dao.update(member);
				request.setAttribute("message", "UPDATED_MEMBER_INFO");
				request.setAttribute("member", member);
				view = "/member/update.jsp";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/member/error.jsp";
			}
		}
		return view;
	}

}
