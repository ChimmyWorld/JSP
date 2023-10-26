<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<c:set var="row" value="${accDao.insert(input) }"/>
	
	<script>
		let row = ${row}
		message(row, '${cpath}', '회원가입');
	</script>

</body>
</html>