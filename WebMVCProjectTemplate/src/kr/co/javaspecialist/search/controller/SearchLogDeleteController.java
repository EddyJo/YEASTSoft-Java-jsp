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
		HttpSession session = ((HttpServletRequest)request).getSession();
		if(method.equalsIgnoreCase("get")){
			view = "/search/deletelog.jsp";
		
		}else if(method.equalsIgnoreCase("post")){
			try{
				String userId = (String)request.getParameter("userId");
				Collection<SearchLogVO> logListByUserId = dao.selectUserId(userId);
				request.setAttribute("logListByUserId", logListByUserId);
				
				return "/search/idlist.jsp";
				
				}catch(Exception e) {
					
					request.setAttribute("message", e.getMessage());
					view="/search/error.jsp";
				}
			}
			return view;

		}

	}
