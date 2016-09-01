package kr.co.javaspecialist.emp.controller;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.emp.model.DeptDAO;
import kr.co.javaspecialist.emp.model.EmpDAO;
import kr.co.javaspecialist.emp.model.IDeptDAO;
import kr.co.javaspecialist.emp.model.IEmpDAO;

public abstract class EmpController implements CommandHandler{
	static final Logger logger = Logger.getLogger(EmpController.class);

	IEmpDAO empDao = new EmpDAO();
	IDeptDAO deptDao = new DeptDAO();

}
