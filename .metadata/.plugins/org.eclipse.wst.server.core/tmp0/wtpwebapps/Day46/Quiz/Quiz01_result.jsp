<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01_result.jsp</title>
</head>
<body>
	<%! Account acc1 = new Account("test", "1234");
		Account acc2 = new Account("itbank", "it");
		Account acc3 = new Account("monkey", "1313");
		
		Account[] accs = {acc1, acc2, acc3};
		
		public Account login(Account user){
			for (int i =0; i<accs.length; i++){
				
				if(accs[i].equals(user)){
					return accs[i];
				}
			}
			return null;
		}
	%>
	
	<jsp:useBean id="user" class="beans.Account"/>
	<jsp:setProperty property="*" name="user"/>
	
	
	<%
		user = login(user);
		
		if (user != null) {
			response.sendRedirect("Quiz01_success.jsp");
		}
		
		else {
			response.sendRedirect("Quiz01_fail.jsp");
		}
	%>
</body>
</html>