<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<h1>Redirect</h1>
	<hr>
	
	<form action="ex05_result.jsp">
		<select name="site">
			<option value="https://www.naver.com">네이버</option>
			<option value="https://www.daum.net">다음</option>
			<option value="https://mgr.kgitbank.com">LMS</option>
			<option value="https://www.google.com">구글</option>
		</select>
		
		<button>전송</button>
	</form>
</body>
</html>