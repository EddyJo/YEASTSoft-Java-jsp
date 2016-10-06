package kr.co.javaspecialist.search.controller;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.ISearchLogDAO;
import kr.co.javaspecialist.search.model.SearchLogDAO;


public abstract class SearchController implements CommandHandler{
	ISearchLogDAO dao = new SearchLogDAO();		
}
