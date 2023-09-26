<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<c:set var="row" value="${dao.delete(param.idx) }"/>
	<c:remove var="user"/>

	<script>
		let row = ${row };
	
		if (row != 0) {
			alert('탈퇴 성공');
			location.href = 'home.jsp';
		}
		else {
			alert('탈퇴 실패');
			history.back();
		}
	</script>
</body>
</html>