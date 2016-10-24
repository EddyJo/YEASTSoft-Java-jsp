package kr.co.javaspecialist.medicineDB.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.medicineDB.model.MedInfoVO;

public class MedicineSelectController extends MedicineController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/medicine/insertForm.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				String med_name = request.getParameter("med_name");
				Collection<MedInfoVO> list = dao.selectMedList(med_name);
				request.setAttribute("list", list);
				view = "/medicine/selectForm.jsp";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				view = "/error/error.jsp";

			}
				
			}
			return view;
		}

}
