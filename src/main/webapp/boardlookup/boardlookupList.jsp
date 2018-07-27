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
		<h2 class="sub-header">게시판 상세조회</h2>
		<div class="table-responsive">
		
		
			<table class="table table-striped">
				<tr>
			   <!-- <th>게시글 번호</th>
					<th>게시글 작성자</th>
					<th>게시글 날짜</th> -->
				</tr>
				<c:forEach items="${boardlookupList }" var="vo">
					<tr >
				   <%-- <td>${vo.BOARD_ORDER }</td>
						<td>${vo.BOARD_WRITER }</td>
						<td>${vo.BOARD_DATE }</td> --%>
					</tr>
				</c:forEach>
			</table>
			
		</div>

		제목 &nbsp;&nbsp;&nbsp; <input type="text" class="form-control" placeholder="게시글 제목입니다" style="width:200px;height:30px;"><br><br>

		글내용 &nbsp;&nbsp;&nbsp; <input type="text" class="form-control" placeholder=" 게시글 내용입니다" style="width:300px;height:300px;"><br><br>
		
		첨부파일 &nbsp;&nbsp;&nbsp; sally.png <br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; moon.png <br>
		<a class="btn btn-default pull-right">수정</a>&nbsp;
		<a class="btn btn-default pull-right">삭제</a>&nbsp;
		<a class="btn btn-default pull-right">답글</a>&nbsp;
		<br>
		<br>
		<br>
		
		댓글 &nbsp;&nbsp;&nbsp;첫번째 댓글입니다 [작성자/작성일시] <br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;두번재 댓글입니다 [brown/2018-07-18] <br>
		<input type="text" class="form-control" placeholder="Search..." style="width:200px;height:30px;">			
		<a class="btn btn-default pull-right">댓글저장</a>
		
<%-- 		<div class="text-center">
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