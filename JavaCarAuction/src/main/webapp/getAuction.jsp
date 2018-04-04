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
    <title>경매장 게시물</title>

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
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">경매
        <small>by
          <a href="auctionList.do?auc_type=0000">경매 목록가기</a>
        </small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.do">Home</a>
        </li>
        <li class="breadcrumb-item active">${getAuction.auc_title}</li>
        <li class="breadcrumb-item active">${getAuction.auc_maker}</li>
        <li class="breadcrumb-item active">${getAuction.auc_model}</li>
        <li class="breadcrumb-item active" id="typeload"></li>
      </ol>

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Preview Image -->
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="resources/img/m_info.png">
					</div>
					<c:forEach items='${auctionImgList}' var = "auctionImg">
					<div class="carousel-item">
						<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/upload/${auctionImg.file_name}">
					</div>
					</c:forEach>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">이전</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">다음</span>
				</a>
			</div>
          <hr>

          <!-- Date/Time -->
          <h4>경매 남은 시간</h4>
          <p id=counter1></p>

          <hr>
			<blockquote class="blockquote">
            <footer class="blockquote-footer">판매차량
              <cite title="Source Title">정보 내용</cite>
            </footer>
          </blockquote>
          <!-- Post Content -->
          <p class="lead">${getAuction.auc_content}</p>

          <blockquote class="blockquote">
            <footer class="blockquote-footer">판매차량
              <cite title="Source Title">옵션 정보</cite>
            </footer>
          </blockquote>

          <hr>
				<table class="table table-bordered">
						<tr>
							<td valign="bottom"><img src="resources/img/vtitle_1.jpg" /></td>
									<td align="right"><a
										href="javascript:prdOption('')"><img
											src="resources/img/bnt_dic.jpg" /></a></td>
						</tr>
				</table>

				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">안전장치</th>
							<th scope="col">편의장치</th>
							<th scope="col">오디오/비디오</th>
							<th scope="col">내장장치</th>
							<th scope="col">외장장치</th>
							<th scope="col">튜닝옵션</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<input type="checkbox" name="oa_option" value="6" onclick="return false;"> <a href="javascript:prdOption('6')">운전석에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="31" onclick="return false;"> <a href="javascript:prdOption('31')">동승석에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="94" onclick="return false;"> <a href="javascript:prdOption('94')">사이드에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="95" onclick="return false;"> <a href="javascript:prdOption('95')">커튼에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="98" onclick="return false;"> <a href="javascript:prdOption('98')">액티브헤드레스트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="99" onclick="return false;"> <a href="javascript:prdOption('99')">ABS</a><br />
	        		            	<input type="checkbox" name="oa_option" value="102" onclick="return false;"> <a href="javascript:prdOption('102')">ECS</a><br />
	        		            	<input type="checkbox" name="oa_option" value="103" onclick="return false;"> <a href="javascript:prdOption('103')">LSD</a><br />
	        		            	<input type="checkbox" name="oa_option" value="104" onclick="return false;"> <a href="javascript:prdOption('104')">TCS</a><br />
	        		            	<input type="checkbox" name="oa_option" value="105" onclick="return false;"> <a href="javascript:prdOption('105')">VDC/ESP</a><br />
	        		            	<input type="checkbox" name="oa_option" value="106" onclick="return false;"> <a href="javascript:prdOption('106')">전,측면감지센서</a><br />
	        		            	<input type="checkbox" name="oa_option" value="107" onclick="return false;"> <a href="javascript:prdOption('107')">후방감지센서</a><br />
	        		            	<input type="checkbox" name="oa_option" value="108" onclick="return false;"> <a href="javascript:prdOption('108')">전방카메라</a><br />
	        		            	<input type="checkbox" name="oa_option" value="109" onclick="return false;"> <a href="javascript:prdOption('109')">후방카메라</a><br />
	        		            	<input type="checkbox" name="oa_option" value="110" onclick="return false;"> <a href="javascript:prdOption('110')">차선이탈경보장치</a><br />
	        		            	<input type="checkbox" name="oa_option" value="111" onclick="return false;"> <a href="javascript:prdOption('111')">ECM 룸미러</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="50" onclick="return false;"> <a href="javascript:prdOption('50')">무선잠금장치</a><br />
	        		            	<input type="checkbox" name="oa_option" value="112" onclick="return false;"> <a href="javascript:prdOption('112')">스마트키/키레스고</a><br />
	        		            	<input type="checkbox" name="oa_option" value="113" onclick="return false;"> <a href="javascript:prdOption('113')">엔진스타트버튼</a><br />
	        		            	<input type="checkbox" name="oa_option" value="114" onclick="return false;"> <a href="javascript:prdOption('114')">이모빌라이저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="115" onclick="return false;"> <a href="javascript:prdOption('115')">전자주차브레이크</a><br />
	        		            	<input type="checkbox" name="oa_option" value="116" onclick="return false;"> <a href="javascript:prdOption('116')">슈퍼비전계기판</a><br />
	        		            	<input type="checkbox" name="oa_option" value="117" onclick="return false;"> <a href="javascript:prdOption('117')">트립컴퓨터</a><br />
	        		            	<input type="checkbox" name="oa_option" value="118" onclick="return false;"> <a href="javascript:prdOption('118')">헤드업디스플레이</a><br />
	        		            	<input type="checkbox" name="oa_option" value="119" onclick="return false;"> <a href="javascript:prdOption('119')">나이트비전</a><br />
	        		            	<input type="checkbox" name="oa_option" value="120" onclick="return false;"> <a href="javascript:prdOption('120')">공기청정기</a><br />
	        		            	<input type="checkbox" name="oa_option" value="121" onclick="return false;"> <a href="javascript:prdOption('121')">전동햇빛가리개</a><br />
	        		            	<input type="checkbox" name="oa_option" value="122" onclick="return false;"> <a href="javascript:prdOption('122')">빗물감지와이퍼</a><br />
	        		            	<input type="checkbox" name="oa_option" value="123" onclick="return false;"> <a href="javascript:prdOption('123')">크루즈컨트롤</a><br />
	        		            	<input type="checkbox" name="oa_option" value="124" onclick="return false;"> <a href="javascript:prdOption('124')">전동트렁크</a><br />
	        		            	<input type="checkbox" name="oa_option" value="125" onclick="return false;"> <a href="javascript:prdOption('125')">오토라이트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="126" onclick="return false;"> <a href="javascript:prdOption('126')">타이어공기압경보</a><br />
	        		            	<input type="checkbox" name="oa_option" value="129" onclick="return false;"> <a href="javascript:prdOption('129')">핸즈프리</a><br />
	        		            	<input type="checkbox" name="oa_option" value="130" onclick="return false;"> <a href="javascript:prdOption('130')">블루투스</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="57" onclick="return false;"> <a href="javascript:prdOption('57')">내비게이션</a><br />
	        		            	<input type="checkbox" name="oa_option" value="127" onclick="return false;"> <a href="javascript:prdOption('127')">하이패스</a><br />
	        		            	<input type="checkbox" name="oa_option" value="128" onclick="return false;"> <a href="javascript:prdOption('128')">블랙박스</a><br />
	        		            	<input type="checkbox" name="oa_option" value="131" onclick="return false;"> <a href="javascript:prdOption('131')">CD 플레이어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="132" onclick="return false;"> <a href="javascript:prdOption('132')">CD 체인저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="133" onclick="return false;"> <a href="javascript:prdOption('133')">VCD/DVD</a><br />
	        		            	<input type="checkbox" name="oa_option" value="134" onclick="return false;"> <a href="javascript:prdOption('134')">DMB</a><br />
	        		            	<input type="checkbox" name="oa_option" value="135" onclick="return false;"> <a href="javascript:prdOption('135')">MP3</a><br />
	        		            	<input type="checkbox" name="oa_option" value="136" onclick="return false;"> <a href="javascript:prdOption('136')">AUX/USB</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="139" onclick="return false;"> <a href="javascript:prdOption('139')">가죽시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="140" onclick="return false;"> <a href="javascript:prdOption('140')">전동시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="141" onclick="return false;"> <a href="javascript:prdOption('141')">열선시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="142" onclick="return false;"> <a href="javascript:prdOption('142')">통풍시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="143" onclick="return false;"> <a href="javascript:prdOption('143')">메모리시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="144" onclick="return false;"> <a href="javascript:prdOption('144')">파워핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="145" onclick="return false;"> <a href="javascript:prdOption('145')">히팅핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="146" onclick="return false;"> <a href="javascript:prdOption('146')">리모컨핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="147" onclick="return false;"> <a href="javascript:prdOption('147')">가죽/우드핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="148" onclick="return false;"> <a href="javascript:prdOption('148')">속도감응형핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="149" onclick="return false;"> <a href="javascript:prdOption('149')">파워윈도우</a><br />
	        		            	<input type="checkbox" name="oa_option" value="150" onclick="return false;"> <a href="javascript:prdOption('150')">에어컨</a><br />
	        		            	<input type="checkbox" name="oa_option" value="151" onclick="return false;"> <a href="javascript:prdOption('151')">풀오토에어컨</a><br />
	        		            	<input type="checkbox" name="oa_option" value="152" onclick="return false;"> <a href="javascript:prdOption('152')">좌/우 독립에어컨</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="10" onclick="return false;"> <a href="javascript:prdOption('10')">알루미늄휠</a><br />
	        		            	<input type="checkbox" name="oa_option" value="70" onclick="return false;"> <a href="javascript:prdOption('70')">크롬휠</a><br />
	        		            	<input type="checkbox" name="oa_option" value="71" onclick="return false;"> <a href="javascript:prdOption('71')">광폭타이어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="72" onclick="return false;"> <a href="javascript:prdOption('72')">썬루프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="73" onclick="return false;"> <a href="javascript:prdOption('73')">파노라마 썬루프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="74" onclick="return false;"> <a href="javascript:prdOption('74')">루프캐리어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="75" onclick="return false;"> <a href="javascript:prdOption('75')">전동접이식미러</a><br />
	        		            	<input type="checkbox" name="oa_option" value="76" onclick="return false;"> <a href="javascript:prdOption('76')">사이드리피터</a><br />
	        		            	<input type="checkbox" name="oa_option" value="77" onclick="return false;"> <a href="javascript:prdOption('77')">제논/HID램프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="78" onclick="return false;"> <a href="javascript:prdOption('78')">어댑티브헤드램프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="79" onclick="return false;"> <a href="javascript:prdOption('79')">헤드램프세척장치</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="11"  onclick="return false;"> <a href="javascript:prdOption('11')">흡기</a><br />
	        		            	<input type="checkbox" name="oa_option" value="80"  onclick="return false;"> <a href="javascript:prdOption('80')">배기</a><br />
	        		            	<input type="checkbox" name="oa_option" value="81"  onclick="return false;"> <a href="javascript:prdOption('81')">미션</a><br />
	        		            	<input type="checkbox" name="oa_option" value="82"  onclick="return false;"> <a href="javascript:prdOption('82')">핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="83"  onclick="return false;"> <a href="javascript:prdOption('83')">계기판</a><br />
	        		            	<input type="checkbox" name="oa_option" value="84"  onclick="return false;"> <a href="javascript:prdOption('84')">ECU맵핑</a><br />
	        		            	<input type="checkbox" name="oa_option" value="85"  onclick="return false;"> <a href="javascript:prdOption('85')">터보차저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="86"  onclick="return false;"> <a href="javascript:prdOption('86')">슈퍼차저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="91"  onclick="return false;"> <a href="javascript:prdOption('91')">다운스프링</a><br />
	        		            	<input type="checkbox" name="oa_option" value="92"  onclick="return false;"> <a href="javascript:prdOption('92')">일체형쇼바</a><br />
	        		            	<input type="checkbox" name="oa_option" value="154"  onclick="return false;"> <a href="javascript:prdOption('154')">N/A튜닝</a><br />
	        		            	<input type="checkbox" name="oa_option" value="155"  onclick="return false;"> <a href="javascript:prdOption('155')">오디오</a><br />
	        		            	<input type="checkbox" name="oa_option" value="159"  onclick="return false;"> <a href="javascript:prdOption('159')">브레이크</a><br />
	        		            	<input type="checkbox" name="oa_option" value="160"  onclick="return false;"> <a href="javascript:prdOption('160')">리어스포일러</a><br />
	        		            	<input type="checkbox" name="oa_option" value="161"  onclick="return false;"> <a href="javascript:prdOption('161')">휠/타이어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="162"  onclick="return false;"> <a href="javascript:prdOption('162')">에어로파츠</a><br />
							</td>
						</tr>
					</tbody>
				</table>
			</div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header" style="color: black;">입찰</h5>
            <div class="card-body">
              <div class="input-group">
              	<form action="/auctionValue.do" method="post">
                <input name="auc_value" type="text" class="form-control" id="readOnlyInput" placeholder="입찰금액.. (만단위">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input name="acc_idx" id="userIdx" type="hidden" value="${user.acc_idx}" />
                <input name="auc_counter" type="hidden" value="${getAuction.auc_counter}" />
                <input name="auc_idx" type="hidden" value="${getAuction.auc_idx}" />
                 <div id="invalid" class="invalid-feedback">입찰액을 적으시오.</div>
                <span class="input-group-btn">
                  <button class="btn btn-secondary" id="auctionGO" disabled="disabled" type="submit">Go!</button>
                </span>
                </form>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header" style="color: black;">입찰 정보</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">입찰한 횟수 :</a>
                    </li>
                    <li>
                      <a href="#">시작가 :</a>
                    </li>
                    <li>
                      <a href="#">현재가 :</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#" id="auctionCount">${getAuction.auc_counter} 회</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_startvalue} 만</a>
                    </li>
                    <li>
                      <a href="#" id="auctionValueALL">${getAuction.auc_value} 만</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header" style="color: black;">중요 정보</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">연식 :</a>
                    </li>
                    <li>
                      <a href="#">주행 :</a>
                    </li>
                    <li>
                      <a href="#">변속 :</a>
                    </li>
                    <li>
                      <a href="#">연료 :</a>
                    </li>
                    <li>
                      <a href="#">연비 :</a>
                    </li>
                    <li>
                      <a href="#">배기량 :</a>
                    </li>
                    <li>
                      <a href="#">색상 :</a>
                    </li>
                    <li>
                      <a href="#">압류저당 :</a>
                    </li>
                    <li>
                      <a href="#">사고유무 :</a>
                    </li>
                    <li>
                      <a href="#">차량번호 :</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">${getAuction.auc_year}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_driving}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_shift}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_fuel}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_mileage}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_displacement}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_color}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_accident}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_seizure}</a>
                    </li>
                    <li>
                      <a href="#">${getAuction.auc_carnumber}</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

			<div class="card my-4">
            <h5 class="card-header" style="color: black;">판매자 정보</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">판매자 이름 :</a>
                    </li>
                    <li>
                      <a href="#">전화번호 :</a>
                    </li>
                    <li>
                      <a href="#">회원등급 :</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="sendFacingPage.do?acc_idx=${auctionUser.acc_idx}&sender_acc_idx=${user.acc_idx}">${auctionUser.acc_name}</a>
                    </li>
                    <li>
                      <a href="#">${auctionUser.acc_hp}</a>
                    </li>
                    <li>
                      <a href="#">${auctionUser.acc_grade}</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!-- /.row -->

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
<script src="resources/js/grayscale.min.js"></script>
<!-- Plugin JavaScript -->
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="resources/js/lightslider.js"></script>
<script src="resources/js/check.js"></script>
<script src="resources/js/insertauction.js"></script>
	<script type="text/javascript">
	var time = 500;
	var onceTimer;
	$(document).ready(function() {
		var type = '${getAuction.auc_type}';
		 
		if (type == 0001) {$("#typeload").html("경차");
		} else if (type == 0002) {$("#typeload").html("소/준중형");
		} else if (type == 0003) {$("#typeload").html("중형차");
		} else if (type == 0004) {$("#typeload").html("대형고급차");
		} else if (type == 0005) {$("#typeload").html("스포츠카");
		} else if (type == 0006) {$("#typeload").html("RV/레저");
		} else if (type == 0007) {$("#typeload").html("SUV지프");
		} else if (type == 0008) {$("#typeload").html("버스/화물");
		} else {$("#typeload").html("오류")}
		
		<c:forEach items='${auctionOptionList}' var = "auctionOption">
			$("input:checkbox[name='oa_option']:checkbox[value='${auctionOption.oa_option }']").prop('checked', true);
		</c:forEach>
		
// 		$('#readOnlyInput').on(
// 				'change', function() {
// 					var token = $("meta[name='_csrf']").attr("content");
// 	            	var header = $("meta[name='_csrf_header']").attr("content");
// 					$.ajax({
// 						type : 'POST',
// 						headers : {header : token},
// 						url : '/userMoney.do',
// 						data : { "acc_money" : $('#readOnlyInput').val(), "acc_idx" : $('#userIdx').val()},
// 						beforeSend: function(xhr) {
// 	                    	xhr.setRequestHeader(header, token); 
// 	                    	},
// 						success : function(data) {
// 								if (data > $('#readOnlyInput').val() && $('#readOnlyInput').val() > $('#auctionValueALL').val()) {
// 									$("#readOnlyInput").prop("class", "form-control is-valid");
// 									$("#invalid").prop("class", "valid-feedback");
// 									$("#invalid").html("입찰 가능합니다");
// 									$("#auctionGO").prop("disabled", false);
// 								} else {
// 									$("#readOnlyInput").prop("class", "form-control is-invalid");
// 									$("#invalid").prop("class", "invalid-feedback");
// 									$("#invalid").html("입찰 불가합니다");
// 									$("#auctionGO").prop("disabled", true);
// 								}
// 						}
							
// 					}); //end ajax    
// 				}); //end on
		
		onceTimer = setInterval("getTime('${yearTime}','${ddayTime}','${dayTime}','${timeTime}','${minTime}','${secTime}')",time);
	});
	
	function getTime(yearTime,ddayTime,dayTime,timeTime,minTime,secTime) {
		now = new Date();
// 		var hourstime = 0;
		var hourstime = dayTime - now.getDate();
// 		dday = new Date(2);
		dday = new Date(yearTime,ddayTime,dayTime,timeTime,minTime,secTime);
		// 원하는 날짜, 시간 정확하게 초단위까지 기입.
		days = (dday - now) / 1000 / 60 / 60 / 24; 
		daysRound = Math.floor(days); 
		hours = (dday - now) / 1000 / 60 / 60 - (24 * daysRound); 
		hoursRound = Math.floor(hours); 
		minutes = (dday - now) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound); 
		minutesRound = Math.floor(minutes); 
		seconds = (dday - now) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound); 
		secondsRound = Math.round(seconds); 
		
		if (hourstime == 0 && hoursRound == 0 && minutesRound == 0 && secondsRound == 0) {
			alert("끝 시작 낙찰 분류");
			clearInterval(onceTimer);
		}

		if (hourstime >= 1) {
			hoursRound = hourstime + "일 남았습니다";
			document.getElementById("counter1").innerHTML = hoursRound; 
		} else {
			hoursRound = hoursRound + "시간  " + minutesRound + "분  " + secondsRound + "초 남았습니다";
			document.getElementById("counter1").innerHTML = hoursRound; 
		}
		var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
		$.ajax({
            type : 'POST',
			headers : {header : token},
			url : 'getAuctionTime.do',
			data : { "auc_idx" : '${getAuction.auc_idx}', "acc_idx" : $('#userIdx').val()},
            beforeSend: function(xhr) {
            	xhr.setRequestHeader(header, token); 
            	},
            success : function(data) {
            	document.getElementById("auctionCount").innerHTML = data.auc_counter; 
        		document.getElementById("auctionValueALL").innerHTML = data.auc_value + "만";
        		
        		if (data.auc_value < $('#readOnlyInput').val() && data.auc_startvalue > $('#readOnlyInput').val()) {
					$("#readOnlyInput").prop("class", "form-control is-valid");
					$("#invalid").prop("class", "valid-feedback");
					$("#invalid").html("입찰 가능합니다");
					$("#auctionGO").prop("disabled", false);
				} else {
					$("#readOnlyInput").prop("class", "form-control is-invalid");
					$("#invalid").prop("class", "invalid-feedback");
					$("#invalid").html("입찰 불가합니다");
					$("#auctionGO").prop("disabled", true);
				}
            }
            //전송실패에대한 핸들링은 고려하지 않음
        });
		}
	function prdOption(idx) {
		var url = "/option.jsp?idx="+idx;
		window.open(url,"prdOption","width=1300,height=800,scrollbars=yes,resizable=no");
	}
	</script>
  </body>
</html>
