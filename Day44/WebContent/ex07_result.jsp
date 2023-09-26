<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07_result.jsp</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		// String getParameter(String name)
		// 지정한 이름의 파라미터 값을 문자열로 반환
		// 지정한 이름이 없으면 null을 반환
	%>
	
	<h1>결과</h1>
	<hr>
	
	<ul>
		<li><%=name %></li>
		<li><%=age %></li>
	</ul>
	
	<button onclick="history.go(-1)">뒤로</button>
</body>
</html>