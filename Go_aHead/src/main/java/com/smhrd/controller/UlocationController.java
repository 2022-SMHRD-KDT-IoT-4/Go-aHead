package com.smhrd.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.MemberDAO;
import com.smhrd.domain.UlocationVO;



public class UlocationController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	

	String mem_id = request.getParameter("mem_id");
	
	System.out.println(mem_id);
	
	MemberDAO dao = new MemberDAO();
	UlocationVO vo = dao.Ulocation(mem_id);
	
	HttpSession session = request.getSession();
	session.setAttribute("vo", vo);
	
	return "uLocation";
}

}

	