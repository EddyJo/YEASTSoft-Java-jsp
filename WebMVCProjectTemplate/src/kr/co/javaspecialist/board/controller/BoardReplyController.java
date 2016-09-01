package kr.co.javaspecialist.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.model.BoardVO;

public class BoardReplyController extends BoardController {

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
			int bbsno = Integer.parseInt(request.getParameter("bbsno"));
			BoardVO board = dao.selectArticle(bbsno);
			board.setName("");
			board.setEmail("");
			board.setSubject("[Re]"+board.getSubject());
			board.setContent("\n\n\n----------\n" + board.getContent());
			request.setAttribute("board", board);
			request.setAttribute("next", "reply");
			view = "/board/reply.jsp";
		}else if(method.equalsIgnoreCase("post")) {
			try {
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String subject = request.getParameter("subject");
				String content = request.getParameter("content");
				String password = request.getParameter("password");
				int masterid = Integer.parseInt(request.getParameter("masterid"));
				int replynumber = Integer.parseInt(request.getParameter("replynumber"));
				int replystep = Integer.parseInt(request.getParameter("replystep"));
				
				BoardVO board = new BoardVO();
				board.setName(name);
				board.setEmail(email);
				board.setSubject(subject);
				board.setContent(content);
				board.setPassword(password);
				board.setMasterid(masterid);
				board.setReplynumber(replynumber);
				board.setReplystep(replystep);

				dao.replyArticle(board);

				view = "redirect:/board/list.do?page="+page;
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/board/error.jsp";
			}
		}
		return view;
	}

}
