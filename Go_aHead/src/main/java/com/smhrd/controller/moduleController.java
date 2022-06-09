package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.moduleDAO;
import com.smhrd.module.module;

public class moduleController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String gps_lat = "1.3";
		String gps_long = "3.1";
		System.out.println(gps_lat);
		
		moduleDAO dao = new moduleDAO();
		 int row =dao.updateGPS(gps_lat, gps_long);
		if(row>0) {
			System.out.println("GPS 데이터 입력 성공");
		}else {
			System.out.println("GPS 데이터 입력 실패");
		}
		
	
		
		return null;
	}

}
