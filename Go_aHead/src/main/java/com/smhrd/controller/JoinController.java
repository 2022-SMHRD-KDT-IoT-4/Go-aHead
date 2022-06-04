package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.BoardDAO;
import com.smhrd.domain.Member;


@WebServlet("/JoinController")
public class JoinController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_name = request.getParameter("mem_name");
		String mem_gender = request.getParameter("mem_gender");
		String mem_blood = request.getParameter("mem_blood");
		String mem_phone = request.getParameter("mem_phone");
		String mem_subphone = request.getParameter("mem_subphone");
		String mem_birth = request.getParameter("mem_birth");
		String dirvenum = request.getParameter("drivenum");
		
		Member b = new Member();
		b.setMem_id(mem_id);
		b.setMem_pw(mem_pw);
		b.setMem_birth(mem_birth);
		b.setMem_name(mem_name);
		b.setMem_gender(mem_gender);
		b.setMem_blood(mem_blood);
		b.setMem_phone(mem_phone);
		b.setMem_subphone(mem_subphone);
		b.setMem_birth(mem_birth);
		b.setDrivenum(dirvenum);
		
		BoardDAO dao = new BoardDAO();
		int row = dao.Join(b);
		
		if(row>0) {
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			rd.forward(request, response);
		}
		
	
		
		
		
	}

}
