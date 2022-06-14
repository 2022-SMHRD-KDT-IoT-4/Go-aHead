package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.UseDAO;
import com.smhrd.domain.AccVO;

public class AccController implements Controller {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      HttpSession session = request.getSession();
//      String hel_num = request.getParameter("hel_num");
      String hel_num = "2";
      
      UseDAO dao = new UseDAO();
      AccVO vo = dao.accView(hel_num);
      String moveURL = "";
      
      if (vo != null) {
         System.out.println("success");
         session.setAttribute("acc_vo", vo);
         moveURL = "sos";
      } else {
         System.out.println("false");
      }
      return moveURL;
   }

}
