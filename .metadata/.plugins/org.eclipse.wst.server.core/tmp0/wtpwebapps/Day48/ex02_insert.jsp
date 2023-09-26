<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<form action="ex02_insertPro.jsp" method="POST">
		<p>
			<label for="name">이름</label>
			<input id="name" name="name" required>
		</p>
		<p>
			<label for="height">신장</label>
			<input id="height" name="height" type="number" step="0.1" required>
		</p>
		<p>
			<label for="birth">생년월일</label>
			<input id="birth" name="birth" type="date" required>
		</p>
		
		<button>추가</button>
	</form>

</body>
</html>