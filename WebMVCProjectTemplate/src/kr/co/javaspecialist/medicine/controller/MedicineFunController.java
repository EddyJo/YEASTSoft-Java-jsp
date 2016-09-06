package kr.co.javaspecialist.medicine.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.medicine.model.MedInfoVO;


public class MedicineFunController extends MedicineController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String medName = request.getParameter("medname");
		String disease = request.getParameter("disease");		
	
		//MedInfoVO 타입의 객체 생성 - 데이터 저장하기 위한 틀 만들기
		MedInfoVO medinfo = new MedInfoVO();
		medinfo.setMedName(medName);
		medinfo.setDisease(disease);
		
		dao.insertMedInfo(medinfo);

		return "/medicine/insertmedinfo.jsp";
	}
}