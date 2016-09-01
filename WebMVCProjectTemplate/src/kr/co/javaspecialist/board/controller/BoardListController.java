package kr.co.javaspecialist.board.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.model.BoardVO;

public class BoardListController extends BoardController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String pageStr = request.getParameter("page");
		int page = 1;
		if(pageStr != null && !pageStr.equals("")) {
			page = Integer.parseInt(pageStr);
		}
		request.setAttribute("page", page);
		
		Collection<BoardVO> boardList = dao.selectArticleList(page, 10);
		request.setAttribute("boardList", boardList);

		// paging start
		int bbsCount = dao.selectTotalArticleCount();
		int totalPage = 0;
		if(bbsCount > 0) {
			totalPage= bbsCount/10;
		}
		if( (bbsCount % 10) != 0 || totalPage==0 ) {
			totalPage = totalPage+1;
		}
		request.setAttribute("totalPageCount", totalPage);
		request.setAttribute("page", page);
		
		return "/board/list.jsp";
	}

}
