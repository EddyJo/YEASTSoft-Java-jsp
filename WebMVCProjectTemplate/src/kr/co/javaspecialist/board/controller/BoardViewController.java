package kr.co.javaspecialist.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.model.BoardVO;

public class BoardViewController extends BoardController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String pageStr = request.getParameter("page");
		int page = 1;
		if(pageStr != null && !pageStr.equals("")) {
			page = Integer.parseInt(pageStr);
		}
		request.setAttribute("page", page);
		
		String bbsnoStr = request.getParameter("bbsno");
		int bbsno = 1;
		if(bbsnoStr != null) {
			bbsno = Integer.parseInt(bbsnoStr);
		}
		
		dao.updateReadCount(bbsno);
		BoardVO board = dao.selectArticle(bbsno);
		if(board.getContent() != null) {
			board.setContent(board.getContent().replaceAll("\n", "<br>"));
		}
		request.setAttribute("board", board);
		
		return "/board/view.jsp";
	}

}
