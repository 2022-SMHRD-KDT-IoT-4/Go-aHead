package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.UseDAO;
import com.smhrd.domain.AccVO;
import com.smhrd.domain.HelmetVO;
import com.smhrd.domain.UseVO;
import com.smhrd.module.module;

public class AccController implements Controller {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
	   
      HttpSession session = request.getSession();
      
//      String hel_number = module.hel_number_shock;
//      int shock = module.shock;
      
      int shock = 1;
      String hel_number = "1";
      String moveURL = "";
      
      if(shock == 1) {
	      UseDAO dao = new UseDAO();
	      
	      AccVO vo = dao.accView(hel_number);
	      UseVO usevo = dao.useList2(hel_number);
	      HelmetVO helmetvo = dao.startGPS(hel_number);
	      
	      int  use_number = usevo.getUse_number();
	      String acc_loc_lat = helmetvo.getHel_loc_lat();
	      String acc_loc_long = helmetvo.getHel_loc_long();
	      
	      AccVO accvo = new AccVO(use_number, acc_loc_lat, acc_loc_long);
    	  dao.accList(accvo);
	      
    	  if (vo != null) {
	         System.out.println("success");
	         session.setAttribute("acc_vo", vo);
	         moveURL = "sos";
	      } else {
	         System.out.println("false");
	      }
      }
      return moveURL;
   }

}