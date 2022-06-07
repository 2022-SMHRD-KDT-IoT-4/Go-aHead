package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.downVO;
import com.smhrd.domain.moduleVO;

@WebServlet("/Kickboard.do")
public class Kickboard extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				downVO vo1 = new downVO();
				
				String alcohol = (String)request.getParameter("alcohol");
				//String magnetic = request.getParameter("magnetic");
				//String motor = request.getParameter("motor");
				
				moduleVO vo = new moduleVO(alcohol);
				PrintWriter out = response.getWriter();
				String press = (String)request.getAttribute("press");
				
				System.out.println("alcohol : " + vo.getAlcohol());
				if(press.equals("1")) {
					out.print("motorOn");
				}
				
	}

}
