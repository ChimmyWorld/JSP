<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<jsp:useBean id="input" class="dto.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<c:set var="row" value="${dao.update(input) }" />
	<c:remove var="user"/>
	
	<script>
		let row = ${row };
	
		if (row != 0) {
			alert('수정 성공');
			location.href = 'home.jsp';
		}
		else {
			alert('수정 실패');
			history.back();
		}
	</script>
</body>
</html>