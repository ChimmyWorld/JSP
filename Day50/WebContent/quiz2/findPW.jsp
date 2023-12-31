<%@page import="service.NewPassword"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountVO"/>
	<jsp:setProperty property="*" name="input"/>

	<%
		AccountVO find = dao.findPw(input);
		String msg = "일치하는 정보가 존재하지 않습니다";
		int row = 0;
		
		if (find != null) {
			String pw = NewPassword.getPassword();
			String hash = NewPassword.getHash(pw);
			find.setUserpw(hash);
			
			row = dao.update(find);
			msg = "새 PW : " + pw; 
		}
	%>
	
	<script>
		message('<%=msg %>', <%=row %>);
	</script>

</body>
</html>