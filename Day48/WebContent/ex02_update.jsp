<%@page import="java.util.List"%>
<%@page import="beans.PersonDTO"%>
<%@page import="model.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<%
		String fName = request.getParameter("name");
		PersonDAO dao = new PersonDAO();
		
		List<PersonDTO> list = dao.selectName(fName);
		PersonDTO row = list.get(0);
	%>

	<form action="ex02_updatePro.jsp" method="POST">
		<p>
			<label for="name">이름</label>
			<input id="name" name="name" required value="<%=row.getName() %>">
		</p>
		<p>
			<label for="height">신장</label>
			<input id="height" name="height" type="number" step="0.1" required value="<%=row.getHeight() %>">
		</p>
		<p>
			<label for="birth">생년월일</label>
			<input id="birth" name="birth" type="date" required value="<%=row.getBirth() %>">
		</p>
		
		<input name="fName" type="hidden" value="<%=fName %>">
		
		<button>수정</button>
	</form>

</body>
</html>