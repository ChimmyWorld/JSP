<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table class="boards">
	<tr>
		<th>회원번호</th>
		<td>${user.idx }</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>${user.userid }</td>
	</tr>
	<tr>
		<th>패스워드</th>
		<td><input name="userpw" type="password"></td>
	</tr>
	<tr>
		<th>닉네임</th>
		<td>${user.nick }</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input name="email" type="email" value="${user.email }"></td>
	</tr>
	<tr>
		<th>가입일자</th>
		<td>${user.join_date }</td>
	</tr>
</table>		