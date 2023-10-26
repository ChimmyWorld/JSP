package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 아래 클래스에 적용되는 어노테이션
// - 해당 클래스를 서블릿으로 등록하고 지정 URL 매핑까지 한다
@WebServlet("/test1")
public class Ex01 extends HttpServlet{

	private static final long serialVersionUID = -6938631786266343206L;
	
	// do메서드: 해당 http 요청 메서드로 요청시 실행되는 메서드
	//(e.g. Get으로 요청 -> doGet, POST로 요청 -> doPost)
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/WEB-INF/ex01.jsp");
		
		request.setAttribute("msg", "Servlet에서 저장한 데이터 입니다");
		
		rd.forward(request, response);
			
	}
	
	// 같은 URL로 요청되더라도 메서드를 따로 구현하면 같은 URL이라도 다른 코드를 작성할 수 있다
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//1. 원하는 로직을 작성
		String name = request.getParameter("name");
		String result = "전달받은 이름은 " + name + " 입니다";
		
		//2. View에서 띄워야 하므로 Attribute에 저장
		request.setAttribute("result", result);
		
		//3. 포워드로 보여줄 View 페이지로 이동
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/WEB-INF/ex01_result.jsp");
		
		rd.forward(request, response);
	}
}	
