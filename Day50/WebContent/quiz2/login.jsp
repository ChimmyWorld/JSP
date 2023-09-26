<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%
	Cookie[] cs = request.getCookies();

	String userid, save;
	userid = save = "";
	
	if (cs != null) {
		for (int i=0; i < cs.length; i++) {
			switch(cs[i].getName()){
			case "userid": userid = cs[i].getValue(); break;
			case "save": save = cs[i].getValue(); break;
			}
		}
	}
%>

<article>
	<form action="loginPro.jsp" method="POST">
		<p><input name="userid" placeholder="ID"></p>
		<p><input type="password" name="userpw" placeholder="PW"></p>
		<p>
			<input name="save" type="checkbox" <%=save %>>
			<label for="save">아이디 저장</label>
		</p>
		<button>로그인</button>
		
		<a href="find.jsp">
			<button type="button">ID/PW 찾기</button>
		</a>
	</form>
		
</article>

</body>
</html>