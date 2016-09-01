package kr.co.javaspecialist.hello.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.hello.model.HelloService;

public class HelloController implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, 
			HttpServletResponse response) {
		String name = request.getParameter("name");
		HelloService service = new HelloService();
		String result = service.sayHello(name);
		request.setAttribute("result", result);
		
		return "/hello/hello.jsp";
	}
}
