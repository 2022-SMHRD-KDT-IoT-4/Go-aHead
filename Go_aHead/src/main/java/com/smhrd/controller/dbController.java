package com.smhrd.controller;

import com.smhrd.dao.moduleDAO;
import com.smhrd.domain.moduleVO;
import com.smhrd.module.module;

public class dbController {
	public static void main(String[] args) {
		String gps_lat = module.gps_lat;
		String gps_long = module.gps_long;
		System.out.println(gps_lat);
		
		moduleDAO dao = new moduleDAO();
		 int row =dao.updateGPS(gps_lat, gps_long);
		if(row>0) {
			System.out.println("GPS 데이터 입력 성공");
		}else {
			System.out.println("GPS 데이터 입력 실패");
		}
		
	}
	
	
}
