package kr.co.javaspecialist.medicineDB.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MedicineUpdateController extends MedicineController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getMethod();
		String view = "/";
		if(method.equalsIgnoreCase("get")){
			view = "/medicine/insertform.jsp";
		}else if(method.equalsIgnoreCase("post")){
			try{
				String medId = request.getParameter("med_id");
				int med_id = Integer.parseInt(medId);
				String result = dao.delete(med_id);
				request.setAttribute("result", result);
				view = "redirect:/insertmedinfo.do";
			}catch(Exception e){
				request.setAttribute("message", e.getMessage());
				view = "/error/error.jsp";
			}
		}
		return view;
	}
}
