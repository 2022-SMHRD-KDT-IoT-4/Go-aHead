package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/motor.do")
public class motor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String alco = (String)request.getAttribute("alco");
		String press = (String)request.getAttribute("press");
		if(alco.equals("0")&&press.equals("1")) {
			PrintWriter out = response.getWriter();
			out.print("motorgo");
		}
	}

}
