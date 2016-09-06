package kr.co.javaspecialist.search.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.search.model.SearchLogVO;

public class SelectAllListController extends SearchController{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		
		Collection<SearchLogVO> allList = dao.selectAllList();
		request.setAttribute("allList", allList);

		return "/searchlog/alllist.jsp";

	}
	
}
