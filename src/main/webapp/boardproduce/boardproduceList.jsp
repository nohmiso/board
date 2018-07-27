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
		<h2 class="sub-header">게시판 생성</h2>
	<%-- 	<div class="table-responsive">
		
	
			<table class="table table-striped">
				<tr>
			   		<th>게시글 번호</th>
					<th>게시글 작성자</th>
					<th>게시글 날짜</th> 
			 	</tr>
				<c:forEach items="${boardproduceList }" var="vo">
					<tr >
				   		<td>${vo.BOARD_ORDER }</td>
						<td>${vo.BOARD_WRITER }</td>
						<td>${vo.BOARD_DATE }</td> 
					</tr>
				</c:forEach>
			</table>
		
		</div>
	--%>	
		
		
		
		
<head>
	<script>

	</script>	
</head>		
		
<body>
		게시판 이름1<input type="text" class="form-control" placeholder="Search..." style="width:200px;height:30px;">
		<select name="useunuse">
		  <option value="사용">사용</option>
		  <option value="비사용">비사용</option>
		  <option value="사용/비사용" selected="selected">사용/비사용</option>
		</select>
		<a class="btn btn-default pull-right">생성</a>
		<a class="btn btn-default pull-right">수정</a><br><br>
		
		게시판 이름2<input type="text" class="form-control" placeholder="Search..." style="width:200px;height:30px;">		
		<select name="useunuse">
		  <option value="사용">사용</option>
		  <option value="비사용">비사용</option>
		  <option value="사용/비사용" selected="selected">사용/비사용</option>
		</select>
		<a class="btn btn-default pull-right">생성</a>
		<a class="btn btn-default pull-right">수정</a><br><br>
		
		게시판 이름3<input type="text" class="form-control" placeholder="Search..." style="width:200px;height:30px;" >
		<select name="useunuse">
		  <option value="사용">사용</option>
		  <option value="비사용">비사용</option>
		  <option value="사용/비사용" selected="selected">사용/비사용</option>
		</select>
		<a class="btn btn-default pull-right">생성</a>
		<a class="btn btn-default pull-right">수정</a><br><br>
		
<%-- 	<div class="text-center">
		<ul class="pagination">
				<%=request.getAttribute("pageNavi") %>
			</ul>
		</div> --%>
	</div>
</div>
	</div>
		</div>
	</div>
	
	
</body>
</html>