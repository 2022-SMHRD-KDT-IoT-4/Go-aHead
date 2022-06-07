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

@WebServlet("/Kickboard.do")
public class Kickboard extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//알콜, 마그네틱, 모터,버튼
				PrintWriter out = response.getWriter();
				moduleVO vo = new moduleVO();
				downVO vo1 = new downVO();
				
				 //아두이노에서 센서값을 받아오기(센서 작동되면 주석푸세요)
				String alcohol = request.getParameter("alcohol");
				String magnetic = request.getParameter("magnetic");
				String motor = request.getParameter("motor"); //모터 작동여부(이용여부, 시간을 알기 위함)
				
				// 가상값
				// int alcohol = 0;
				// int magnetic = 0;
				// int motor = 0;
				
				// moduleVO에 값 넣어주기
				vo.setAlcohol(alcohol);
				vo.setMagnetic(magnetic);
				vo.setMotor(motor);
				
				
				
				
				if(vo.getPress().equals("1")) { // 압력 1일때 motor아두이노로 값 전송(모터작동명령)
					
					out.print("motorOn");
				}
				

				
				
			}

}
