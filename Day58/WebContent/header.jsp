<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${cpath }</title>
<link rel="stylesheet" href="${cpath }/css/style.css">
<script src="${cpath }/js/script.js"></script>
</head>
<body>

<jsp:useBean id="dao" class="model.BoardDAO"/>
<jsp:useBean id="accDao" class="model.AccountDAO"/>

<h1><a href="${cpath}">
	${cpath } - Board
</a></h1>

<hr>

</body>
</html>