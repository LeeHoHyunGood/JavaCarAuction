<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Java Car Live Set MyPage</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Cabin:700'
	rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link href="resources/css/grayscale0.css" rel="stylesheet">
<link rel="stylesheet" href="http://localhost/resources/css/bootstrap.css">
<link rel="stylesheet" href="http://localhost/resources/css/grayscale0.css">

</head>
<body >
	<%@include file="navigate.jsp"%>

	<header class="masthead">
	<div class="intro-body2">
		<div class="container">
		<div class="col-md-12">
			<div class="page-header">
				<h1>
					회원수정 <small>form</small>
				</h1>
			</div>
			<form class="form-horizontal" action="updateUser_proc.do"
				method="post">
				<div class="form-group">
					<label class="col-sm-3 control-label">아이디</label>
					<div class="col-sm-6">
						<p class="help-block">${user.acc_id}</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputPassword" type="password"
							name="acc_pw" placeholder="비밀번호">
						<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
						확인</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputPasswordCheck"
							type="password" placeholder="비밀번호 확인">
						<p class="help-block" id="pwmessage">비밀번호를 한번 더 입력해주세요.</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputNickname">닉네임</label>
						<div class="col-sm-6">
							<input required class="form-control" id="acc_nickname" type="text"
								name="acc_nickname" value="${user.acc_nickname}">
							<p class="help-block" id="1nicknamemessage"></p>
						</div>
					</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputNickname">번호</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputNickname" type="text"
							name="acc_hp" value="${user.acc_hp}">
						<p class="help-block" id="nicknamemessage"></p>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">이메일</label>
					<div class="col-sm-6">
						<p class="help-block">${user.acc_email}</p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type="submit">
							수정하기<i class="fa fa-check spaceLeft"></i>
						</button>
						<button class="btn btn-danger" type="button"
							onclick="location.href='mypage.jsp'">
							수정취소<i class="fa fa-times spaceLeft"></i>
						</button>
					</div>
				</div>
			</form>
			<hr>
		</div>
		</div>
	</div>
	</header>
</body>
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for this template -->
<script src="resources/js/grayscale.min.js"></script>
<script src="resources/js/check.js"></script>
</html>
