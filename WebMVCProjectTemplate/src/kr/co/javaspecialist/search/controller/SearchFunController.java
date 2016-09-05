package kr.co.javaspecialist.search.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.search.model.SearchLogVO;


public class SearchFunController extends SearchController {

	String view = "/";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		
		//SearchLog VO 생성을 위한 변수 선언
		int serial = Integer.parseInt(request.getParameter("serialNum"));
		int serialNum = serial;
		String userId =  request.getParameter("userId");
		String medKey =  request.getParameter("medKey");
		String foodKey =  request.getParameter("foodKey");
		String searchDate =  request.getParameter("searchDate");
		
		
		//SearchLogVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기
		SearchLogVO searchlog = new SearchLogVO();
		searchlog.setSerialNum(serialNum);
		searchlog.setUserId(userId);
		searchlog.setMedKey(medKey);
		searchlog.setFoodKey(foodKey);
		searchlog.setSearchDate(searchDate);
		
		//searchlog에 담긴 데이터를 DB에 입력하기 - ISearchLogDAO 타입의 SearchLogDAO 객체에 넣기
		dao.insertLog(searchlog);
		
		
		
		return "검색키워드로 궁합도를 분석하는 컨트롤러를 실행시키게 구현";
		
	}
	

	}
			
