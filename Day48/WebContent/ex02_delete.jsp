<%@page import="model.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_delete.jsp</title>

<script type="text/javascript" src="js/script.js"></script>

</head>
<body>
	<% 
		String name = request.getParameter("name");
		PersonDAO dao = new PersonDAO();
		
		int row = dao.delete(name);
	%>
	
	<script>
		message(1);
	</script>

</body>
</html>