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
		//����, ���׳�ƽ, ����,��ư
				PrintWriter out = response.getWriter();
				moduleVO vo = new moduleVO();
				downVO vo1 = new downVO();
				
				 //�Ƶ��̳뿡�� �������� �޾ƿ���(���� �۵��Ǹ� �ּ�Ǫ����)
				String alcohol = request.getParameter("alcohol");
				String magnetic = request.getParameter("magnetic");
				String motor = request.getParameter("motor"); //���� �۵�����(�̿뿩��, �ð��� �˱� ����)
				
				// ����
				// int alcohol = 0;
				// int magnetic = 0;
				// int motor = 0;
				
				// moduleVO�� �� �־��ֱ�
				vo.setAlcohol(alcohol);
				vo.setMagnetic(magnetic);
				vo.setMotor(motor);
				
				
				
				
				if(vo.getPress().equals("1")) { // �з� 1�϶� motor�Ƶ��̳�� �� ����(�����۵����)
					
					out.print("motorOn");
				}
				

				
				
			}

}
