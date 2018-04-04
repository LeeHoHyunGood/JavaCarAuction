<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Car Live My Facing</title>


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
			<div class="row">
				<div class="col-lg-8">
					<table class="table table-bordered" cellpadding="0" cellspacing="0">
						<thead>
						<tr>
							<th scope="col">쪽지번호</th>
							<th scope="col">발신자</th>
							<th scope="col">제목</th>
							<th scope="col">수신자</th>
							<th scope="col">발신시간</th>
							<th scope="col">삭제유무</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${facingList}" var="facing">
						<tr>
							<td>${facing.facing_idx}</td>
							<td>${facing.facing_sender}</td>
							<td><a href="getFacing.do?facing_idx=${facing.facing_idx}">${facing.facing_title}</a></td>
							<td>${user.acc_name}</td>
							<td>${facing.facing_time}</td>
							<td><a href="deleteFacing.do?facing_idx=${facing.facing_idx}&acc_idx=${facing.acc_idx}">삭제</a></td>
							
						</tr>
					</c:forEach>
					</tbody>
					</table>
				</div>
				
				<div class="col-md-4">

          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header" style="color: black;">전체 삭제</h5>
            <div class="card-body">
              <div class="input-group">
              	<a href="deleteFacing.do?acc_idx=${user.acc_idx}">전체 삭제</a>
              </div>
            </div>
          </div>
				
			</div>
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
