<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<c:set var="user" value="${accDao.selectOne(input) }" scope="session"/>
	
	<c:set var="row" value="${empty user ? 0 : 1 }"/>
	
	<script>
		let row = ${row};
		message(row, '${cpath}', '로그인');
	</script>
</body>
</html>