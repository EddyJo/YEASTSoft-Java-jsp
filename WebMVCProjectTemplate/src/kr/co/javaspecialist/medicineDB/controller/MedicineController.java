package kr.co.javaspecialist.medicineDB.controller;


import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.medicineDB.model.IMedInfoDAO;
import kr.co.javaspecialist.medicineDB.model.MedInfoDAO;

public abstract class MedicineController implements CommandHandler {

	IMedInfoDAO dao = new MedInfoDAO();
}
