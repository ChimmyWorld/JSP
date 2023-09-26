<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_result.jsp</title>
</head>
<body>

	<%!
		String[] ids = new String[] { "test1", "itbank", "admin" };
		String[] pws = new String[] { "1234", "it", "qwe"}; 
		
		public String login(String userid, String userpw){
			for (int i=0; i < ids.length; i++){
				if (ids[i].equals(userid) && pws[i].equals(userpw)){
						return ids[i] + "님 로그인";
				}
			}
			return "로그인 실패";
		}
	%>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		String msg = login(userid, userpw);
	%>
	<h1>결과</h1>
	<hr>
	
	<ul>
		<li><%= msg%></li>
	</ul>
	
	<button onclick="history.back()">뒤로</button>
	
</body>
</html>