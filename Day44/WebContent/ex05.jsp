<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>

<style>
	.red {color:red; }
</style>

</head>
<body>
	<h1>실행부</h1>
	<hr>
	
	<h4>스크립틀릿은 끊어서 사용 가능</h4>
	
	<% for(int i=1; i<=5; i++){ %>
		<p class="red"><%=i %> : Hello World!!!</p>
	<% } %>
	
	<hr>
	
	<%
		for(int i=5; i >=1; i--) {
			out.println("<p class=\"red\">" + i + " : Hello JSP!!!</p>");
			// 			태그 속성은 ""(쌍따옴표)
		}
	%>
</body>
</html>