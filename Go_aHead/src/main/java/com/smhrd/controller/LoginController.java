package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.BoardDAO;
import com.smhrd.domain.Board;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_name = request.getParameter("mem_name");
		String mem_gender = request.getParameter("mem_gender");
		String mem_blood = request.getParameter("mem_blood");
		String mem_phone = request.getParameter("mem_phone");
		String mem_subphone = request.getParameter("mem_subphone");
		String mem_birth = request.getParameter("mem_birth");
		String mem_dirvenum = request.getParameter("mem_drivenum");
		
		Board b = new Board();
		b.setMem_num(mem_num);
		b.setMem_birth(mem_birth);
		b.setMem_name(mem_name);
		b.setMem_gender(mem_gender);
		b.setMem_blood(mem_blood);
		b.setMem_phone(mem_phone);
		b.setMem_subphone(mem_subphone);
		b.setMem_birth(mem_birth);
		b.setDrivenum(mem_dirvenum);
		
		BoardDAO dao = new BoardDAO();
		Board log = dao.checkLogin(b);
		
		if(log !=null) {
			HttpSession session = request.getSession();
			session.setAttribute("log", log);
		}
		
		response.sendRedirect("main.jsp");
	
		
		
		
	}

}
