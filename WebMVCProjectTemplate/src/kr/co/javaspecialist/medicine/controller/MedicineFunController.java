package kr.co.javaspecialist.medicine.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.food.model.FoodInfoVO;
import kr.co.javaspecialist.medicine.model.MedInfoVO;
import kr.co.javaspecialist.medicine.model.MedicineService;


public class MedicineFunController extends MedicineController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			Collection<MedInfoVO> allList = dao.selectMedListAll();
			request.setAttribute("allList", allList);
			view = "/medicine/insertform.jsp";
		}else if(method.equalsIgnoreCase("post")){
			String medname = request.getParameter("medname");
			String disease = request.getParameter("disease");
			Collection<MedInfoVO> meddb = dao.selectMedList(medname);
			for(MedInfoVO meddata : meddb){
				if(disease.equals(meddata.getDisease())){
					String warning = "경고!, 중복된 데이터입니다";
					request.setAttribute("warning", warning);
					Collection<MedInfoVO> allList = dao.selectMedListAll();
					request.setAttribute("allList", allList);

					return "/medicine/insertform.jsp";
				}
			}
			try{
						
				MedicineService service = new MedicineService();
				String result = service.saymedi(medname, disease);
				request.setAttribute("result", result);
							
				//MedInfoVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기(구현 전)
				MedInfoVO medinfo = new MedInfoVO();
				medinfo.setMedName(medname);
				medinfo.setDisease(disease);
				dao.insertMedInfo(medinfo);

				return "/medicine/insertmedinfo.jsp";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
				view = "/board/error.jsp";
			}
		}
		return view;
	}
}