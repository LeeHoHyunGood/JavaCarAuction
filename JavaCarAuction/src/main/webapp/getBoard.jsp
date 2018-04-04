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
    #title,.card-header{
    	color:black;
    }
    
    #body{
    background-color:black;
    }
    #writer,#content,.media-body{
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
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Post Title
        <small>by
          <a href="#">Start Bootstrap</a>
        </small>
      </h1>
	<div id="title">
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
       		제목: ${board.title } 
        </li>
      </ol>
	</div>
      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Preview Image -->
          <c:set var="category_idx" value="2"/>
				<c:if test="${board.category_idx ne 1}">
          <img src="${pageContext.request.contextPath}/resources/upload/${board.filename}" alt="">
					</c:if>
          <hr>

          <!-- Date/Time -->
          <p id="writer">작성자:${board.writer}(${user.acc_id})</p>
          <hr>
          <!-- Post Content -->
         <div id="content">내용<p class="lead">${board.content}</p></div>
          <hr>
          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header">댓글</h5>
            <div class="card-body">
              <form action="insertReply.do" method="post">
              <input name="replyer_idx" type="hidden" value="${user.acc_idx}">
			<input name="parent_idx" type="hidden" value="${board.seq}">
			<input name="repleyer" type="hidden" value="${user.acc_name}">
			<input name="rcnt" type="hidden" value="${board.rcnt}">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="form-group">
                  <textarea class="form-control" rows="3" style="resize: none;"name="reply_text">${reply.reply_text}</textarea>
                </div>
                <button type="submit" class="btn btn-primary">등록</button>
              </form>
            </div>
          </div>

          <!-- Single Comment -->
          <c:forEach items="${replylist}" var="reply">
          <div class="media mb-4">
            <div class="media-body">
              <h5 class="mt-0">${reply.repleyer}</h5>
              ${reply.reply_text}
              <fmt:formatDate value="${reply.reply_regdate}" pattern="yy-MM-dd HH:mm"/>
              <c:choose>
				<c:when test="${reply.replyer_idx == user.acc_idx}">
					<a href="getReply.do?idx=${reply.idx}&parent_idx=${reply.parent_idx}">✎</a>
					<a href="deleteReply.do?idx=${reply.idx}&category_idx=${board.category_idx}&parent_idx=${reply.parent_idx}">✖</a>
				</c:when>
			</c:choose>
            </div>
          </div>
		</c:forEach>
        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
        </div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /container -->
	<center>
 		<c:choose>
		<c:when test="${board.writer_idx == user.acc_idx}">
		
			<a href="updateBoard.jsp">수정</a>&nbsp;&nbsp;&nbsp;
			<a href="deleteBoard.do?seq=${board.seq }&acc_idx=${user.acc_idx}&category_idx=${board.category_idx}">삭제</a>&nbsp;&nbsp;&nbsp;
	
		</c:when>
		</c:choose>
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
