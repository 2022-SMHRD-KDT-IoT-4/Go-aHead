package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test3")
public class test3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		String alcohol = request.getParameter("alcohol");
		
		//System.out.println(alcohol);
		PrintWriter out = response.getWriter();
		
		if(Integer.parseInt(alcohol) > 800) {
			out.print("hello");
		}else {
			out.print("gogogo");
		}
		
		
		
		
	
	
	}

}
