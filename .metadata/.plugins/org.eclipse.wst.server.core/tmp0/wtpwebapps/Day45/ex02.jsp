<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
<style>
	fieldset{
		display: inline-block;
	}
</style>
</head>
<body>
	<h1>GET, POST</h1>
	<hr>
	
	<fieldset>
		<legend>GET</legend>
		
		<form action="ex02_result.jsp" method="GET">
			<p><input name="name" placeholder="이름" required></p>
			<p><input name="email" type="email" placeholder="이메일" required></p>
			
			<button>전송</button>
		</form>
	</fieldset>
	
	<fieldset>
		<legend>POST</legend>
		
		<form action="ex02_result.jsp" method="POST">
			<p><input name="name" placeholder="이름" required></p>
			<p><input name="email" type="email" placeholder="이메일" required></p>
			
			<button>전송</button>
		</form>
	</fieldset>
</body>
</html>