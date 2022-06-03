package com.smhrd.module;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Module.do")
public class Module extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
				
				
//				String kickboard = request.getParameter("kickboard"); //Å±º¸µå
				String alco = request.getParameter("alco"); //¾ËÄÚ¿Ã ¼¾¼­
				String press = request.getParameter("press"); //¾Ð·Â
//				String magnetic = request.getParameter("magnetic"); //¸¶±×³×Æ½
		
		//º¸µå ±¸º°¿ë
//				String helmet1 = "1"; //Çï¸ä1
//				String helmet2 = "1";//Çï¸ä2
				
		//¼¾¼­		
				String kickboard = "1"; //Å±º¸µå
			//	String alco = "1"; //¾ËÄÚ¿Ã ¼¾¼­
			//	String press = "1"; //¾Ð·Â
				String magnetic = "1"; //¸¶±×³×Æ½
				String motor ="1";
				String fall ="1";
				
						//if(magnetic!=null) {
						//	System.out.println("magnetic : " +magnetic +", boardNum : " + boardNum1);
				//out.print("piezo");
				
						
							System.out.println("alco : " +alco);
						
							System.out.println("press : " +press);
				if(alco!=null&&press!=null) {			
				request.setAttribute("alco", alco);
				request.setAttribute("press", press);
				RequestDispatcher rd = request.getRequestDispatcher("kickboard.do");
				rd.forward(request, response);
				}
						//PrintWriter out = response.getWriter();
						//out.print("motorgo");
	}
}

