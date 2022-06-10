package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.google.gson.Gson;
import com.smhrd.dao.MemberDAO;
import com.smhrd.dao.UseDAO;
import com.smhrd.domain.UlocationVO;
import com.smhrd.domain.UseVO;

@WebServlet("/use.do")
public class UseController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/json;charset=utf-8");
		HttpSession session = request.getSession();
		
		String hel_num = request.getParameter("hel_num");
		String kick_num = request.getParameter("kick_num");
		String mem_id = (String) session.getAttribute("mem_id");
		System.out.println("ajax통신 성공");
		
		System.out.println(mem_id);
		System.out.println(hel_num);
		System.out.println(kick_num);
		
		UseVO vo = new UseVO(kick_num, hel_num, mem_id);
		UseDAO dao = new UseDAO();
		int row = dao.useInsert(vo);
		UseVO result = dao.useList(mem_id);
		
		Gson g = new Gson();
		String json = g.toJson(result);
		System.out.println("json성공!");
	    PrintWriter out =response.getWriter();
	    response.setContentType("text/json;charset=utf-8");
	    out.println(json);

		
//		System.out.println(vo.getHel_loc_lat());
//		response.setContentType("text/json;charset=utf-8");
//	    PrintWriter out =response.getWriter();
//	    out.println(json);
//		
		

//		
//		String motor = request.getParameter("motor");
//		String mem_id = (String)session.getAttribute("mem_id");
//		String kick_num = request.getParameter("kick_num");
//		String hel_num = request.getParameter("hel_num");
		
//		session.setAttribute("motor", motor);
//		UseVO vo = new UseVO(kick_num, hel_num, mem_id);
//		UseDAO dao = new UseDAO();
//		int row = dao.useInsert(vo);
//		
//		if (row > 0) {
//			
//		}
//		
	}

}

