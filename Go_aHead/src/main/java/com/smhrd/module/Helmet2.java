package com.smhrd.module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.downVO;
import com.smhrd.domain.moduleVO;

@WebServlet("/helmet2.do")
public class Helmet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	카메라 GPS 피에조
		PrintWriter out = response.getWriter();
		moduleVO vo = new moduleVO();
		downVO vo1= new downVO();
		// 아두이노에서 센서값 받아오기
		int piezo = Integer.parseInt((String)request.getParameter("piezo"));
		int down = 0; //낙상식
		
		//카메라?GPS?
		
		
		
		// moduleVO에 담아주기
		 vo.setPiezo(piezo);
		 
		 if(vo.getMotor().equals("1")) {// 시동꺼지고 헬멧 분실 시 알람울림
				if(vo.getMagnetic().equals("0")) { //마그네틱이 떨어져 있으면
					out.print("alert");
				}else { // 마그네틱이 붙어있으면
					out.print("alertstop");
				}
			}
		 
		 if(down==1) { //낙상이 감지되었을 때 button센서 요청과 피에조울림
				out.print("alert");
				vo1.setAlert(down);
			}
	}
	

}
