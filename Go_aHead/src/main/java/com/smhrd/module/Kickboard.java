package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Kickboard.do")
public class Kickboard extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	response.setCharacterEncoding("utf-8");
//	response.setContentType("text/html; charset=utf-8");
	//request.setCharacterEncoding("utf-8");
	String press = (String)request.getAttribute("press");
	String alco = (String)request.getParameter("alco");
	System.out.println("alco=" + alco);
	//System.out.println("press = " + press);
//	if(alco.equals("0")) {
//		request.setAttribute("alco", alco);
//		RequestDispatcher rd = request.getRequestDispatcher("motor.do");
//		rd.forward(request, response);
//	}
	
	
	
	
//	if(press.equals("1")) {
//		
//		PrintWriter out = response.getWriter();
//		out.print("1");
//	}
		
	}

}
