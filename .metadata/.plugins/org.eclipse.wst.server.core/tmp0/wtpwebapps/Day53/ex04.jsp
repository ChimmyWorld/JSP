<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h1>EL - Cookie</h1>
	<hr>
	
	<h4>전달한 parameter를 쿠키로 발급</h4>
	
	<form action="ex04_result.jsp">
		<p><input name="name" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		
		<button>전송</button>
	</form>
	
	<h4>쿠키1: ${cookie.name.name } - ${cookie.name.value }</h4>
	<h4>쿠키2: ${cookie.age.name } - ${ cookie.age.value }</h4>
	<%-- ${cookie.쿠키명.name}, ${cookie.쿠키명.value} --%>
</body>
</html>