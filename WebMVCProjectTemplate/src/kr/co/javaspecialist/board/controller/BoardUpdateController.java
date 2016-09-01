package kr.co.javaspecialist.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.model.BoardVO;

public class BoardUpdateController extends BoardController {
	
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
			String bbsnoStr = request.getParameter("bbsno");
			int bbsno = 0;
			if(bbsnoStr != null) {
				bbsno = Integer.parseInt(bbsnoStr);
				BoardVO board = dao.selectArticle(bbsno);
				request.setAttribute("board", board);
				request.setAttribute("next", "update");
			}else {
				request.setAttribute("message", "게시글번호가 없습니다.");
				view = "/board/error.jsp";
			}
			view = "/board/update.jsp";
		}else if(method.equalsIgnoreCase("post")) {
			try {
				String bbsnoStr = request.getParameter("bbsno");
				int bbsno = Integer.parseInt(bbsnoStr);
				
				String password = request.getParameter("password");
				
				String dbpw = dao.getPassword(bbsno);
				if(dbpw.equals(password)) {
					BoardVO board = new BoardVO();
					board.setBbsno(bbsno);
					board.setName(request.getParameter("name"));
					board.setEmail(request.getParameter("email"));
					board.setSubject(request.getParameter("subject"));
					board.setContent(request.getParameter("content"));
					dao.updateArticle(board);
					view = "redirect:/board/view.do?bbsno="+bbsno + "&page="+page;
				}else {
					request.setAttribute("message", "비밀번호가 다릅니다. 수정되지 않았습니다.");
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
