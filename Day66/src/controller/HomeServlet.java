package controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BoardDTO;
import model.BoardDAO;
import service.Paging;

@WebServlet("/home")
public class HomeServlet extends HttpServlet{
	private static final long serialVersionUID = -8753957661320028246L;
	private String path = "/WEB-INF/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rp = request.getParameter("reqPage");
		rp = (rp == null) ? "1" : rp;
		
		int reqPage = Integer.parseInt(rp);
		
		BoardDAO dao = new BoardDAO();
		Paging p = new Paging(reqPage, dao.getTotalBoard());
		
		request.setAttribute("list", dao.selectAll(p));
		request.setAttribute("page", p);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher(path + "home.jsp");
		
		rd.forward(request, response);
	}

}
