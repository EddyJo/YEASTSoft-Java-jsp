package kr.co.javaspecialist.medicine.controller;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.medicine.model.IMedInfoDAO;
import kr.co.javaspecialist.medicine.model.MedInfoDAO;

public abstract class MedicineController implements CommandHandler {
	IMedInfoDAO dao = new MedInfoDAO();

	}