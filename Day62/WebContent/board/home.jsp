<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="list" value="${dao.selectAll() }"/>

<section class="board">
	<c:forEach var="i" items="${list }">
	<article class="thumbnail" onclick="move(${i.idx})">
		<div><img src="${i.img_path }" width="100%" height="120px"></div>
		<p>
			${i.title }<br>
			${i.writer }
		</p>
	</article>
	</c:forEach>
</section>

<script>
	function move(idx){
		location.href = 'view.jsp?idx=' + idx;
	}
</script>

</body>
</html>