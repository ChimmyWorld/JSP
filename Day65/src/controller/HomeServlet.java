package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BoardDTO;
import model.BoardDAO;

@WebServlet("/home")
public class HomeServlet extends HttpServlet{
	private static final long serialVersionUID = -8753957661320028246L;
	private String path = "/WEB-INF/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = dao.selectAll();
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher(path + "home.jsp");
		
		rd.forward(request, response);
	}

}
