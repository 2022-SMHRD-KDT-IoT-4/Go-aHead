package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.smhrd.controller.Controller;
import com.smhrd.dao.UseDAO;
import com.smhrd.domain.useVO;

public class UseController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mem_id = (String)session.getAttribute("mem_id");
		String kick_num = request.getParameter("kick_num");
		String hel_num = request.getParameter("hel_num");
		
		
		System.out.println(mem_id);
		useVO vo = new useVO(kick_num, hel_num, mem_id);
		UseDAO dao = new UseDAO();
		int row = dao.useInsert(vo);
		
		if (row > 0) {
			
		}
		
		return null;
	}

}
