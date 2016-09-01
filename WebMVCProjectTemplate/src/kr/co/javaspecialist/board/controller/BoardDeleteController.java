package kr.co.javaspecialist.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDeleteController extends BoardController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();

		String pageStr = request.getParameter("page");
		int page = 1;
		if(pageStr != null && !pageStr.equals("")) {
			page = Integer.parseInt(pageStr);
		}
		request.setAttribute("page", page);
		
		String view = "/";
		
		if(method.equalsIgnoreCase("get")) {
			String bbsno = request.getParameter("bbsno");
			String replynumber = request.getParameter("replynumber");
			request.setAttribute("bbsno", bbsno);
			request.setAttribute("replynumber", replynumber);
			view = "/board/delete.jsp";
		}else if(method.equalsIgnoreCase("post")) {
			try {
				String bbsnoStr = request.getParameter("bbsno");
				int bbsno = Integer.parseInt(bbsnoStr);
				String replynumberStr = request.getParameter("replynumber");
				int replynumber =0 ;
				if(replynumberStr != null && !replynumberStr.equals("")) {
					replynumber = Integer.parseInt(replynumberStr);
				}
				String password = request.getParameter("password");
				String dbpw = dao.getPassword(bbsno);
				if(dbpw.equals(password)) {
					dao.deleteArticle(bbsno, replynumber);
					view = "redirect:/board/list.do?page="+page;
				}else {
					request.setAttribute("message", "비밀번호가 다릅니다. 삭제되지 않았습니다.");
					view = "/board/error.jsp";
				}
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/board/error.jsp";
			}
		}
		return view;
	}

}
