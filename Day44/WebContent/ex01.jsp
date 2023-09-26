<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>

<!--  여기는 HTML 주석. 웹 브라우저에 소스보기로 노출됨 -->
<%--  여기는 JSP 주석. 웹 브라우저 소스보기에 노출되지 않음  --%>
<style>
	* {
		font-family: consolas;
	}
</style>

</head>
<body>
	<h1>JSP</h1>
	<hr>
	
	<ol>
		<li>지시자(directive): &lt;%@ %></li>
		<li>선언부()</li>
		<li></li>
		<li></li>
		
	</ol>
	
	<script>
		let li = document.querySelector('ol > li');
		
		li.onmouseover = () => { 
			li.style.color = 'red';
		};
		li.onmouseout = () => {
			li.style.color = 'black';
		}
	</script>
</body>
</html>