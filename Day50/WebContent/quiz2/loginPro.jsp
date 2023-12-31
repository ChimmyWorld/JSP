<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	
	<jsp:useBean id="input" class="beans.AccountVO"/>
	<jsp:setProperty property="*" name="input"/>

	<%!public void setCookies(HttpServletResponse response, AccountVO input, String save){
			Cookie[] cs = new Cookie[] {
					new Cookie("userid", input.getUserid()),
					new Cookie("save", "checked")
			};
			
			for (int i=0; i < cs.length; i++){
				cs[i].setMaxAge(0);
				
				if (save != null){
					cs[i].setMaxAge(60*60);
				}
				response.addCookie(cs[i]);
			}
	}%>

	<% request.setCharacterEncoding("utf-8"); %>
	
	<%
		String save = request.getParameter("save");
	
		input = dao.selectOne(input);
		
		int row = 0;
		String msg = "로그인 실패";
		
		if (input != null) {
			row = 1;
			msg = input.getNick() + "님 로그인";
			
			session.setAttribute("user", input);
			setCookies(response, input, save);
		}
	%>
	
	<script>
	
		message('<%=msg %>', <%=row %>);
		
 		
	</script>
	
	
</body>
</html>