package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.DAO;
import com.smhrd.dao.MemberDAO;
import com.smhrd.domain.HelmetVO;
import com.smhrd.domain.LocationVO;
import com.smhrd.domain.Member;

public class KicklocationController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	
	int use_number = Integer.parseInt(request.getParameter("use_number")); 
	int kick_using = Integer.parseInt(request.getParameter("kick_using")); 
	String hel_number = request.getParameter("hel_number");
	String mem_id = request.getParameter("mem_id");
	String hel_loc_lat= request.getParameter("hel_loc_lat");
	String hel_loc_long= request.getParameter("hel_loc_long");
	
	HelmetVO vo= new HelmetVO(hel_number,0,0,null,hel_loc_lat,hel_loc_long);
	LocationVO vo2 = new LocationVO(use_number, kick_using, null, hel_number, mem_id, null, null, null, null, null, null);
	
	MemberDAO dao = new MemberDAO();
	
	
	
	
	
	
	
	return null;
}

}

	