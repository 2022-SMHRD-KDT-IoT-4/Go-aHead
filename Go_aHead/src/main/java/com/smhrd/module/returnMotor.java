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
      HttpSession session = request.getSession();
      int motor = 0;
      if (session.getAttribute("motorState") != null) {
         motor = Integer.parseInt((String)session.getAttribute("motorState"));
      }
      
      int press = module.press;
      
      if(request.getParameter("alcohol") != null) {
         alcohol = Integer.parseInt(request.getParameter("alcohol"));
//          System.out.println(alcohol);
      }
//      System.out.println("press값 :" + module.press);
      PrintWriter out = response.getWriter();
      
      if (press > 10 && motor==1) {
         out.println("1");
         System.out.println("presson");
      } if(motor == 2) {
         out.println("2");
         System.out.println("motorStop");
      } else {
         out.println("0");
         System.out.println("nononono");
      }
   }
}