<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<jsp:useBean id="input" class="beans.BoardDTO"/>
	<jsp:setProperty property="*" name="input"/>

	<c:set var="row" value="${dao.insert(input) }"/>

	<script>
		let row = ${row};
		message(row, '${cpath}', '작성');
	</script>

</body>
</html>