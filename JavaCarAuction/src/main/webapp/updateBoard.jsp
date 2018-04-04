<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">

  <head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <title>Modern Business - Start Bootstrap Template</title>
<style>
    img{
        width:50%;
    }
    #title{
    color:black;
    }
    #body{
     background-color:black;
    }
    #writer,#content,#image{
	color:white;
}
</style>
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

  <body>
<%@include file="navigate.jsp"%>

    <!-- Page Content -->
    <form action="updateBoard.do?${_csrf.parameterName}=${_csrf.token}" method="post"enctype="multipart/form-data">
    <input name="category_idx" type="hidden" value="${board.category_idx }" >
		<input name="seq" type="hidden" value="${board.seq }">
		<input name="acc_id" type="hidden" value="${user.acc_id}">
		<input name="acc_idx" type="hidden" value="${user.acc_idx}">
		<input name="filename" type="hidden" value="${board.filename }">
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Post Title
        <small>by
          <a href="#">Start Bootstrap</a>
        </small>
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
       		<div id="title">제목:	<input name="title" type="text" value="${board.title }"></div>
        </li>
      </ol>

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Preview Image -->
           <p id="writer">작성자:${board.writer}</p>
          <c:set var="category_idx" value="2"/>
				<c:if test="${board.category_idx ne 1}">
          <img src="${pageContext.request.contextPath}resources/upload/${board.filename}">
					<div id="image"><input type="file" name="file" value="${board.filename}"></div>
					</c:if>
          <hr>

          <!-- Date/Time -->
          <hr>
          <!-- Post Content -->
         <div id="content">내용<p class="lead"><textarea name="content" cols="40" rows="10" style="resize: none;">${board.content }</textarea></p></div>
          <input type="submit" value="수정 완료">
          <hr>
        </div>
		
        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
        </div>
      </div>
      <!-- /.row -->

    </div>
    </form>
    <!-- /.container -->
	<center>
	<a href="getBoard.jsp"> 수정 취소 하기</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.do?category_idx=${board.category_idx}">목록</a>
	</center>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
