<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="input" class="dto.AccountDTO"/>
<jsp:setProperty property="*" name="input"/>

<c:set var="user" value="${dao.insert(input) }"/>

<c:if test="${not empty user }">
	<script>
		alert('가입 성공');
		location.href = 'home.jsp';
	</script>
</c:if>

<c:if test="${empty user }">
	<script>
		history.back();
	</script>
</c:if>

</body>
</html>