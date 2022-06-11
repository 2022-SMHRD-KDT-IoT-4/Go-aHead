package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.moduleVO;

@SuppressWarnings("serial")
@WebServlet("/returnMotor")
public class returnMotor extends HttpServlet {
	static HttpServletRequest requset;
	public static int alcohol = 0;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int press = module.press;
		HttpSession session = request.getSession();
		int motor = 2;
		boolean btn_state = false;
		if((moduleVO)session.getAttribute("returnMotor")!=null){
			moduleVO vo =(moduleVO)session.getAttribute("returnMotor");
			int motorgo=vo.getMotor();
			
			if(press>0&&(motorgo==1)) {
				 btn_state= true;
				  System.out.println("11111111");
			}else if(motorgo==2) {
				btn_state = false;
				System.out.println("22222222222");
			}
		}
		
		if (session.getAttribute("motorState") != null) {
			motor = Integer.parseInt((String)session.getAttribute("motorState"));
			
		}
		
		
		
		if(request.getParameter("alcohol") != null) {
			alcohol = Integer.parseInt(request.getParameter("alcohol"));
//		    System.out.println(alcohol);
		}
//		System.out.println("press값 :" + module.press);
		PrintWriter out = response.getWriter();
		////----------------------
//		
//		if (btn_state) {
//			out.println("1");
//			System.out.println("presson");
//		}else if(btn_state==false) {
//			out.println("2");
//			System.out.println("motorStop");
//		}
//		 else {
//			out.println("0");
//			System.out.println("nononono");
//		}
	}

}