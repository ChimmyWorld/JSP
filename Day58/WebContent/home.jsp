<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="page" value="${empty param.page ? 1 : param.page }"/>
<c:set var="type" value="${empty param.type ? 'title' : param.type }"/>
<c:set var="search" value="${empty param.search ? '' : param.search }"/>
<c:set var="order" value="${empty param.order ? 'idx' : param.order }"/>
<c:set var="map" value="${dao.selectAll(page, type, search, order) }"/>
<c:set var="list" value="${map['list'] }"/>
<c:set var="p" value="${map['p'] }"/>

<section class="board">
	
	<article class="menu">
		<ul class="order">
			<li><a href="${cpath }?order=idx">최신순</a></li>
			<li><a href="${cpath }?order=view_count">조회순</a></li>
			<li><a href="${cpath }?order=cnt">댓글순</a></li>
		</ul>
		
		<ul class="order noBorder">
			<li><a href="#">SignUp</a></li>
			<li><a href="${cpath }/account/login.jsp">Login</a></li>
		</ul>
	</article>

	<table class="boards">
		<tr>
			<th>No</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx } </td>
			<td><a href="${cpath }/board/view.jsp?idx=${row.idx }">
				${row.title } (${row.cnt })
			</a></td>
			<td>${row.writer }</td>
			<td>${row.view_count }</td>
			<td>${row.write_date }</td>
			<td><a href="${cpath }/board/update.jsp?idx=${row.idx }">클릭</a></td>
			<td onclick="isDel(${row.idx}, '${cpath}')">클릭</td>
		</tr>
		</c:forEach>
	</table>
	
	<ul class="page">
		<c:set var="isSearch" value="type=${type }&search=${search }&order=${order }"/>
	
		<c:if test="${p.prev }">
			<li><a href="${cpath }?page=${p.begin - 1 }&${isSearch}">이전</a></li>
		</c:if>
	
		<c:forEach var="i" begin="${p.begin }" end="${p.end }">
			<li><a href="${cpath }?page=${i }&${isSearch}">${i }</a></li>
		</c:forEach>
		
		<c:if test="${p.next }">
			<li><a href="${cpath }?page=${p.end + 1 }&${isSearch}">다음</a></li>
		</c:if>
	</ul>
	
	<p><a href="${cpath }/board/write.jsp"><button>글작성</button></a></p>
	
	<div>
		<form>
			<select name="type">
				<option value="title">제목</option>
				<option value="writer">작성자</option>
				<option value="contents">내용</option>
			</select>	
		
			<input name="search">
			
			<button>검색</button>
		</form>
	</div>
</section>

</body>
</html>