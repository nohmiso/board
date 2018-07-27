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
		<h2 class="sub-header">게시판 신규등록</h2>
		<div class="table-responsive">
		
		
			<table class="table table-striped">
				<tr>
			   <!-- <th>게시글 번호</th>
					<th>게시글 작성자</th>
					<th>게시글 날짜</th> -->
				</tr>
				<c:forEach items="${boarnewList }" var="vo">
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
		
		첨부파일 	
		<br>
		<br>	
		<br>
		<a class="btn btn-default pull-right">저장</a>&nbsp;
		<br>
		<br>
		<br>
		
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