package kr.co.javaspecialist.search.controller;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.ISearchLogDAO;
import kr.co.javaspecialist.search.model.SearchLogDAO;
import kr.co.javaspecialist.board.model.BoardDAO;

public abstract class SearchController implements CommandHandler{
	ISearchLogDAO dao = new SearchLogDAO();		
}
