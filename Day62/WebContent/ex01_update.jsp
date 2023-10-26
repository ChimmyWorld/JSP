<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_update.jsp</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String rename = request.getParameter("rename");
		
		int dot = name.lastIndexOf('.');
		String ex = name.substring(dot);
		
		// System.out.println(ex);
		rename += ex;
		
		String location = pageContext.getServletContext().getRealPath("uploadEx");
		File update = new File(location, name);
		
		update.renameTo(new File(location, rename));
		
		response.sendRedirect("ex01.jsp");
	%>

</body>
</html>