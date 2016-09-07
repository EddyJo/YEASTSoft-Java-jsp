package kr.co.javaspecialist.search.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchLogDeleteController extends SearchController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			try{
				String userid = request.getParameter("userid");
				request.setAttribute("userid", userid);
				view = "/search/delete.jsp";
			}catch(Exception e){
				request.setAttribute("message", "DELETE_ERROR");
				view = "/search/error.jsp";
			}	
		}else if(method.equalsIgnoreCase("post")){
			//try{
			//	String userid= request.getParameter("userid");
			//	SearchlogVO search = seachDao
				
			//}
		}
		
		return null;
	}

}
