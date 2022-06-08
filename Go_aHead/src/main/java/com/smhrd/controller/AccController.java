package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.UseDAO;
import com.smhrd.domain.AccVO;

public class AccController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hel_num = request.getParameter("hel_num");
		
		UseDAO dao = new UseDAO();
		AccVO vo = dao.accView(hel_num);
		
		
		
		return null;
	}

}
