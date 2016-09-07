package kr.co.javaspecialist.search.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.search.model.SearchLogVO;


public class SelectUserIdController extends SearchController{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		HttpSession session = ((HttpServletRequest)request).getSession();
		
		String userId = (String)session.getAttribute("userid");
		
		Collection<SearchLogVO> logListByUserId = dao.selectUserId(userId);
		request.setAttribute("logListByUserId", logListByUserId);
		
		return "/search/idlist.jsp";

	}

}


