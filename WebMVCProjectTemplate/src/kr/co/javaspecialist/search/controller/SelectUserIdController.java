package kr.co.javaspecialist.search.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.search.model.SearchLogVO;


public class SelectUserIdController extends SearchController{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("userId");
		
		Collection<SearchLogVO> logListByUserId = dao.selectUserId(userId);
		request.setAttribute("logListByUserId", logListByUserId);
		
		return "/searchlog/idlist.jsp";

	}

}


