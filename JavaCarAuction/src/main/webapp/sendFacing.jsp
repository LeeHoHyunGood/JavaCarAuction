<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="com.springgame.biz.board.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Car Live My Facing</title>


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/modern-business.css" rel="stylesheet">
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<link rel="stylesheet" href="resources/css/lightslider.css" />
<link href='https://fonts.googleapis.com/css?family=Cabin:700'
	rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link href="resources/css/grayscale.min.css" rel="stylesheet">
<link href="resources/css/demo.css" rel="stylesheet" type="text/css" />
<link href="resources/css/auction.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="resources/css/mans.css">
</head>
<body id="page-top">
	<%@include file="navigate.jsp"%>
	<%@include file="modal.jsp"%>

	<!-- Intro Header -->

	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			쪽지 <small>by <a href="auctionList.do?auc_type=0000">경매
					목록가기</a>
			</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.do">Home</a></li>
		</ol>

		<form action="sendFacing.do" method="post">
			<div class="row">

				<!-- Post Content Column -->
				<div class="col-lg-8">

					<!-- Preview Image -->
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">
						<blockquote class="blockquote">
							<footer class="blockquote-footer">쪽지 <cite
								title="Source Title">제목</cite> </footer>
						</blockquote>
						<input type="text" name="facing_title" />

						<blockquote class="blockquote">
							<footer class="blockquote-footer">쪽지 <cite
								title="Source Title">내용</cite> </footer>
						</blockquote>
						<!-- Post Content -->
						<textarea rows="10" cols="100" name="facing_content"
							class="form-control" id="message" required
							data-validation-required-message="Please enter your message"
							maxlength="999" style="resize: none"></textarea>
					</div>
					<hr>

					<!-- Date/Time -->
					<h4>받는사람 사람</h4>
					<input type="hidden" name="acc_idx"
						value="${sendFacing.acc_idx}"> <input type="hidden"
						name="sender_acc_idx" value="${sendFacing.sender_acc_idx}">
						<input type="hidden" name="facing_sender" value="${user.acc_name}">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<p id=counter1>${sendFacing.facing_sender}</p>
					<span class="input-group-btn">
						<button class="btn btn-secondary" id="auctionGO" type="submit">보내기</button>
					</span>
				</div>
			</div>
		</form>
	</div>

	<!-- Footer -->
	<footer>
	<div class="container text-center">
		<p>Copyright &copy; Your Website 2018</p>
	</div>
	</footer>

	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/grayscale.min.js"></script>
	<!-- Plugin JavaScript -->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="resources/js/lightslider.js"></script>
	<script src="resources/js/check.js"></script>
</body>
</html>
