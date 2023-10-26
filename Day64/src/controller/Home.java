package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class Home extends HttpServlet{

	private static final long serialVersionUID = -8753957661320028246L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter(); 
		
		out.write("<!DOCTYPE html>\n");
		out.write("<html>\n");
		out.write("<head>\n");
		out.write("<meta charset=\"UTF-8\">\n");
		out.write("<title>home</title>\n");
		out.write("</head>\n");
		out.write("<body>\n");
		out.write("		<h1>Hello Servlet</h1>\n");
		out.write("     <hr>");
		out.write("     <h4>View없이 Servlet만 사용</h4>\n");
		out.write("     <h5 style=\"color: red;\">Servlet에서 HTML을 적는 것은 매우 귀찮다</h5>\n");
		out.write("</body>\n");
		out.write("</html>\n");
	}
}
