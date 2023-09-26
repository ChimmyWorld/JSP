<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>
	<h1>Quiz1</h1>
	<hr> 
	
	<form>
		<p><input name="name" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이 " required></p>
		
		<button>전송</button>
	</form>
	
	<hr>
	
	<h4>결과</h4>
	<ul>
		<%-- EL은 null을 출력하지 않는다 --%>
		<li>이름: ${param.name }</li>
		<li>나이: ${param.age }세로 ${param.age > 19 ? '성인' : '미성년자' }입니다</li>
	</ul>
	
</body>
</html>