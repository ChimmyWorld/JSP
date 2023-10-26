package controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BoardDTO;
import model.BoardDAO;

@WebServlet("/write")
public class Write extends HttpServlet {
	private static final long serialVersionUID = -9152830134436211276L;
	private String path ="/WEB-INF/board/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher(path + "write.jsp");
		
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BoardDTO input = new BoardDTO();
		input.setTitle(request.getParameter("title"));
		input.setContents(request.getParameter("contents"));
		input.setWriter(request.getParameter("writer"));
		
		String cpath = request.getContextPath();
		BoardDAO dao = new BoardDAO();
		
		int row = dao.insert(input);
		// System.out.println(row != 0 ? "성공" : "실패");
		
		response.sendRedirect(cpath);
		
	}
	
}
