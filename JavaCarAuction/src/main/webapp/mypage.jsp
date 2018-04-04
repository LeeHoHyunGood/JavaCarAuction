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
<title>Java Car Live My Page</title>


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<!-- <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
<link href='https://fonts.googleapis.com/css?family=Cabin:700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="resources/css/grayscale0.css" rel="stylesheet">
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
					<section>
					<table class="table table.hover" cellpadding="0" cellspacing="0">
						<tr>
							<th></th>
							<th colspan="4"></th>
						</tr>
						<tr>
							<td>회원번호 :</td>
							<td>${user.acc_idx}</td>
						</tr>
						<tr>
							<td>아이디 :</td>
							<td>${user.acc_id}</td>
						</tr>
						<tr>
							<td>닉네임 :</td>
							<td>${user.acc_nickname}</td>
						</tr>
						<tr>
							<td>이 름 :</td>
							<td>${user.acc_name}</td>
						</tr>
						<tr>
							<td>번호 :</td>
							<td>${user.acc_hp}</td>
						</tr>
						<tr>
							<td>이메일 :</td>
							<td>${user.acc_email}</td>
						</tr>
						<tr>
							<td>성별 :</td>
							<td>${user.acc_sex}</td>
						</tr>
						<tr>
							<td>생년월일 :</td>
							<td>${user.acc_birthday}</td>
						</tr>
						<tr>
							<td>나의 등급 :</td>
							<td>${user.acc_grade}</td>
						</tr>
						<tr>
							<td>포인트 :</td>
							<td>${user.acc_point}</td>
						</tr>
						<tr>
							<td>현실 머니 :</td>
							<td>${user.acc_money}</td>
						</tr>
					</table>
					<div class="form-group">
						<div class="col-sm-12 text-center">
							<button class="btn btn-primary" type="button"
								onclick="location.href='settingmypage.jsp'">수정하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>

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
