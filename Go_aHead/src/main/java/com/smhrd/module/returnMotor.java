package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/returnMotor")
public class returnMotor extends HttpServlet {
	public static int alcohol = 0;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int motor =0;
		if(request.getParameter("motor") != null) {
			 motor = Integer.parseInt(request.getParameter("motor"));
		    System.out.println("motor : " + motor);
		    
		}
		
		System.out.println("success");
		System.out.println("motor : " + motor);
		
		if(request.getParameter("alcohol") != null) {
			alcohol = Integer.parseInt(request.getParameter("alcohol"));
//		    System.out.println(alcohol);
		}
//		System.out.println("press값 :" + module.press);
		PrintWriter out = response.getWriter();
		
		if (module.press > 10&&motor==1) {
			out.println("1");
			System.out.println("presson");
		} else if(motor==0) {
			out.println("2");
			System.out.println("motorStop");
		} else {
			out.println("0");
//			System.out.println("pressoff");
		}
	}
}