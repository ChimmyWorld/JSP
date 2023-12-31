<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<h1>마이페이지</h1>

<form action="update.jsp" method="POST">
	<table class="accounts">
		<tr>
			 <th>IDX</th>
			 <td><%=user.getIdx()%></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td><%=user.getUserid() %></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><input type="password" name="userpw" required></td>
		</tr>
		<tr>
			<th>패스워드 확인</th>
			<td><input type="password" name="userpw" required></td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><%=user.getNick() %></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>
				<input id="email" 
				name="email" 
				value=<%=user.getEmail() %> required>
			</td>
		</tr>
		<tr>
			<th>가입일</th>
			<td><%=user.getJoin_date() %></td>
		</tr>
	</table>
	
	<input name="idx" type="hidden" value="<%=user.getIdx() %>">
	<p class="msg"></p>
	
	<button>수정</button>
	<button type="button" onclick="delCheck(<%=user.getIdx() %>)">탈퇴 </button>
</form>

<script src="../js/pwCheck.js"></script>

</body>
</html>