package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;

@WebServlet("/ex02")
public class Ex02 extends HttpServlet{

	private static final long serialVersionUID = -4561408000690270557L;
	private String path = "/WEB-INF/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1. DAO를 통해서 DB의 데이터를 받는다
		DAO dao = new DAO();
		String ver = dao.test();
		
		// 2. Attribute에 추가
		request.setAttribute("ver", ver);
		
		RequestDispatcher rd = request.getRequestDispatcher(path + "ex02.jsp");
		rd.forward(request, response);
	}

}
