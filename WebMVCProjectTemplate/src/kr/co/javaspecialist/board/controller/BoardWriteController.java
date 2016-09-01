package kr.co.javaspecialist.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.model.BoardVO;

public class BoardWriteController extends BoardController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();

		String view = "/";

		if(method.equalsIgnoreCase("get")) {
			view = "/board/write.jsp";
		}else if(method.equalsIgnoreCase("post")) {
			try {
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String subject = request.getParameter("subject");
				String content = request.getParameter("content");
				String password = request.getParameter("password");
				BoardVO board = new BoardVO();
				board.setName(name);
				board.setEmail(email);
				board.setSubject(subject);
				board.setContent(content);
				board.setPassword(password);
				dao.insertArticle(board);
				view = "redirect:/board/list.do";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/board/error.jsp";
			}
		}
		return view;
	}

}
