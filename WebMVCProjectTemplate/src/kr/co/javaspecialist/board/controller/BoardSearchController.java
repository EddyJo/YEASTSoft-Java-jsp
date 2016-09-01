package kr.co.javaspecialist.board.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.model.BoardVO;

public class BoardSearchController extends BoardController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String keyword = request.getParameter("keyword");
		
		Collection<BoardVO> boardList = dao.searchListByContentKeyword(keyword);
		request.setAttribute("boardList", boardList);

		return "/board/dlist.jsp";

	}

}
