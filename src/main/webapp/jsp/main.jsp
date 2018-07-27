<%@page import="kr.or.ddit.user.model.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	<!-- top.jsp -->

	<%@ include file="/common/top.jsp"%>

	<div class="container-fluid">
		<div class="row">

			<!--  left.jsp -->
			<%@ include file="/common/left.jsp" %>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">


				<div class="blog-header">
					<h1 class="blog-title">JSP개인 프로젝트</h1>
					<p class="lead blog-description">"Jsp" / Spring.</p>
				</div>

				<div class="row">

					<div class="col-sm-8 blog-main">

						<div class="blog-post">
							<h2 class="blog-post-title">JSP</h2>
							<p class="blog-post-meta">2018.07.20, room 207</p>

							<p>jsp를 통한 웹 프로그래밍 학습!!!</p>
							<hr>

							<h3>상세내역</h3>
							<p>☆★JSP과정에서는 다음과 같은 내용을 학습한다.☆★</p>
							<ul>
								<li>로그인 화면 : 로그인 성공후 메인 페이지 이동, 실패시 로그인 페이지로 이동</li>
								<li>게시판 요구사항대로 구성하기</li>
								<li>게시판 생성 : 게시판은 신규 생성 하고, 기존 게시판을 더이상 사용하지 않도록 설정 가능</li>
								<li>게시글 리스트 : 게시글은 페이지당 10개, 게시글 클릭시 상세조회 화면 이동</li>
			 					<li>게시글 상세조회 : 수정 버튼 클릭시 수정 화면으로 이동 
								 	삭제 버튼 클릭시 삭제후 리스트 페이지로 이동
								 	답글 클릭시 신규 작성 페이지로 이동</li>
								<li>게시글 수정 : 수정후 해당 글의 상세 조회 페이지로 이동</li>
								<li>게시글 신규 등록 : 신규 등록 후 해당글의 상세 조회 페이지로 이동한다</li>
							</ul>
						</div>
					</div>
					<!-- /.blog-main -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>
