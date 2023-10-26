<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%
		String location = pageContext.getServletContext().getRealPath("/") + "upload";
		String encoding = "utf-8";
		int maxSize = 1024 * 1024 * 1024; // 10 MB
		
		// 동일한 이름의 파일이 업로드되면 1,2,3 ... 이런식으로 index를 붙여서 저장
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		// 아래 MultiPartRequest 인스턴스를 생성하면 바로 업로드가 진행됨
		MultipartRequest mr = new MultipartRequest(request, location, maxSize, encoding, rename);
		
		File upload = mr.getFile("upload");
	%>

	<h1>결과</h1>
	<hr>
	
	<ul>
		<li>메모: <%=mr.getParameter("memo") %></li>
		<li>업로드 파일명: <%=upload %></li>
	</ul>
	
	<button onclick="history.back()">뒤로 </button>
</body>
</html>