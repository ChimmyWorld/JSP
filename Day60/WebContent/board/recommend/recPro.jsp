<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

	<jsp:useBean id="input" class="beans.RecommendDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<jsp:useBean id="rec" class="service.Recommend"/>
	<c:set var="row" value="${rec.recPro(input) }"/>
	
	<c:redirect url="/board/view.jsp?idx=${param.board_idx }"></c:redirect>
</body>
</html>