package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AccountDTO;
import dao.AccountDAO;

@WebServlet("/quiz2")
public class Quiz2 extends HttpServlet{

	private static final long serialVersionUID = -3055996907780167366L;
	private String path = "/WEB-INF/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AccountDAO dao = new AccountDAO();
		List<AccountDTO> list = dao.selectAll();
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd; 
		rd = request.getRequestDispatcher(path + "quiz2.jsp");
		
		rd.forward(request, response);
		
	}
	
	
}
