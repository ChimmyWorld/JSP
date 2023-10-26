<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<section class="board">
	<%-- /home으로 get요청시 board테이블을 담아서 이 페이지에 출력 --%>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td>
				<a href="${cpath }/board?idx=${row.idx}">
					${row.title }
				</a>
			</td>
			<td>${row.writer }</td>
			<td>${row.view_count }</td>
			<td>${row.write_date}</td>
		</tr>
		</c:forEach>
	</table>
	
	<p><a href="${cpath}/write">
		<button>작성</button>
	</a></p>	
</section>
<%@ include file="footer.jsp" %>
