package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.downVO;
import com.smhrd.domain.moduleVO;

@WebServlet("/helmet1.do")
public class Helmet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 자이로 3축, 압력
		
			PrintWriter out = response.getWriter();
			moduleVO vo = new moduleVO();
			downVO vo1 = new downVO();
			// 아두이노에서 센서값 받아오기
			// 자이로 3축(채우기)
			String press =request.getParameter("press");
//			int speedX= Integer.parseInt((String)request.getParameter("speedX"));
//			int speedY= Integer.parseInt((String)request.getParameter("speedY"));
//			int speedZ= Integer.parseInt((String)request.getParameter("speedZ"));
//			int angleX= Integer.parseInt((String)request.getParameter("angleX"));
//			int angleY= Integer.parseInt((String)request.getParameter("angleY"));
//			int angleZ= Integer.parseInt((String)request.getParameter("angleZ"));
			System.out.println("press : "+press);
//	String press = 0;			
//			int speedX = 0;
//			int speedY = 0;
//			int speedZ = 0;
//			int angleX = 0;
//			int angleY = 0;
//			int angleZ = 0;
//			int down = 0;
			
			// moduleVO로 데이터 값 보내주기
			vo.setPress(press);
//			vo1.setAngleX(angleX);
//			vo1.setAngleY(angleY);
//			vo1.setAngleZ(angleZ);
//			vo1.setSpeedX(speedX);
//			vo1.setSpeedY(speedY);
//			vo1.setSpeedZ(speedZ);
			
		}

}
