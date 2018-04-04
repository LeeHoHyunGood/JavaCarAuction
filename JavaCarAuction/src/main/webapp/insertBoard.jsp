<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags" %>
<html>

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
<script type="text/javascript">
				var loadFile = function(evnet){
					var output = document.getElementById('output');
					output.src=URL.createObjectURL(event.target.files[0]);
				};
				</script>
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
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Post Title
        <small>by
          <a href="#">Start Bootstrap</a>
        </small>
      </h1>
	<form action="insertBoard.do?${_csrf.parameterName}=${_csrf.token}" method="post"enctype="multipart/form-data">
  		<input name="acc_id" type="hidden" value="${user.acc_id}">
		<input type="hidden" name="acc_idx" value="${user.acc_idx}">
		<input type="hidden" name="category_idx" value="${board.category_idx}">
		<input name="filename" type="hidden" value="${board.filename}">
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
       		<div id="title">제목:<input name="title" type="text" value="${board.title }"></div>
        </li>
      </ol>

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Preview Image -->
           <p id="writer">작성자:${user.acc_name}</p>
           <input type="hidden" name="writer" value="${user.acc_name}">
         
          <hr>

          <!-- Date/Time -->
          <hr>
          <!-- Post Content -->
        <div id="content">내용:</div><p class="lead"><textarea name="content" cols="40" rows="10" style="resize: none;">${board.content }</textarea></p>
          <c:set var="category_idx" value="2"/>
				<c:if test="${board.category_idx ne 1}">
				   <img id="output"/><div id="image">사진 첨부<input type="file" name="file" value="${board.filename}" accept="image/*" onchange="loadFile(event)" ></div>
				</c:if>
          <hr>
          <center><button type="submit">등록</button></center>
        </div>
		
        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
        </div>
      </div>
      <!-- /.row -->
	</form>
    </div>
    <!-- /.container -->
	<center>
	<a href="getBoardList.do?category_idx=${board.category_idx}">등록 취소</a>
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
