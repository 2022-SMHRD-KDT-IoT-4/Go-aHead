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

		
				
				
//				String kickboard = request.getParameter("kickboard"); //ű����
				String alco = request.getParameter("alco"); //���ڿ� ����
				String press = request.getParameter("press"); //�з�
//				String magnetic = request.getParameter("magnetic"); //���׳�ƽ
		
		//���� ������
//				String helmet1 = "1"; //���1
//				String helmet2 = "1";//���2
				
		//����		
				String kickboard = "1"; //ű����
			//	String alco = "1"; //���ڿ� ����
			//	String press = "1"; //�з�
				String magnetic = "1"; //���׳�ƽ
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

