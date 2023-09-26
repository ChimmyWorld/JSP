<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<jsp:useBean id="input" class="dto.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<c:set var="user" value="${dao.selectOne(input) }" scope="session"/>
	<%-- EL은 null인 경우 출력하지 않는다 --%>
	<%--c:set의 value에 아무것도 작성되지 않으면 attribute는 생성되지 않는다 --%>
	
	<c:if test="${not empty user }">
		<script>
			alert('로그인 성공')
			location.href= 'home.jsp';
		</script>
	</c:if>
	
	<c:if test="${empty user }">
		<script>
			alert('로그인 실패');
			history.back();
		</script>
	</c:if>
</body>
</html>