package kr.co.javaspecialist.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.member.model.MemberVO;

public class MemberDeleteController extends MemberController {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		HttpSession session = ((HttpServletRequest)request).getSession();
		String userid = (String)session.getAttribute("userid");

		String view = "/";
		if(method.equalsIgnoreCase("get")) {
			if(userid != null && !userid.equals("")) {
				MemberVO member = dao.selectMember(userid);
				request.setAttribute("member", member);
				view = "/member/delete.jsp";
			}else {
				//userid가 세션에 없을 경우 (로그인 하지 않았을 경우)
				request.setAttribute("message", "NOT_LOGGED_IN_USER");
				view = "/member/login.jsp";
			}
		}else if(method.equalsIgnoreCase("post")) {
			try {
				MemberVO member = new MemberVO();
				member.setUserid((String)session.getAttribute("userid"));
				member.setPassword(request.getParameter("password"));
				if(dao.delete(member) > 0) {
					session.invalidate();//삭제되었으면 로그아웃 처리
					view = "/member/login.jsp";
				}else {
					request.setAttribute("message", "DELETE_FAIL");
					view = "/member/error.jsp";
				}
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/member/error.jsp";
			}
		}
		return view;
	}
}
