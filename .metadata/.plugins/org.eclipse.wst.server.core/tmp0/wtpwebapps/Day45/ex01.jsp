<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>

<style>
	fieldset{
		display: inline-block;
	}
</style>
</head>
<body>
	<h1>form 타입</h1>
	<hr>
	
	<fieldset>
		<legend>form</legend>
		
		<form action="ex01_result.jsp" method="GET">
			<p><input name="userid" type="text" placeholder="ID" required></p>
			<p><input name="userpw" type="password" placeholder="PW" required></p>
			<p><input name="email" type="email" placeholder="이메일" required></p>
			<p><input name="birth" type="date"></p>
			<p><input name="upload" type="file"></p>
			<p><input name="color" type="color"></p>
			
			<p>
				<input name="gender" type="radio" value="man">남
				<input name="gender" type="radio" value="woman">여
			</p>
			
			<p>
				<input name="hobby" type="checkbox" value="game">게임
				<input name="hobby" type="checkbox" value="movie">영화
				<input name="hobby" type="checkbox" value="music">음악
				<input name="hobby" type="checkbox" value="book">독서
			</p>
			
			<p>
				<select name="major">
					<option>컴퓨터공학</option>
					<option>기계공학</option>
					<option>국어국문</option>
					<option>영문학</option>
					<option>회계학</option>
					<option>경영학</option>
				</select>				
			<p>
			
			<p><textarea name="info" placeholder="자기소개"></textarea></p>
			
			<button>전송</button>
		</form>
 	</fieldset>
</body>
</html>