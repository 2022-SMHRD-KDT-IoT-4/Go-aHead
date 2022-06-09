package com.smhrd.module;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/module")
public class module extends HttpServlet {

	public static int alcohol = 0;
	public static int press = 0;
	public static int magnetic = 0;
	public static String gps_lat = "23.4";
	public static String gps_long = "44.1";
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	if(request.getParameter("press") != null) {
		press = Integer.parseInt(request.getParameter("press"));
		System.out.println("press:"+press);
	}

	if(request.getParameter("magnetic") != null) {
		magnetic = Integer.parseInt(request.getParameter("magnetic"));
		System.out.println("magnetic : "+magnetic);
	}
	

	
}

}
