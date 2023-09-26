<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String save = request.getParameter("save");

		//Cookie(String name, String value) 
		Cookie[] cs = new Cookie[]{
				new Cookie("name", name),
				new Cookie("save", "checked")
		};
		
		for (int i=0; i < cs.length; i++){
			cs[i].setMaxAge(0);
			
			if (save != null){
				cs[i].setMaxAge(60 * 60 * 24 * 7);
			}
		
		response.addCookie(cs[i]);
		}
	%>
	
	<h1>결과</h1>
	<hr>
	
	<h4>쿠키 발급!!! F12 개발자 도구로 확인</h4>
	<a href="ex01.jsp">
		<button>ex01</button>
	</a>
	
</body>
</html>