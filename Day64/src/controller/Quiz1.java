package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quiz1")
public class Quiz1 extends HttpServlet{

	private static final long serialVersionUID = -613317442586327402L;
	private String path = "/WEB-INF/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher(path + "quiz.jsp");
		
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		String check = age >= 19 ? "성인" : "미성년자"; 
		
		// forward를 하면 request 정보가 유지되기 때문에,
		// name, age를 어트리뷰트에 추가하지 않아도 된다
		// (= view에서는 param.형태로 불러온다)
		request.setAttribute("check", check);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher(path + "quiz_result.jsp");
		
		rd.forward(request, response);
	}
	
}
