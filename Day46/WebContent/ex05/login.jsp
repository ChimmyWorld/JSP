<%@page import="beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<%!
		User[] users = new User[] {
				new User("itbank", "it", "아뱅", "it@naver.com"),
				new User("test", "1", "테스트", "t@gmail.com"),
				new User("admin", "q", "관리자", "ad@kakao.com"),
		};
	
		public User login(User user){
				for (int i =0; i < users.length; i++){
					if(users[i].equals(user)){
						return users[i];
					}
				}
			return null;
		}
	%>
	
	<jsp:useBean id="user" class="beans.User"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		user = login(user);
	
		if (user != null) { 
			session.setAttribute("user", user);
		}
			response.sendRedirect("home.jsp");
	%>
	
</body>
</html>