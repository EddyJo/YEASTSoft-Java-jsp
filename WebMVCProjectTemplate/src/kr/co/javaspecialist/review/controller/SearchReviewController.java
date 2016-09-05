package kr.co.javaspecialist.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.review.model.SearchReviewService;

public class SearchReviewController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) {
		String userId = request.getParameter("userID");
		SearchReviewService service = new SearchReviewService();
		String result = service.searchReview(userId);
		request.setAttribute("result", result);
		
		return "searchReview.jsp";
	}

}
