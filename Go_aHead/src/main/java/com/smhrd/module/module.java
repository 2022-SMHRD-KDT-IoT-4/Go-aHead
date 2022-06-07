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
	

protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
//	if(request.getParameter("alcohol") != null) {
//		alcohol = Integer.parseInt(request.getParameter("alcohol"));
//	}
	
	
	if(request.getParameter("press") != null) {
		press = Integer.parseInt(request.getParameter("press"));
	}

//	System.out.println(alcohol);
//	System.out.println(press);
	


	
}

}
