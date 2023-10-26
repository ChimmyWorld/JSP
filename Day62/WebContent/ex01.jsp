<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>파일 업로드</h1>
	<hr>
	
	<form action="ex01_result.jsp" enctype="multipart/form-data" method="POST">
		<p><input name="name" placeholder="파일명"></p>
		<p><input name="upload" type="file" accept="image/*" required></p>
		
		<button>업로드</button>
	</form>

	<%-- 파일 목록 테이블로 출력 --%>
	
	<hr>
	
	<%
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		File uploadEx = new File(location);
	%>
	
	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<th>파일명</th>
			<th>이름 변경</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach var="f" items="<%=uploadEx.list() %>">
		<tr>
			<td><a href="uploadEx/${f }" download>${f }</a></td>
			<td><span onclick="update('${f }')">클릭</span></td>
			<td><a href="ex01_delete.jsp?name=${f }">클릭</a></td>
		</tr>
		</c:forEach>
	</table>

	<script>
		function update(name) {
			let rename = prompt('변경할 이름');
			let args = 'name=' + name + '&rename=' + rename;
			
			// console.log(name + ' : ' + rename);
			location.href = 'ex01_update.jsp?' + args;
		}
	</script>

</body>
</html>