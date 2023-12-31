<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.html</title>
<style>
	fieldset { display: inline-block;}
</style>
</head>
<body>
	<h1>EL - Parameter</h1>
	<hr>
	
	<form>
		<p><input name="name" placeholder="이름 " required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		
		<button>전송</button>
	</form>
	
	<fieldset>
		<legend>표현식</legend>
		
		<p>이름 : <%=request.getParameter("name") %></p>
		<p>나이 : <%=request.getParameter("age") %></p>
		<p>나이  + 3 : <%=request.getParameter("age") + 3 %></p>
	</fieldset>
	
	<fieldset>
		<legend>EL</legend>
		
		<p>이름 : ${param.name }</p>
		<p>나이 : ${param.age }</p>
		<p>나이 + 3 : ${param.age + 3}</p>
		<%-- EL은 타입을 알아서 판별한다 --%>
	</fieldset>
</body>
</html>