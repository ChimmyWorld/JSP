<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<c:set var="row" value="${dao.delete(param.idx) }"/>
	
	<script>
		message(${row}, '${cpath}');
	</script>
</body>
</html>