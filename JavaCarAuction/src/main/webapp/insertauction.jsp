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
    <title>경매장 경매 신청</title>

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
      <h1 class="mt-4 mb-3">경매 신청
        <small>by
          <a href="auctionList.do?auc_type=0000">경매 목록가기</a>
        </small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.do">Home</a>
        </li>
      </ol>
	<form action="#" method="post" id="uploadForm">
      <div class="row">
        <!-- Post Content Column -->
        <div class="col-lg-8" id="attach">

          <!-- Preview Image -->
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner" id="preview2">
					<div class="carousel-item active" id="main">
						<img class="d-block w-100" src="resources/img/m_info.png">
					</div>
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
          <label class="waves-effect waves-teal btn-flat" for="uploadInputBox">사진첨부</label>
          <input id="uploadInputBox" style="display: none" type="file" name="filedata" multiple />
          <table class="table table-bordered">
          	<thead>
				<tr>
					<th scope="col">파일명</th>
					<th scope="col">파일크기</th>
					<th scope="col">삭제유무</th>
				</tr>
			</thead>
			<tbody id="preview">
			</tbody>
          </table>

          <hr>
			<blockquote class="blockquote">
            <footer class="blockquote-footer">판매차량
              <cite title="Source Title">정보 내용</cite>
            </footer>
          </blockquote>
          <!-- Post Content -->
                <textarea rows="10" cols="100" name="auc_content" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>

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
								<input type="checkbox" name="oa_option" value="6" onclick="return true;"> <a href="javascript:prdOption('6')">운전석에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="31" onclick="return true;"> <a href="javascript:prdOption('31')">동승석에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="94" onclick="return true;"> <a href="javascript:prdOption('94')">사이드에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="95" onclick="return true;"> <a href="javascript:prdOption('95')">커튼에어백</a><br />
	        		            	<input type="checkbox" name="oa_option" value="98" onclick="return true;"> <a href="javascript:prdOption('98')">액티브헤드레스트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="99" onclick="return true;"> <a href="javascript:prdOption('99')">ABS</a><br />
	        		            	<input type="checkbox" name="oa_option" value="102" onclick="return true;"> <a href="javascript:prdOption('102')">ECS</a><br />
	        		            	<input type="checkbox" name="oa_option" value="103" onclick="return true;"> <a href="javascript:prdOption('103')">LSD</a><br />
	        		            	<input type="checkbox" name="oa_option" value="104" onclick="return true;"> <a href="javascript:prdOption('104')">TCS</a><br />
	        		            	<input type="checkbox" name="oa_option" value="105" onclick="return true;"> <a href="javascript:prdOption('105')">VDC/ESP</a><br />
	        		            	<input type="checkbox" name="oa_option" value="106" onclick="return true;"> <a href="javascript:prdOption('106')">전,측면감지센서</a><br />
	        		            	<input type="checkbox" name="oa_option" value="107" onclick="return true;"> <a href="javascript:prdOption('107')">후방감지센서</a><br />
	        		            	<input type="checkbox" name="oa_option" value="108" onclick="return true;"> <a href="javascript:prdOption('108')">전방카메라</a><br />
	        		            	<input type="checkbox" name="oa_option" value="109" onclick="return true;"> <a href="javascript:prdOption('109')">후방카메라</a><br />
	        		            	<input type="checkbox" name="oa_option" value="110" onclick="return true;"> <a href="javascript:prdOption('110')">차선이탈경보장치</a><br />
	        		            	<input type="checkbox" name="oa_option" value="111" onclick="return true;"> <a href="javascript:prdOption('111')">ECM 룸미러</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="50" onclick="return true;"> <a href="javascript:prdOption('50')">무선잠금장치</a><br />
	        		            	<input type="checkbox" name="oa_option" value="112" onclick="return true;"> <a href="javascript:prdOption('112')">스마트키/키레스고</a><br />
	        		            	<input type="checkbox" name="oa_option" value="113" onclick="return true;"> <a href="javascript:prdOption('113')">엔진스타트버튼</a><br />
	        		            	<input type="checkbox" name="oa_option" value="114" onclick="return true;"> <a href="javascript:prdOption('114')">이모빌라이저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="115" onclick="return true;"> <a href="javascript:prdOption('115')">전자주차브레이크</a><br />
	        		            	<input type="checkbox" name="oa_option" value="116" onclick="return true;"> <a href="javascript:prdOption('116')">슈퍼비전계기판</a><br />
	        		            	<input type="checkbox" name="oa_option" value="117" onclick="return true;"> <a href="javascript:prdOption('117')">트립컴퓨터</a><br />
	        		            	<input type="checkbox" name="oa_option" value="118" onclick="return true;"> <a href="javascript:prdOption('118')">헤드업디스플레이</a><br />
	        		            	<input type="checkbox" name="oa_option" value="119" onclick="return true;"> <a href="javascript:prdOption('119')">나이트비전</a><br />
	        		            	<input type="checkbox" name="oa_option" value="120" onclick="return true;"> <a href="javascript:prdOption('120')">공기청정기</a><br />
	        		            	<input type="checkbox" name="oa_option" value="121" onclick="return true;"> <a href="javascript:prdOption('121')">전동햇빛가리개</a><br />
	        		            	<input type="checkbox" name="oa_option" value="122" onclick="return true;"> <a href="javascript:prdOption('122')">빗물감지와이퍼</a><br />
	        		            	<input type="checkbox" name="oa_option" value="123" onclick="return true;"> <a href="javascript:prdOption('123')">크루즈컨트롤</a><br />
	        		            	<input type="checkbox" name="oa_option" value="124" onclick="return true;"> <a href="javascript:prdOption('124')">전동트렁크</a><br />
	        		            	<input type="checkbox" name="oa_option" value="125" onclick="return true;"> <a href="javascript:prdOption('125')">오토라이트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="126" onclick="return true;"> <a href="javascript:prdOption('126')">타이어공기압경보</a><br />
	        		            	<input type="checkbox" name="oa_option" value="129" onclick="return true;"> <a href="javascript:prdOption('129')">핸즈프리</a><br />
	        		            	<input type="checkbox" name="oa_option" value="130" onclick="return true;"> <a href="javascript:prdOption('130')">블루투스</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="57" onclick="return true;"> <a href="javascript:prdOption('57')">내비게이션</a><br />
	        		            	<input type="checkbox" name="oa_option" value="127" onclick="return true;"> <a href="javascript:prdOption('127')">하이패스</a><br />
	        		            	<input type="checkbox" name="oa_option" value="128" onclick="return true;"> <a href="javascript:prdOption('128')">블랙박스</a><br />
	        		            	<input type="checkbox" name="oa_option" value="131" onclick="return true;"> <a href="javascript:prdOption('131')">CD 플레이어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="132" onclick="return true;"> <a href="javascript:prdOption('132')">CD 체인저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="133" onclick="return true;"> <a href="javascript:prdOption('133')">VCD/DVD</a><br />
	        		            	<input type="checkbox" name="oa_option" value="134" onclick="return true;"> <a href="javascript:prdOption('134')">DMB</a><br />
	        		            	<input type="checkbox" name="oa_option" value="135" onclick="return true;"> <a href="javascript:prdOption('135')">MP3</a><br />
	        		            	<input type="checkbox" name="oa_option" value="136" onclick="return true;"> <a href="javascript:prdOption('136')">AUX/USB</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="139" onclick="return true;"> <a href="javascript:prdOption('139')">가죽시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="140" onclick="return true;"> <a href="javascript:prdOption('140')">전동시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="141" onclick="return true;"> <a href="javascript:prdOption('141')">열선시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="142" onclick="return true;"> <a href="javascript:prdOption('142')">통풍시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="143" onclick="return true;"> <a href="javascript:prdOption('143')">메모리시트</a><br />
	        		            	<input type="checkbox" name="oa_option" value="144" onclick="return true;"> <a href="javascript:prdOption('144')">파워핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="145" onclick="return true;"> <a href="javascript:prdOption('145')">히팅핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="146" onclick="return true;"> <a href="javascript:prdOption('146')">리모컨핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="147" onclick="return true;"> <a href="javascript:prdOption('147')">가죽/우드핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="148" onclick="return true;"> <a href="javascript:prdOption('148')">속도감응형핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="149" onclick="return true;"> <a href="javascript:prdOption('149')">파워윈도우</a><br />
	        		            	<input type="checkbox" name="oa_option" value="150" onclick="return true;"> <a href="javascript:prdOption('150')">에어컨</a><br />
	        		            	<input type="checkbox" name="oa_option" value="151" onclick="return true;"> <a href="javascript:prdOption('151')">풀오토에어컨</a><br />
	        		            	<input type="checkbox" name="oa_option" value="152" onclick="return true;"> <a href="javascript:prdOption('152')">좌/우 독립에어컨</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="10" onclick="return true;"> <a href="javascript:prdOption('10')">알루미늄휠</a><br />
	        		            	<input type="checkbox" name="oa_option" value="70" onclick="return true;"> <a href="javascript:prdOption('70')">크롬휠</a><br />
	        		            	<input type="checkbox" name="oa_option" value="71" onclick="return true;"> <a href="javascript:prdOption('71')">광폭타이어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="72" onclick="return true;"> <a href="javascript:prdOption('72')">썬루프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="73" onclick="return true;"> <a href="javascript:prdOption('73')">파노라마 썬루프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="74" onclick="return true;"> <a href="javascript:prdOption('74')">루프캐리어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="75" onclick="return true;"> <a href="javascript:prdOption('75')">전동접이식미러</a><br />
	        		            	<input type="checkbox" name="oa_option" value="76" onclick="return true;"> <a href="javascript:prdOption('76')">사이드리피터</a><br />
	        		            	<input type="checkbox" name="oa_option" value="77" onclick="return true;"> <a href="javascript:prdOption('77')">제논/HID램프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="78" onclick="return true;"> <a href="javascript:prdOption('78')">어댑티브헤드램프</a><br />
	        		            	<input type="checkbox" name="oa_option" value="79" onclick="return true;"> <a href="javascript:prdOption('79')">헤드램프세척장치</a><br />
							</td>
							<td>
									<input type="checkbox" name="oa_option" value="11"  onclick="return true;"> <a href="javascript:prdOption('11')">흡기</a><br />
	        		            	<input type="checkbox" name="oa_option" value="80"  onclick="return true;"> <a href="javascript:prdOption('80')">배기</a><br />
	        		            	<input type="checkbox" name="oa_option" value="81"  onclick="return true;"> <a href="javascript:prdOption('81')">미션</a><br />
	        		            	<input type="checkbox" name="oa_option" value="82"  onclick="return true;"> <a href="javascript:prdOption('82')">핸들</a><br />
	        		            	<input type="checkbox" name="oa_option" value="83"  onclick="return true;"> <a href="javascript:prdOption('83')">계기판</a><br />
	        		            	<input type="checkbox" name="oa_option" value="84"  onclick="return true;"> <a href="javascript:prdOption('84')">ECU맵핑</a><br />
	        		            	<input type="checkbox" name="oa_option" value="85"  onclick="return true;"> <a href="javascript:prdOption('85')">터보차저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="86"  onclick="return true;"> <a href="javascript:prdOption('86')">슈퍼차저</a><br />
	        		            	<input type="checkbox" name="oa_option" value="91"  onclick="return true;"> <a href="javascript:prdOption('91')">다운스프링</a><br />
	        		            	<input type="checkbox" name="oa_option" value="92"  onclick="return true;"> <a href="javascript:prdOption('92')">일체형쇼바</a><br />
	        		            	<input type="checkbox" name="oa_option" value="154"  onclick="return true;"> <a href="javascript:prdOption('154')">N/A튜닝</a><br />
	        		            	<input type="checkbox" name="oa_option" value="155"  onclick="return true;"> <a href="javascript:prdOption('155')">오디오</a><br />
	        		            	<input type="checkbox" name="oa_option" value="159"  onclick="return true;"> <a href="javascript:prdOption('159')">브레이크</a><br />
	        		            	<input type="checkbox" name="oa_option" value="160"  onclick="return true;"> <a href="javascript:prdOption('160')">리어스포일러</a><br />
	        		            	<input type="checkbox" name="oa_option" value="161"  onclick="return true;"> <a href="javascript:prdOption('161')">휠/타이어</a><br />
	        		            	<input type="checkbox" name="oa_option" value="162"  onclick="return true;"> <a href="javascript:prdOption('162')">에어로파츠</a><br />
							</td>
						</tr>
					</tbody>
				</table>
			</div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

		<!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header" style="color: black;">제조사 / 모델</h5>
            <div class="card-body">
              <div class="input-group">
              	<input name="auc_maker" type="hidden" id="last_select" />
					<select name="selOne" id="selOne" class="form-control"
						onchange="doChange(this, 'selTwo', 'selOne')">
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
				</select>
				<input name="auc_model" type="hidden" id="last_select2"/>
				<select name="selTwo" id="selTwo" class="form-control" onchange="doChange(this, 'selThree', 'selTwo')">
					<option value="default">---선택하세요---</option>
				</select>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header" style="color: black;">게시판 제목</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">게시판 제목 :</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <input name="auc_title" class="form-control form-control-sm" type="text" placeholder="게시판 제목" id="inputSmall">
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
          <div class="card my-4">
            <h5 class="card-header" style="color: black;">차량 타입</h5>
            <div class="card-body">
              <label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0001">경차</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0002">소/준중형</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0003">중형차</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0004">대형고급차</label>
				<label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0005">스포츠카</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0006">RV/레저</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0007">SUV지프</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="form-check-label" style="color: black;"><input class="form-check-input" type="radio" name="auc_type" value="0008">버스/화물</label>&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header" style="color: black;">중요 정보</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li style="margin-top: 5px;">
                      <a href="#">연식 :</a>
                    </li>
                    <li style="margin-top: 10px;">
                      <a href="#">주행 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">변속 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">연료 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">연비 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">배기량 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">색상 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">압류저당 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">사고유무 :</a>
                    </li>
                    <li style="margin-top: 8px;">
                      <a href="#">차량번호 :</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <input name="auc_year" class="form-control form-control-sm" type="text" placeholder="연식 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_driving" class="form-control form-control-sm" type="text" placeholder="주행 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_shift" class="form-control form-control-sm" type="text" placeholder="변속 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_fuel" class="form-control form-control-sm" type="text" placeholder="연료 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_mileage" class="form-control form-control-sm" type="text" placeholder="연비 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_displacement" class="form-control form-control-sm" type="text" placeholder="배기량 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_color" class="form-control form-control-sm" type="text" placeholder="색상 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_accident" class="form-control form-control-sm" type="text" placeholder="압류저당 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_seizure" class="form-control form-control-sm" type="text" placeholder="사고유무 적으시오" id="inputSmall">
                    </li>
                    <li>
                      <input name="auc_carnumber" class="form-control form-control-sm" type="text" placeholder="차량번호 적으시오" id="inputSmall">
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
                      <a href="#">${user.acc_name}</a>
                      <input name="acc_idx" type="hidden" value="${user.acc_idx}" />
                      <input name="auc_writer" type="hidden" value="${user.acc_name}" />
                    </li>
                    <li>
                      <a href="#">${user.acc_hp}</a>
                    </li>
                    <li>
                      <a href="#">${user.acc_grade}</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header" style="color: black;">시작가</h5>
            <div class="card-body">
              <div class="input-group">
                <input name="auc_startvalue" type="text" class="form-control" placeholder="시작가금액.. (만단위">
                <button type="button" class="btn btn-primary" id="sendMessageButton">UpLoad!!</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
</form>
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
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/js/grayscale.min.js"></script>
<!-- Plugin JavaScript -->
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="resources/js/lightslider.js"></script>
<script src="resources/js/check.js"></script>
<script src="resources/js/insertauction.js"></script>
<script src="resources/js/select.js"></script>
<script type="text/javascript">
function prdOption(idx) {
	var url = "/option.jsp?idx="+idx;
	window.open(url,"prdOption","width=1300,height=800,scrollbars=yes,resizable=no");
}
</script>
  </body>
  
</html>
