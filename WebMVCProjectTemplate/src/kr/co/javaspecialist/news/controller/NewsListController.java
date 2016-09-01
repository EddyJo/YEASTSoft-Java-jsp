package kr.co.javaspecialist.news.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;

public class NewsListController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		return "/news/news_list.jsp";
	}

}
