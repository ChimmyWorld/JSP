<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>
	<%
		// JSP는 요청을 처리하기 위해서 request라는 객체가 이미 생성되어 있다 (= 내장 객체)
		String cpath = request.getContextPath();				// 프로젝트 최상위 경로
		String localAddr = request.getLocalAddr();				// 서버 IP
		String remoteAddr = request.getRemoteAddr();			// 클라이언트 IP
		int localPort = request.getLocalPort();					// 서버 Port
		int remortPort = request.getRemotePort();				// 클라이언트 Port
		String method = request.getMethod();					// 요청 메서드
		String protocol = request.getProtocol();				// 서버가 사용하는 프로토콜
		String uri = request.getRequestURI();					// URI
		StringBuffer url = request.getRequestURL();				// URL
		// String realPath = request.getRealPath("ex06.jsp");	// 실제 경로
		// - depracted 함수로 사용하지 않는 것을 권장
		request.setCharacterEncoding("utf-8");
		String encoding = request.getCharacterEncoding();  		// 인코딩
	%>
	
	<ul>
		<li><%=cpath %></li>
		<li><%=localAddr %></li>
		<li><%=remoteAddr %></li>
		<li><%=localPort %></li>
		<li><%=remortPort %></li>
		<li><%=method %></li>
		<li><%=protocol %></li>
		<li><%=uri %>
		<li><%=url %>
		<li><%=encoding %></li>
	</ul>
	
</body>
</html>