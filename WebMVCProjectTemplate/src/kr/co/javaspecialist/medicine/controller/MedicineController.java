package kr.co.javaspecialist.medicine.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.medicine.model.IMedInfoDAO;
import kr.co.javaspecialist.medicine.model.MedInfoDAO;

public abstract class MedicineController implements CommandHandler {
	IMedInfoDAO dao = new MedInfoDAO();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

}
