<%@page import="model.PersonDAO"%>
<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_insertPro.jsp</title>

<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>

	<jsp:useBean id="newPer" class="beans.PersonDTO"/>
	<jsp:setProperty property="*" name="newPer"/>
	
	<%
		String birth = request.getParameter("birth");
		newPer.setBirth(birth);
		
		PersonDAO dao = new PersonDAO();
		int row = dao.insert(newPer);
	%>
	
	<script>
			message(<%=row%>);
	</script>

</body>
</html>