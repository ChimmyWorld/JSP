<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz3</title>
</head>
<body>
	<h1>Quiz3</h1>
	<hr>
	
	<h4>현재 로그인 : ${empty user ? 'x' : user.nick }</h4>
	
	<form method="POST">
		<p><input name="userid" placeholder="아이디" required/></p>
		<p><input name="userpw" type="password" placeholder="패스워드" required/></p>
		<button>로그인</button>
		<button type="button" onclick="logout()">로그아웃</button>
	</form>
	
	<script>
		function logout() {
			let url = 'quiz3';
			
			fetch(url, { method : 'delete'})
			.then(response => {
				console.log(response);
			})
			
			location.reload();
		}
	</script>
</body>
</html>