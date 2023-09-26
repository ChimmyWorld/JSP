<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_result.jsp</title>
</head>
<body>
	<%
		// void removeAttribute(String name)
		// 지정한 이름의 Attribute를 제거
		// 지정한 이름이 없으면 아무 동작을 하지 않음
		// application.removeAttribute("lee");

		Account pg = (Account)pageContext.getAttribute("kim");
		Account rq = (Account)request.getAttribute("hong");
		Account ss = (Account)session.getAttribute("park");
		Account ap = (Account)application.getAttribute("lee");
		
		if (pg == null) { pg = new Account(); }
		if (rq == null) { rq = new Account(); }
		if (ss == null) { ss = new Account(); }
		if (ap == null) { ap = new Account(); }
	%>
	
	<h1>pageScope 결과</h1>
	<hr>
	
	<ul>
		<li><%=pg.getUserid() %> - <%=pg.getUserpw() %></li>
		<li><%=rq.getUserid() %> - <%=rq.getUserpw() %></li>
		<li><%=ss.getUserid() %> - <%=ss.getUserpw() %></li>
		<li><%=ap.getUserid() %> - <%=ap.getUserpw() %></li>
	</ul>
	
	<p><a href="ex04.jsp">
		<button>돌아가기</button>
	</a></p>
	
	
	
</body>
</html>