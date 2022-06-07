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
<<<<<<< HEAD
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
      
      String alcohol = request.getParameter("alcohol");
            
            //System.out.println(alcohol);
            PrintWriter out = response.getWriter();
            String press = (String)request.getAttribute("press");
            System.out.println(press);
            
            if(Integer.parseInt(press)>50) {
               out.print("motorOn");
            }else {
               out.print("gogogo");
            }
            
            
   }
=======
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		String alcohol = request.getParameter("alcohol");
				
				//System.out.println(alcohol);
				PrintWriter out = response.getWriter();
				String press = (String)request.getAttribute("press");
				System.out.println(press);
				
				if(Integer.parseInt(press)>50) {
					out.print("motorOn");
				}else {
					out.print("gogogo");
				}
				
				
	}
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-IoT-4/Go-aHead.git

}