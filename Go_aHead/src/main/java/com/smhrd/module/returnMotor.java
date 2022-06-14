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

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int press = module.press;
		PrintWriter out = response.getWriter();
		//System.out.println("returnMotor press: "+press);
		//arduino에서 알코올 값 받아오기
		if (request.getParameter("alcohol") != null) {
			int alcohol = Integer.parseInt(request.getParameter("alcohol"));
		    System.out.println("alcohol : "+alcohol);
		}
		
		//motor값 받아오기
		int motor = moduleController.motor;
		System.out.println("motor값 :" +motor);
	// press>0&&	
		if(motor==1) {
			System.out.println("아두이노로 1 간다");
			out.print("1");
		} else if (motor == 2 ) {
			System.out.println("아두이노로 2 간다");
			out.print("2");
		}
	}	

}