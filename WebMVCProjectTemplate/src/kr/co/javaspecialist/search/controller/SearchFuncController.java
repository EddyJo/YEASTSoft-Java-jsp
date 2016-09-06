package kr.co.javaspecialist.search.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.search.model.SearchLogVO;


public class SearchFuncController extends SearchController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		HttpSession session = ((HttpServletRequest)request).getSession();
		
		if(method.equalsIgnoreCase("get")){
			view = "/search/form.jsp";
		}else if(method.equalsIgnoreCase("post")){
			//SearchLog VO 생성을 위한 변수 선언
			try{
				//int serial = Integer.parseInt(request.getParameter("serialNum"));
				//int serialNum = serial;
				String userId = (String)session.getAttribute("userId");
				String medKey =  request.getParameter("medKey");
				String foodKey =  request.getParameter("foodKey");
				//String searchDate =  request.getParameter("searchDate");


				//SearchLogVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기
				SearchLogVO searchlog = new SearchLogVO();
				//searchlog.setSerialNum(serialNum);
				searchlog.setUserId(userId);
				searchlog.setMedKey(medKey);
				searchlog.setFoodKey(foodKey);
				System.out.println(userId);
				//searchlog.setSearchDate(searchDate);

				//searchlog에 담긴 데이터를 DB에 입력하기 - ISearchLogDAO 타입의 SearchLogDAO 객체에 넣기
				dao.insertLog(searchlog);
								
				return "redirect:analysis.do?med_name="+searchlog.getMedKey() + "&food_name=" + searchlog.getFoodKey();

			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/board/error.jsp";
			}

		}
		return view;

	}


}

