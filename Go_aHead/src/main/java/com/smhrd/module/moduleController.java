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
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int motor = Integer.parseInt(request.getParameter("motor"));
		System.out.println("moduleController motor data : " + motor);
		
		moduleVO vo = new moduleVO(motor);
		int motorState1 = vo.getMotor();
		String motorState = String.valueOf(motorState1);
		System.out.println("motorState : " + motorState);
		
		session.setAttribute("motorState", motorState);
	}

}
