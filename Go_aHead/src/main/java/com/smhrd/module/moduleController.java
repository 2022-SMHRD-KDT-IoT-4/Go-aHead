package com.smhrd.module;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.moduleVO;

@WebServlet("/moduleController")
public class moduleController extends HttpServlet {
	public static int motor=0;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		motor = Integer.parseInt(request.getParameter("motor"));
		System.out.println("moduleController motor data : " + motor);

		response.sendRedirect("returnMotor");

	}

}