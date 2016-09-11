package kr.co.javaspecialist.search.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.search.model.SearchLogDAO;
import kr.co.javaspecialist.search.model.SearchLogVO;

public class SearchLogDeleteController extends SearchController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/search/searchlogform.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				String userId = (String)request.getParameter("userId");
				String result = dao.searchLogDelete(userId);
				request.setAttribute("result", result);
				return "/search/searchlogform.jsp";
			}catch(Exception e) {
				request.setAttribute("message", e.getMessage());
				view="/search/error.jsp";
			}
		}
		return view;

	}

}
