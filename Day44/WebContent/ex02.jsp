<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>JSP 기초</h1>
	<hr>
	
	<%-- 여기는 HTML 영역 --%>
	<%!
		// 여기는 자바 영역
		// 접근 제어가 붙는다 ? => '필드'
		private int n1 = 10;
	
		public int adder(int n1, int n2){
			return n1 + n2;
		}
	%>
	
	<%-- Java 데이터를 화면에 출력시 <%= %> 표현식 사용, 메서드 호출 및 연산도 가능 --%>
	<ul>
		<li>n1 = <%=n1 %></li>
		<li>n1 + 5 = <%=n1 +5 %></li>
		<li>adder(5, 3) = <%=adder(5,3) %></li>
		<li></li>
	</ul>
	
	<%
		// 접근 제어자를 붙이면 에러 -> 지역 변수
		int n2 = 20;
		
		System.out.println("콘솔에 출력");
		
		for (int i = 1; i <=5; i++){
		out.println("<h5>n2 = " + n2 + "</h5>");
		// JspWriter out
		// 웹 브라우저에 데이터를 출력하는 객체
		// JSP 내에 이미 만들어져 있는 객체. 이를 JSP 내장 객체라고 한다
		}
	%>
	
</body>
</html>