<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_result.jsp</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		Cookie cs[] = new Cookie[]{
			new Cookie("name", name),
			new Cookie("age", age)
		};
		
		for (int i=0; i < cs.length; i++) {
			cs[i].setMaxAge(60 * 60);
			
			response.addCookie(cs[i]);
		}
	%> 

	<h1>쿠키 발급 테스트</h1>
</body>
</html>