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
		HttpSession session = ((HttpServletRequest)request).getSession();
		
		//SearchLog VO 생성을 위한 변수 선언
		int serialNum = 0;
		String userId = null;
		String medKey = null;
		String foodKey = null;
		String searchDate = null;
		//참고했던 Controller 파일서 view 할당 코드 지우니까 지역변수 초기화 하라고 에러가 떠서 일단 해놓음
		
		//SearchLogVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기
		SearchLogVO searchlog = new SearchLogVO();
		searchlog.setSerialNum(serialNum);
		searchlog.setUserId(userId);
		searchlog.setMedKey(medKey);
		searchlog.setFoodKey(foodKey);
		searchlog.setSearchDate(searchDate);
		
		//searchlog에 담긴 데이터를 DB에 입력하기 - ISearchLogDAO 타입의 SearchLogDAO 객체에 넣기
		dao.insertLog(searchlog);
		
		//이건 뭔지 모름 일단 넣음
		session.invalidate();
		
		return "검색키워드로 궁합도를 분석하는 컨트롤러를 실행시키게 구현";
		
	}
	

	}
			
