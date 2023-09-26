<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!Account[] acs = new Account[] {
			new Account("itbank", "it", "아뱅"),	
			new Account("root", "qwe", "관리자"),
			new Account("user1", "1", "유저1")
		};
	
		public Account login(Account user) {
			for (int i = 0; i < acs.length; i++) {
				if (acs[i].equals(user)) {
					return acs[i];
				}
			}
			
			return null;
		}
		
		public void setCookies(String save, Account user, HttpServletResponse response) { 
			Cookie[] cs = new Cookie[] {
				new Cookie("userid", user.getUserid()),
				new Cookie("userpw", user.getUserpw()),
				new Cookie("save", "checked")
			};
			
			for (int i = 0; i < cs.length; i++) {
				cs[i].setMaxAge(0);
				
				if (save != null) {
					cs[i].setMaxAge(60 * 60 * 24);
				}
				
				response.addCookie(cs[i]);
			}
		}%>
	
	<jsp:useBean id="user" class="beans.Account"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		String save = request.getParameter("save");
		user = login(user);
		String nick = "";
		int row = 0;
	
		if (user != null) {
			session.setAttribute("user", user);
			nick = user.getNick();
			row = 1;
			
			// 쿠키
			setCookies(save, user, response);
		}
	%>
	
	<script>
		let row = <%=row %>;
		
		if (row != 0) {
			alert('<%=nick %>님 로그인');
			location.href = 'home.jsp';
		}
		else {
			alert('로그인 실패');
			history.go(-1);
		}
	</script>
</body>
</html>