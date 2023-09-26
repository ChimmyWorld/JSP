<%@page import="java.util.List"%>
<%@page import="beans.PersonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	
	<h4>DAO, DTO를 활용해서 Person 테이블을 모두 출력</h4>
	
	<jsp:useBean id="dao" class="model.PersonDAO"/>
	<% List<PersonDTO> list = dao.selectAll(); %>

	<table>
		<tr>
			<th>이름</th>
			<th>신장</th>
			<th>생년월일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<% for (PersonDTO row : list) { %>
		<tr>
			<td><%=row.getName() %></td>
			<td><%=row.getHeight() %></td>
			<td><%=row.getBirth() %></td>
			<td><a href="ex02_update.jsp?name=<%=row.getName() %>">
				클릭
			</a></td>
			<td onclick="isDel('<%=row.getName() %>')">
				클릭
			</td>
		</tr>
		<% } %>
	</table>
	
	<br>
	
	<form action="ex02_search.jsp">
		<input name="name" required>
		<button>검색</button>
	</form>
	
	<script>
		function isDel(name) {
			let con = confirm('삭제 하시겠습니까?');
			
			if (con) {
				location.href = 'ex02_delete.jsp?name=' + name;
			}
		}
	</script>
</body>
</html>