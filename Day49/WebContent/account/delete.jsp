<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>

<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<jsp:useBean id="input" class="beans.AccountVO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		int row = dao.delete(input.getIdx());
		session.removeAttribute("user");
	%>
	
	<script src="../js/message.js"></script>
	
	<script>
		message(<%=row%>, '탈퇴');
	</script>
</body>
</html>