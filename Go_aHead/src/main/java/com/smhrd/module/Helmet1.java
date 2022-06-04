package com.smhrd.module;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/helmet1.do")
public class Helmet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String press = request.getParameter("press"); 
		//System.out.println("press = " + press);
	
			request.setAttribute("press", press);
			
			RequestDispatcher rd = request.getRequestDispatcher("Kickboard.do");
			rd.forward(request, response);
			
	}

}