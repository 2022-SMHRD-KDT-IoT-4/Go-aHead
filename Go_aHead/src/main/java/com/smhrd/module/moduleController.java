package com.smhrd.module;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.moduleVO;

@WebServlet("/moduleController")
public class moduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int motor = Integer.parseInt(request.getParameter("motor"));
		System.out.println("moduleController motor data : " + motor);
		
		moduleVO vo = new moduleVO(motor);
		
		request.setAttribute("motorVO", vo);
		RequestDispatcher rd = request.getRequestDispatcher("returnMotor");
		rd.forward(request, response);
	}

}
