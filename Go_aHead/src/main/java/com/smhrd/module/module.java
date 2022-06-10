package com.smhrd.module;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/module")
public class module extends HttpServlet {

	public static int alcohol = 0;
	public static int press = 0;
	public static int magnetic = 0;
	public static String gps_lat = "";
	public static String gps_long = "";

protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	HttpSession session = request.getSession();
	int motor = Integer.parseInt((String)session.getAttribute("motor"));
	System.out.println(motor);

	// GPS 위도
	if(request.getParameter("gps_lat") != null) {
		gps_lat = request.getParameter("gps_lat");
		System.out.println("gps_lat:"+gps_lat);
	}
	
	// GPS 경도
	if(request.getParameter("gps_long") != null) {
		gps_long = request.getParameter("gps_long");
		System.out.println("gps_long:"+gps_long);
	}
	
	// 압력 센서
	if(request.getParameter("press") != null) {
		press = Integer.parseInt(request.getParameter("press"));
		System.out.println("press:"+press);
	}

	
	// 마그네틱 센서
	if(request.getParameter("magnetic") != null) {
		magnetic = Integer.parseInt(request.getParameter("magnetic"));
		System.out.println("magnetic : "+magnetic);
	}
	
}

}
