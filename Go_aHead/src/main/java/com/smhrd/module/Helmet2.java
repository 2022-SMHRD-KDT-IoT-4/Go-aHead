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
	//	ī�޶� GPS �ǿ���
		PrintWriter out = response.getWriter();
		moduleVO vo = new moduleVO();
		downVO vo1= new downVO();
		// �Ƶ��̳뿡�� ������ �޾ƿ���
		int piezo = Integer.parseInt((String)request.getParameter("piezo"));
		int down = 0; //�����
		
		//ī�޶�?GPS?
		
		
		
		// moduleVO�� ����ֱ�
		 vo.setPiezo(piezo);
		 
		 if(vo.getMotor().equals("1")) {// �õ������� ��� �н� �� �˶��︲
				if(vo.getMagnetic().equals("0")) { //���׳�ƽ�� ������ ������
					out.print("alert");
				}else { // ���׳�ƽ�� �پ�������
					out.print("alertstop");
				}
			}
		 
		 if(down==1) { //������ �����Ǿ��� �� button���� ��û�� �ǿ����︲
				out.print("alert");
				vo1.setAlert(down);
			}
	}
	

}
