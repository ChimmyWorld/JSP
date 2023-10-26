package controller.account;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AccountDTO;
import model.AccountDAO;
import service.SHA512;

@WebServlet("/login")
public class Login extends HttpServlet{
	private static final long serialVersionUID = 7457480265084877824L;
	private String path = "/WEB-INF/account/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher(path + "login.jsp");
		
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		
		AccountDTO input = new AccountDTO();	
		
		String hash = SHA512.gethash(request.getParameter("userpw"));
		
		input.setUserid(request.getParameter("userid"));
		input.setUserpw(hash);
		
		AccountDAO dao = new AccountDAO();
		input = dao.selectOne(input);
		
		if (input != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", input);
		}
		
		response.sendRedirect(cpath);
	}
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("user");
	}

}
