
package kr.co.javaspecialist.search.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.search.model.SearchLogDAO;
import kr.co.javaspecialist.search.model.SearchLogVO;

public class SearchLogDeleteController extends SearchController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			try{
				String userId = request.getParameter("userId");
				request.setAttribute("userId", userId);
				view = "/search/delete.jsp";
			}catch(Exception e){
				request.setAttribute("message", "DELETE_ERROR");
				view = "/search/error.jsp";
			}
		}else if(method.equalsIgnoreCase("post")){
			try{
				String userId = request.getParameter("userId");
				SearchLogVO searchlog = dao.getSearchLogDetails(userId);
				if(userId.equalsIgnoreCase(searchlog.getUserId())){
					dao.searchLogDelete(userId);
					view ="redirect:/emp/list.do";
				}else{
					
					request.setAttribute("message", "DELETE_ERROR");
					view = "/search/error.jsp";
					
					}
				}catch(Exception e) {
					
					request.setAttribute("message", e.getMessage());
					view="/search/error.jsp";
				}
			}
			return view;

		}

	}