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

@WebServlet("/update")
public class Update extends HttpServlet{

	private static final long serialVersionUID = -3288468882956186846L;
	private String path ="/WEB-INF/board/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		BoardDAO dao = new BoardDAO();
		BoardDTO row = dao.selectOne(idx);
		
		request.setAttribute("row", row);
			
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
		input.setIdx(Integer.parseInt(request.getParameter("idx")));
		
		String cpath = request.getContextPath();
		BoardDAO dao = new BoardDAO();
		
		int row = dao.update(input);
		
		response.sendRedirect(cpath);
	}
}
