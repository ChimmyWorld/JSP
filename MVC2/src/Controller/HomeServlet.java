package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class HomeServlet extends HttpServlet{

	private static final long serialVersionUID = -8156358738195727828L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("WEB-INF/home.jsp");
		
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 필요한 로직을 구현(= 비즈니스 로직) -> 성인/미성년 구분
		int age = Integer.parseInt(request.getParameter("age"));
		String result = (age >= 19) ? "성인" : "미성년자";
		
		request.setAttribute("msg", result);
		
		// 2. 원하는 jsp파일(= VIEW)로 포워드
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/result.jsp");
		rd.forward(request, response);
	}
	
}
