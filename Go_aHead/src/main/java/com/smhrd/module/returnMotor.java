package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/returnMotor")
public class returnMotor extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		PrintWriter out = response.getWriter();
		out.println(module.press);
		//out.println(module.alcohol);
		if (module.press > 100) {
			out.println("pressOn");
//			System.out.println("presson");
		} else {
			out.println("pressOff");
//			System.out.println("pressoff");
		}
//		if (module.alcohol < 700) {
//			out.println("alcoholOn");
//		} else {
//			out.println("alcoholOff");
//		}
//	
	}

}
