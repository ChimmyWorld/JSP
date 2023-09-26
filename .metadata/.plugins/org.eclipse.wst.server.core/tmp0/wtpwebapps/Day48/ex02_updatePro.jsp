<%@page import="model.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id="chgPer" class="beans.PersonDTO"/>
	<jsp:setProperty property="*" name="chgPer"/>
	
	<%
		String birth = request.getParameter("birth");
		String fName = request.getParameter("fName");
		PersonDAO dao = new PersonDAO();
		
		chgPer.setBirth(birth);
		
		int row = dao.update(chgPer, fName);
	%>
	
	<script>
		message(<%=row%>);
	</script>
	
</body>
</html>