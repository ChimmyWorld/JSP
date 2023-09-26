<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUpPro.jsp</title>

<script type="text/javascript" src="../js/message.js"></script>
</head>
<body>

	<% request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id="newAcc" class="beans.AccountVO"/>
	<jsp:setProperty property="*" name="newAcc"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		int row = dao.insert(newAcc);
	%>
	
	<script>
			message(<%=row%>, '가입');
	</script>
	

</body>
</html>