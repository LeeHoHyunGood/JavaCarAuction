<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Car Live Auction</title>
<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>

<title>Java Car Live Auction</title>

<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<!-- <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
<link href='https://fonts.googleapis.com/css?family=Cabin:700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="resources/css/grayscale.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/mans.css">
</head>
<body id="page-top">

	<%@include file="navigate.jsp"%>
	<%@include file="modal.jsp"%>
	<!-- Intro Header -->

	<header class="masthead">
	<div class="intro-body">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<h1 class="brand-heading">Java Car Live</h1>
					<p class="intro-text">
						자동차를 팔고 싶다구요?!?!<br>저희 Java Car Live 에서 거래하세요!!
					</p>
					<a href="#about" class="btn btn-circle js-scroll-trigger"> <i
						class="fa fa-angle-double-down animated"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	</header>

	<!-- About Section -->
	<section id="about" class="content-section text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto">
				<h2>경매 소개</h2>
				<p>Java Car Live Auction 이다.</p>
				<p>자동차 경매 싸이트 .</p>
				<p>실시간으로 경매를 확인하며 입찰을한다.</p>
				<p>시간이 완료되면 최고입찰가와 판매자한테 쪽지 발송되며 입금이 된다.</p>
				<p>어느 누구든 쉽게 경매에 참석할수있게 개발하였다.</p>
			</div>
		</div>
	</div>
	</section>

	<!-- Download Section -->
	<section id="download"
		class="download-section content-section text-center">
	<div class="container">
		<div class="col-lg-8 mx-auto">
			<h2>경매장 이용방법</h2>
			<p>경매탭을 이용해 경매를 신청한다</p>
			<p>경매리스트 탭을 이용해 경매리스트를 보고 핫 경매또는 일반경매에 들어가 입찰 을 시도한다</p>
			<p>경매 시간이 종료되면 자동으로 최고입찰가 출금 판매자에게 입금을 한다 쪽지도 보낸다</p>
			<a href="javascript:prdOption('')" class="btn btn-default btn-lg">자동차 옵션 자세히보기</a>
		</div>
	</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="content-section text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto">
				<h2>개발자</h2>
				<p>이호현 , 김명환</p>
				<ul class="list-inline banner-social-buttons">
					<li class="list-inline-item"><a
						href="https://www.daum.net/"
						class="btn btn-default btn-lg"> <i class="fa fa-twitter fa-fw"></i>
							<span class="network-name">Daum</span>
					</a></li>
					<li class="list-inline-item"><a
						href="https://www.naver.com/"
						class="btn btn-default btn-lg"> <i class="fa fa-github fa-fw"></i>
							<span class="network-name">Naver</span>
					</a></li>
					<li class="list-inline-item"><a
						href="https://plus.google.com/"
						class="btn btn-default btn-lg"> <i
							class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	</section>

	<!-- Map Section -->


	<!-- Footer -->
	<footer>
	<div class="container text-center">
		<p>Copyright &copy; Your Website 2018</p>
	</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="resources/js/grayscale.min.js"></script>
	<script src="resources/js/check.js"></script>

</body>
</html>