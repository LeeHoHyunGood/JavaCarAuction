<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <title>경매장 목록 게시판</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/modern-business.css" rel="stylesheet">

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
<%@include file="modal.jsp"%>
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">경매 목록
        <small>by
          <a href="auctionList.do?auc_type=0000">경매 목록가기</a>
        </small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.do">Home</a>
        </li>
        <li class="breadcrumb-item active">Hot Auction List</li>
        <li class="breadcrumb-item active" id="endConter"></li>
      </ol>
<form action="/searchAuction.do" method="post">
      <div class="row">

        <!-- Post Content Column -->
		<c:forEach items="${hotAuctionList}" var="hotAuction">
		<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="getAuction.do?auc_idx=${hotAuction.auc_idx}"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/upload/${hotAuction.img}" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="getAuction.do?auc_idx=${hotAuction.auc_idx}">제목 : ${hotAuction.auc_title}</a>
              </h4>
              <p class="card-text" style="color: black;">시작가 : ${hotAuction.auc_startvalue}<br>현재가 : ${hotAuction.auc_value}</p>
            </div>
          </div>
        </div>
        </c:forEach>
			
          <hr>
          
			<table class="table table-bordered">
				<tr>
					<td valign="bottom">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input name="auc_maker" type="hidden"
						id="last_select" /> <select name="selOne" id="selOne"
						class="form-control" onchange="doChange(this, 'selTwo', 'selOne')">
							<option value="default">---선택하세요---</option>
							<option value='1001'>현대</option>
							<option value='1002'>제네시스</option>
							<option value='1003'>기아</option>
							<option value='1004'>쉐보레/GM대우</option>
							<option value='1005'>르노삼성</option>
							<option value='1006'>쌍용</option>
							<option value='1007'>기타</option>
							<option value='1008'>BMW</option>
							<option value='1009'>벤츠</option>
							<option value='1010'>아우디</option>
							<option value='1011'>폭스바겐</option>
							<option value='1012'>포르쉐</option>
							<option value='1000'>-----</option>
							<option value='1014'>혼다</option>
							<option value='1015'>렉서스</option>
							<option value='1016'>닛산 </option>
							<option value='1017'>토요타</option>
							<option value='1018'>미쓰비시</option>
							<option value='1019'>인피니티</option>
							<option value='1020'>스즈키</option>
							<option value='1021'>스바루</option>
							<option value='1022'>다이하쓰</option>
							<option value='1000'>-----</option>
							<option value='1024'>크라이슬러</option>
							<option value='1025'>포드 </option>
							<option value='1026'>링컨</option>
							<option value='1027'>캐딜락</option>
							<option value='1028'>시보레</option>
							<option value='1029'>닷지</option>
							<option value='1030'>허머</option>
							<option value='1031'>지프</option>
							<option value='1000'>-----</option>
							<option value='1033'>볼보</option>
							<option value='1034'>사브</option>
							<option value='1035'>-----</option>
							<option value='1036'>푸조</option>
							<option value='1037'>시트로엥</option>
							<option value='1000'>-----</option>
							<option value='1039'>재규어 </option>
							<option value='1040'>미니</option>
							<option value='1041'>랜드로버</option>
							<option value='1042'>벤틀리</option>
							<option value='1043'>로버</option>
							<option value='1000'>-----</option>
							<option value='1045'>피아트</option>
							<option value='1046'>애스턴마틴</option>
							<option value='1047'>람보르기니</option>
							<option value='1048'>마세라티</option>
							<option value='1049'>페라리</option>
							<option value='1050'>기타</option>
					</select></td>
					<td><input name="auc_model" type="hidden" id="last_select2" />
						<select name="selTwo" id="selTwo" class="form-control"
						onchange="doChange(this, 'selThree', 'selTwo')">
							<option value="default">---선택하세요---</option>
					</select></td>
					<td>
						<button class="btn btn-primary" id="auction1" type="submit">
							검색<i class="fa fa-check spaceLeft"></i>
						</button>
					</td>
				</tr>
			</table>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전체&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0001">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;경차&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0002">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소&준중형&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0003">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;중형차&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0004">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대형고급차&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0005">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;스포츠카&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0006">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RV&레저&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0007">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUV&지프&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="breadcrumb-item"><a href="auctionList.do?auc_type=0008">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;버스&화물&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			</ol>

			<c:forEach items="${auctionList }" var="auction">
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="getAuction.do?auc_idx=${auction.auc_idx}"><img
							class="card-img-top"
							src="${pageContext.request.contextPath}/resources/upload/${auction.img}"
							alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="getAuction.do?auc_idx=${auction.auc_idx}">제목 : ${auction.auc_title}</a>
							</h4>
							<p class="card-text" style="color: black;">시작가 : ${auction.auc_startvalue}<br>현재가 : ${auction.auc_value}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
      <!-- /.row -->
      </form>

		<!-- Pagination -->
		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${!empty auction.auc_type}">
					<li class="page-item"><a class="page-link" href="auctionList.do?auc_type=${auction.auc_type}&page=0"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
							class="sr-only">Previous</span>
					</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="searchAuction.do?auc_maker=${auction.auc_maker}&auc_model=${auction.auc_model}&page=0"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
							class="sr-only">Previous</span>
					</a></li>
				</c:otherwise>
			</c:choose>
			<c:forEach begin="${pageGo}" end="${pageCount}" var="index">
			<c:if test="${index <= pagebolak}">
				<c:choose>
					<c:when test="${!empty auction.auc_type}">
						<li class="page-item"><a class="page-link" href="auctionList.do?auc_type=${auction.auc_type}&page=${index}">${index+1}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="searchAuction.do?auc_maker=${auction.auc_maker}&auc_model=${auction.auc_model}&page=${index}">${index+1}</a></li>
					</c:otherwise>
				</c:choose>
			</c:if>
			</c:forEach>
			<c:choose>
				<c:when test="${!empty auction.auc_type}">
					<li class="page-item"><a class="page-link" href="auctionList.do?auc_type=${auction.auc_type}&page=${pageCount}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a></li>
					</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="searchAuction.do?auc_maker=${auction.auc_maker}&auc_model=${auction.auc_model}&page=${pageCount}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="resources/js/grayscale.min.js"></script>
<!-- Plugin JavaScript -->
<script src="resources/js/lightslider.js"></script>
<script src="resources/js/check.js"></script>
<script src="resources/js/select.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	setInterval("getAdvertising('')",1000);
});

	function getAdvertising() {
		var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
		$.ajax({
            type : 'POST',
			headers : {header : token},
			url : 'getAdvertising.do',
			data : { "auc_complete" : 2},
            beforeSend: function(xhr) {
            	xhr.setRequestHeader(header, token); 
            	},
            success : function(data) {
            	$("#endConter").html("서비스 시작후 "+data+"건 낙찰완료");
            }
            //전송실패에대한 핸들링은 고려하지 않음
        });
	}
</script>
  </body>
</html>
