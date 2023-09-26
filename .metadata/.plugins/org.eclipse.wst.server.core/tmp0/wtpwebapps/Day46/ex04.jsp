<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<%
		Account kim = new Account("kim", "1234");

		// void setAttribute(String name, Object value)
		// name은 저장할 공간의 이름
		// value는 실제 저장할 데이터
		pageContext.setAttribute("kim", kim);
		request.setAttribute("hong", new Account("hong", "22"));
		session.setAttribute("park", new Account("park", "qwe"));
		application.setAttribute("lee", new Account("lee", "it1234"));
			
		// Object getAttribute(String name)
		// 저장했던 이름을 명시하면 값을 반환한다
		// Object로 업 캐스팅 되어 있어서 다운 캐스팅을 해준다
		// 없는 이름을 명시하면 null을 반환한다
		Account pg = (Account)pageContext.getAttribute("kim");
		Account rq = (Account)request.getAttribute("hong");
		Account ss = (Account)session.getAttribute("park");
		Account ap = (Account)application.getAttribute("lee");
	%>
	
	<h1>pageContext Test</h1>
	<hr>
	
	<ul>
		<li><%=pg.getUserid() %> - <%=pg.getUserpw() %></li>
		<li><%=rq.getUserid() %> - <%=rq.getUserpw() %></li>
		<li><%=ss.getUserid() %> - <%=ss.getUserpw() %></li>
		<li><%=ap.getUserid() %> - <%=ap.getUserpw() %></li>
	</ul>
	
	<p><a href="ex04_result.jsp">
		<button>이동</button>
	</a></p>
	
	<form>
		<input name="forward" type="hidden" value="yes">
		<button>포워드</button>
	</form>
	
	<%
		// 포워드 버튼을 누르면 파라미터가 현재 페이지로 전송된다
		String forward = request.getParameter("forward");
	
		// 이를 가지고 포워드 실행 여부를 결정 
		if (forward != null){
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("ex04_result.jsp");
			
			rd.forward(request, response);
		}
	%>

</body>
</html>