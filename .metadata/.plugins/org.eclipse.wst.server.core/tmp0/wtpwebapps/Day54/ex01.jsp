<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%-- 1. 인스턴스 생성은 jsp:useBean --%>
	<jsp:useBean id="dao" class="model.DAO"/>
	
	<%-- 2. 메서드 호출은 EL태그를 사용 --%>
	<%-- 3. 저장은 c:set으로 --%>
	<c:set var="ver" value="${dao.test() }"/>
	
	<h1>DAO Test</h1>
	<hr>
	
	<h4>${ver }</h4>
	<h4><%=pageContext.getAttribute("ver") %></h4> 
</body>
</html>