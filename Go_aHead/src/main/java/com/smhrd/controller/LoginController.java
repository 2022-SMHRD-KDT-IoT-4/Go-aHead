package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.Member;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
	
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		
		Member vo = new Member(0, mem_id, mem_pw, null, null, null, null, null, null, null);		
	

		DAO dao= new DAO();
		Member result = dao.login(vo); 
	

		if(result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
		}
		
		// 5. 이동하기
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			rd.forward(request, response);
		
	}

	}


	
	

