<%@page import="java.util.ArrayList"%>
<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_result.jsp</title>
</head>
<body>
	<%!Account acc1 = new Account("itbank", "it", "아이티뱅크");
		Account acc2 = new Account("test", "1234", "테스트");
		Account acc3 = new Account("monkey", "99", "멍키");
		
		Account[] arr = {acc1, acc2, acc3};
		
		public Account login(Account user){
			for(int i=0; i<arr.length; i++){
				
				if (arr[i].equals(user)) {
					return arr[i];
				}
			}
			return null;
		}%>
	
	<jsp:useBean id="user" class="beans.Account"/>
	<jsp:setProperty property="*" name="user"/>
	
	<% 
		user = login(user);
		String msg = "로그인 실패";
		
		if (user != null){
			msg = user.getNick() + "님 로그인";
		}
		
	%>
	
	<h1>결과</h1>
	<hr>
	
	<ul>
		<li><%=msg %></li>
	</ul>
</body>
</html>