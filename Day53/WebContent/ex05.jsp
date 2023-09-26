<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<h1>EL - operator</h1>
	<hr>
	
	<ul>
		<%-- 비교 연산자 --%>
		<li>\${10 + 3 } = ${10 + 3 }</li>
		<li>\${10 - 3 } = ${10 - 3 }</li>
		<li>\${10 * 3 } = ${10 * 3 }</li>
		<li>\${10 / 3 } = ${10 / 3 }</li>
		<li>\${10 % 3 } = ${10 % 3 }</li>
		<li>\${10 > 3 } = ${10 gt 3 }</li> 	<%-- gt: greater than, ~보다 크다 --%>
		<li>\${10 < 3 } = ${10 lt 3 }</li> 	<%-- lt: less    than, ~보다 작다 --%>
		<li>\${10 >= 3 } = ${10 ge 3 }</li>	<%-- ge: greater equal, ~보다 크거나 같다--%>
		<li>\${10 <= 3 } = ${10 le 3 }</li>	<%-- le: less    equal, ~보다 작거나 같다--%>
		<li>\${10 == 3 } = ${10 eq 3 }</li> <%-- eq: equal, ~ 와 같다--%>
		<li>\${10 != 3 } = ${10 != 3 }</li> <%-- ne: not equal, ~ 와 같지 않다--%>
		
		<%-- 논리 연산자 --%>
		<li>\${true && true } = ${true && true }</li> <%-- and: 양쪽 모두  참이면 참 --%>
		<li>\${false || false } = ${false || false }</li> <%-- or: 양쪽 모두 거짓이면 거짓 --%>
		<li>\${!true} = ${not true}</li> <%-- not: 참/거짓을 반전 --%>
		<li>\${empty user } = ${empty user }</li>
		<li>\${not empty cookie.age } = ${not empty cookie.age }</li>
		<%-- empty: 해당 데이터(attribute, parameter, cookie)가 있는지 판별 --%>
		<li>\${4 > 0 ? '양수' : '음수' } = ${4 > 0 ? '양수' : '음수' }</li>
	</ul>
</body>
</html>