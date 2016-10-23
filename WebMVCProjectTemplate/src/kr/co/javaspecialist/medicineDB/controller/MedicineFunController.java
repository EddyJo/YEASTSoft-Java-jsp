package kr.co.javaspecialist.medicineDB.controller;



import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.medicineDB.model.MedInfoVO;
import kr.co.javaspecialist.medicineDB.model.MedicineService;

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
			String med_name = request.getParameter("med_name");
			String med_main_ingredient = request.getParameter("med_main_ingredient");
			String med_group = request.getParameter("med_group");
			String med_disease = request.getParameter("med_disease");
			Collection<MedInfoVO> meddb = dao.selectMedList(med_name);
			for(kr.co.javaspecialist.medicineDB.model.MedInfoVO meddata : meddb){
				if(med_disease.equals(meddata.getMed_disease())){
					String warning = "경고!, 중복된 데이터입니다";
					request.setAttribute("warning", warning);
					Collection<MedInfoVO> allList = dao.selectMedListAll();
					request.setAttribute("allList", allList);

					return "/medicine/insertform.jsp";
				}
			}
			try{
						
				MedicineService service = new MedicineService();
				String result = service.saymedi(med_name, med_main_ingredient, med_group, med_disease);
				request.setAttribute("result", result);
							
				//MedInfoVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기(구현 전)
				kr.co.javaspecialist.medicineDB.model.MedInfoVO medinfo = new MedInfoVO();
				medinfo.setMed_name(med_name);
				medinfo.setMed_main_ingredient(med_main_ingredient);
				medinfo.setMed_disease(med_disease);
				medinfo.setMed_group(med_group);
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
