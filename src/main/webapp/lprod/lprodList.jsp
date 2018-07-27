<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<%@ include file="/common/top.jsp" %>
<div class="container-fluid">
		<div class="row">
			
<%@ include file="/common/left.jsp" %>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				

<div class="row">
	<div class="col-sm-8 blog-main">
		<h2 class="sub-header">게시판</h2>
		<div class="table-responsive">
		
			<table class="table table-striped">
				<tr>
					<th>게시글 번호</th>
					<th>게시판 이름</th>
					<th>사용여부</th>
					<th>글 제목</th>
					<th>작성일시</th>
				</tr>
				<c:forEach items="${lprodList }" var="vo">
					<tr>
						<td>${vo.NO }</td>
						<td>${vo.PNO }</td>
						<td>${vo.GNO }</td>
						<td>${vo.TITLE }</td>
					</tr>
				</c:forEach>
			</table>
			
		</div>

		<a class="btn btn-default pull-right">새글 등록</a>
		
		<div class="text-center">
			<ul class="pagination">
				<%=request.getAttribute("pageNavi") %>
			</ul>
		</div>
	</div>
</div>
	</div>
		</div>
	</div>
</body>
</html>