<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

<section class="myPage">
	<article class="list">
		<ul>
			<li><a href="?show=info">내정보</a></li>
			<li><a href="?show=myBoard">작성 게시글</a></li>
			<li><a href="?show=myReply">작성 댓글</a></li>
		</ul>
	</article>
	
	<article class="showInfo">
		<h3>내정보</h3>
		
		<c:if test="${not empty param.show }">
			<jsp:include page="${param.show }.jsp"/>
		</c:if>		
		
		<%-- <%@ %>의 include는 페이지를 합친 후 컴파일 (변수나 attribute 공유) --%>
		<%-- jsp태그 include는 개별로 컴파일 후 합친다 (변수나 attribute를 공유하지 않음) --%>
	</article>
</section>

<hr>

</body>
</html>