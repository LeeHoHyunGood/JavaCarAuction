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
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<link rel="stylesheet" href="resources/css/lightslider.css" />
<link href='https://fonts.googleapis.com/css?family=Cabin:700'
	rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link href="resources/css/grayscale.min.css" rel="stylesheet">

  </head>

  <body>
    <!-- Page Content -->

<table class="table table-bordered" cellpadding="0" cellspacing="0" border="0" width="980">
	<tr>
		<td>
			<table class="table table-bordered" cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td style="padding:15px">
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td width="242">
									<table width="100%" height="162" cellpadding="0" cellspacing="0" border="0" style="border:1px solid #cccccc">
										<tr>
											<td>
												<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border:3px solid #ffffff">
													<tr>
														<td><div style='width:242px;height:162px;border:0px solid #C9C9C9;color:#C9C9C9;background:#FFF;text-align:center;cursor:pointer;line-height:162px;'>No Image</div></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
								<td valign="top" style="padding-left:10px">
									<table class="table table-bordered" cellpadding="0" cellspacing="0" border="0" width="100%" height="170" style="background:#f0f0f0; border:4px solid #d9d9d9">
										<tr>
											<td valign="top">
												<table class="table table-bordered" cellpadding="0" cellspacing="0" border="0" width="100%" height="40">
													<tr>
														<td><span style="color:#be0016; font-size:14px; padding-left:10px"><strong id="optionTitle">엔진스타트버튼</strong></span></td>
													</tr>
												</table>
												<table class="table table-bordered" cellpadding="0" cellspacing="0" border="0" width="100%" height="40">
													<tr>
														<td style="padding:10px; color: black;" id="optionContent">자동차 키를 키박스에 넣고 돌리는 기존 방식과 달리, 엔진 시동 버튼을 누르면 시동이 걸리는 시스템</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>

						<table class="table table-bordered" cellpadding="0" cellspacing="0" border="0" height="30">
							<tr>
								<td></td>
							</tr>
						</table>

						<table class="table table-bordered" class="table table-bordered" border="0" cellpadding="0" cellspacing="0">
						  <tr>
						    <td><img src="resources/img/vts_1.jpg" width="164" height="38" /></td>
						    <td><img src="resources/img/vts_2.jpg" width="164" height="38" /></td>
						    <td><img src="resources/img/vts_3.jpg" width="164" height="38" /></td>
						    <td><img src="resources/img/vts_4.jpg" width="164" height="38" /></td>
						    <td><img src="resources/img/vts_5.jpg" width="164" height="38" /></td>
						    <td><img src="resources/img/vts_6.jpg" width="160" height="38" /></td>
						  </tr>
						  <tr>
						    <td colspan="6">&nbsp;</td>
						  </tr>
						  <tr>
														    <td height="182" valign="top" style="padding-left:15px">
						    							    	<input type="checkbox" name="options[]" value="6"  onclick="return false;"> <a href="/option.jsp?idx=6">운전석에어백</a><br />
						  								    	<input type="checkbox" name="options[]" value="31"  onclick="return false;"> <a href="/option.jsp?idx=31">동승석에어백</a><br />
						  								    	<input type="checkbox" name="options[]" value="94"  onclick="return false;"> <a href="/option.jsp?idx=94">사이드에어백</a><br />
						  								    	<input type="checkbox" name="options[]" value="95"  onclick="return false;"> <a href="/option.jsp?idx=95">커튼에어백</a><br />
						  								    	<input type="checkbox" name="options[]" value="98"  onclick="return false;"> <a href="/option.jsp?idx=98">액티브헤드레스트</a><br />
						  								    	<input type="checkbox" name="options[]" value="99"  onclick="return false;"> <a href="/option.jspidx=99">ABS</a><br />
						  								    	<input type="checkbox" name="options[]" value="102"  onclick="return false;"> <a href="/option.jsp?idx=102">ECS</a><br />
						  								    	<input type="checkbox" name="options[]" value="103"  onclick="return false;"> <a href="/option.jsp?idx=103">LSD</a><br />
						  								    	<input type="checkbox" name="options[]" value="104"  onclick="return false;"> <a href="/option.jsp?idx=104">TCS</a><br />
						  								    	<input type="checkbox" name="options[]" value="105"  onclick="return false;"> <a href="/option.jsp?idx=105">VDC/ESP</a><br />
						  								    	<input type="checkbox" name="options[]" value="106"  onclick="return false;"> <a href="/option.jsp?idx=106">전,측면감지센서</a><br />
						  								    	<input type="checkbox" name="options[]" value="107"  onclick="return false;"> <a href="/option.jsp?idx=107">후방감지센서</a><br />
						  								    	<input type="checkbox" name="options[]" value="108"  onclick="return false;"> <a href="/option.jsp?idx=108">전방카메라</a><br />
						  								    	<input type="checkbox" name="options[]" value="109"  onclick="return false;"> <a href="/option.jsp?idx=109">후방카메라</a><br />
						  								    	<input type="checkbox" name="options[]" value="110"  onclick="return false;"> <a href="/option.jsp?idx=110">차선이탈경보장치</a><br />
						  								    	<input type="checkbox" name="options[]" value="111"  onclick="return false;"> <a href="/option.jsp?idx=111">ECM 룸미러</a><br />
						  								   	</td>
														    <td height="182" valign="top" style="padding-left:15px">
						    							    	<input type="checkbox" name="options[]" value="50"  onclick="return false;"> <a href="/option.jsp?idx=50">무선잠금장치</a><br />
						  								    	<input type="checkbox" name="options[]" value="112"  onclick="return false;"> <a href="/option.jsp?idx=112">스마트키/키레스고</a><br />
						  								    	<input type="checkbox" name="options[]" value="113"  onclick="return false;"> <a href="/option.jsp?idx=113"><strong>엔진스타트버튼</strong></a><br />
						  								    	<input type="checkbox" name="options[]" value="114"  onclick="return false;"> <a href="/option.jsp?idx=114">이모빌라이저</a><br />
						  								    	<input type="checkbox" name="options[]" value="115"  onclick="return false;"> <a href="/option.jsp?idx=115">전자주차브레이크</a><br />
						  								    	<input type="checkbox" name="options[]" value="116"  onclick="return false;"> <a href="/option.jsp?idx=116">슈퍼비전계기판</a><br />
						  								    	<input type="checkbox" name="options[]" value="117"  onclick="return false;"> <a href="/option.jsp?idx=117">트립컴퓨터</a><br />
						  								    	<input type="checkbox" name="options[]" value="118"  onclick="return false;"> <a href="/option.jsp?idx=118">헤드업디스플레이</a><br />
						  								    	<input type="checkbox" name="options[]" value="119"  onclick="return false;"> <a href="/option.jsp?idx=119">나이트비전</a><br />
						  								    	<input type="checkbox" name="options[]" value="120"  onclick="return false;"> <a href="/option.jsp?idx=120">공기청정기</a><br />
						  								    	<input type="checkbox" name="options[]" value="121"  onclick="return false;"> <a href="/option.jsp?idx=121">전동햇빛가리개</a><br />
						  								    	<input type="checkbox" name="options[]" value="122"  onclick="return false;"> <a href="/option.jsp?idx=122">빗물감지와이퍼</a><br />
						  								    	<input type="checkbox" name="options[]" value="123"  onclick="return false;"> <a href="/option.jsp?idx=123">크루즈컨트롤</a><br />
						  								    	<input type="checkbox" name="options[]" value="124"  onclick="return false;"> <a href="/option.jsp?idx=124">전동트렁크</a><br />
						  								    	<input type="checkbox" name="options[]" value="125"  onclick="return false;"> <a href="/option.jsp?idx=125">오토라이트</a><br />
						  								    	<input type="checkbox" name="options[]" value="126"  onclick="return false;"> <a href="/option.jsp?idx=126">타이어공기압경보</a><br />
						  								    	<input type="checkbox" name="options[]" value="129"  onclick="return false;"> <a href="/option.jsp?idx=129">핸즈프리</a><br />
						  								    	<input type="checkbox" name="options[]" value="130"  onclick="return false;"> <a href="/option.jsp?idx=130">블루투스</a><br />
						  								   	</td>
														    <td height="182" valign="top" style="padding-left:15px">
						    							    	<input type="checkbox" name="options[]" value="57"  onclick="return false;"> <a href="/option.jsp?idx=57">내비게이션</a><br />
						  								    	<input type="checkbox" name="options[]" value="127"  onclick="return false;"> <a href="/option.jsp?idx=127">하이패스</a><br />
						  								    	<input type="checkbox" name="options[]" value="128"  onclick="return false;"> <a href="/option.jsp?idx=128">블랙박스</a><br />
						  								    	<input type="checkbox" name="options[]" value="131"  onclick="return false;"> <a href="/option.jsp?idx=131">CD 플레이어</a><br />
						  								    	<input type="checkbox" name="options[]" value="132"  onclick="return false;"> <a href="/option.jsp?idx=132">CD 체인저</a><br />
						  								    	<input type="checkbox" name="options[]" value="133"  onclick="return false;"> <a href="/option.jsp?idx=133">VCD/DVD</a><br />
						  								    	<input type="checkbox" name="options[]" value="134"  onclick="return false;"> <a href="/option.jsp?idx=134">DMB</a><br />
						  								    	<input type="checkbox" name="options[]" value="135"  onclick="return false;"> <a href="/option.jsp?idx=135">MP3</a><br />
						  								    	<input type="checkbox" name="options[]" value="136"  onclick="return false;"> <a href="/option.jsp?idx=136">AUX/USB</a><br />
						  								   	</td>
														    <td height="182" valign="top" style="padding-left:15px">
						    							    	<input type="checkbox" name="options[]" value="139"  onclick="return false;"> <a href="/option.jsp?idx=139">가죽시트</a><br />
						  								    	<input type="checkbox" name="options[]" value="140"  onclick="return false;"> <a href="/option.jsp?idx=140">전동시트</a><br />
						  								    	<input type="checkbox" name="options[]" value="141"  onclick="return false;"> <a href="/option.jsp?idx=141">열선시트</a><br />
						  								    	<input type="checkbox" name="options[]" value="142"  onclick="return false;"> <a href="/option.jsp?idx=142">통풍시트</a><br />
						  								    	<input type="checkbox" name="options[]" value="143"  onclick="return false;"> <a href="/option.jsp?idx=143">메모리시트</a><br />
						  								    	<input type="checkbox" name="options[]" value="144"  onclick="return false;"> <a href="/option.jsp?idx=144">파워핸들</a><br />
						  								    	<input type="checkbox" name="options[]" value="145"  onclick="return false;"> <a href="/option.jsp?idx=145">히팅핸들</a><br />
						  								    	<input type="checkbox" name="options[]" value="146"  onclick="return false;"> <a href="/option.jsp?idx=146">리모컨핸들</a><br />
						  								    	<input type="checkbox" name="options[]" value="147"  onclick="return false;"> <a href="/option.jsp?idx=147">가죽/우드핸들</a><br />
						  								    	<input type="checkbox" name="options[]" value="148"  onclick="return false;"> <a href="/option.jsp?idx=148">속도감응형핸들</a><br />
						  								    	<input type="checkbox" name="options[]" value="149"  onclick="return false;"> <a href="/option.jsp?idx=149">파워윈도우</a><br />
						  								    	<input type="checkbox" name="options[]" value="150"  onclick="return false;"> <a href="/option.jsp?idx=150">에어컨</a><br />
						  								    	<input type="checkbox" name="options[]" value="151"  onclick="return false;"> <a href="/option.jsp?idx=151">풀오토에어컨</a><br />
						  								    	<input type="checkbox" name="options[]" value="152"  onclick="return false;"> <a href="/option.jsp?idx=152">좌/우 독립에어컨</a><br />
						  								   	</td>
														    <td height="182" valign="top" style="padding-left:15px">
						    							    	<input type="checkbox" name="options[]" value="10"  onclick="return false;"> <a href="/option.jsp?idx=10">알루미늄휠</a><br />
						  								    	<input type="checkbox" name="options[]" value="70"  onclick="return false;"> <a href="/option.jsp?idx=70">크롬휠</a><br />
						  								    	<input type="checkbox" name="options[]" value="71"  onclick="return false;"> <a href="/option.jsp?idx=71">광폭타이어</a><br />
						  								    	<input type="checkbox" name="options[]" value="72"  onclick="return false;"> <a href="/option.jsp?idx=72">썬루프</a><br />
						  								    	<input type="checkbox" name="options[]" value="73"  onclick="return false;"> <a href="/option.jsp?idx=73">파노라마 썬루프</a><br />
						  								    	<input type="checkbox" name="options[]" value="74"  onclick="return false;"> <a href="/option.jsp?idx=74">루프캐리어</a><br />
						  								    	<input type="checkbox" name="options[]" value="75"  onclick="return false;"> <a href="/option.jsp?idx=75">전동접이식미러</a><br />
						  								    	<input type="checkbox" name="options[]" value="76"  onclick="return false;"> <a href="/option.jsp?idx=76">사이드리피터</a><br />
						  								    	<input type="checkbox" name="options[]" value="77"  onclick="return false;"> <a href="/option.jsp?idx=77">제논/HID램프</a><br />
						  								    	<input type="checkbox" name="options[]" value="78"  onclick="return false;"> <a href="/option.jsp?idx=78">어댑티브헤드램프</a><br />
						  								    	<input type="checkbox" name="options[]" value="79"  onclick="return false;"> <a href="/option.jsp?idx=79">헤드램프세척장치</a><br />
						  								   	</td>
														    <td height="182" valign="top" style="padding-left:15px">
						    							    	<input type="checkbox" name="options[]" value="11"  onclick="return false;"> <a href="/option.jsp?idx=11">흡기</a><br />
						  								    	<input type="checkbox" name="options[]" value="80"  onclick="return false;"> <a href="/option.jsp?idx=80">배기</a><br />
						  								    	<input type="checkbox" name="options[]" value="81"  onclick="return false;"> <a href="/option.jsp?idx=81">미션</a><br />
						  								    	<input type="checkbox" name="options[]" value="82"  onclick="return false;"> <a href="/option.jsp?idx=82">핸들</a><br />
						  								    	<input type="checkbox" name="options[]" value="83"  onclick="return false;"> <a href="/option.jsp?idx=83">계기판</a><br />
						  								    	<input type="checkbox" name="options[]" value="84"  onclick="return false;"> <a href="/option.jsp?idx=84">ECU맵핑</a><br />
						  								    	<input type="checkbox" name="options[]" value="85"  onclick="return false;"> <a href="/option.jsp?idx=85">터보차저</a><br />
						  								    	<input type="checkbox" name="options[]" value="86"  onclick="return false;"> <a href="/option.jsp?idx=86">슈퍼차저</a><br />
						  								    	<input type="checkbox" name="options[]" value="91"  onclick="return false;"> <a href="/option.jsp?idx=91">다운스프링</a><br />
						  								    	<input type="checkbox" name="options[]" value="92"  onclick="return false;"> <a href="/option.jsp?idx=92">일체형쇼바</a><br />
						  								    	<input type="checkbox" name="options[]" value="154"  onclick="return false;"> <a href="/option.jsp?idx=154">N/A튜닝</a><br />
						  								    	<input type="checkbox" name="options[]" value="155"  onclick="return false;"> <a href="/option.jsp?idx=155">오디오</a><br />
						  								    	<input type="checkbox" name="options[]" value="159"  onclick="return false;"> <a href="/option.jsp?idx=159">브레이크</a><br />
						  								    	<input type="checkbox" name="options[]" value="160"  onclick="return false;"> <a href="/option.jsp?idx=160">리어스포일러</a><br />
						  								    	<input type="checkbox" name="options[]" value="161"  onclick="return false;"> <a href="/option.jsp?idx=161">휠/타이어</a><br />
						  								    	<input type="checkbox" name="options[]" value="162"  onclick="return false;"> <a href="/option.jsp?idx=162">에어로파츠</a><br />
						  								   	</td>
														  </tr>
						</table>

					</td>
				</tr>
			</table>

		</td>
	</tr>
</table>
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
<script src="resources/js/option.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var idx = '${param.idx}';
	addOption(idx);
});

function addOption(idx){
    if (idx == 6) {
    $("#optionTitle").html("엔진스타트버튼");
    $("#optionContent").html("자동차 키를 키박스에 넣고 돌리는 기존 방식과 달리, 엔진 시동 버튼을 누르면 시동이 걸리는 시스템");
    } else if (idx == 31) {
      $("#optionTitle").html("동승석에어백");
      $("#optionContent").html("전방에 충격이 가해질 시에 에어백 감지 시스템이 이를 사고로 판단, 조수석의 안전을 위하여 순간적으로 가스 백을 충전해 팽창시키는데 이를운전석 에어백이라 한다. 보통의 경우 글로브박스 윗부분에 내장");
    } else if (idx == 94) {
      $("#optionTitle").html("사이드에어백");
      $("#optionContent").html("측면에 충격이 가해질 시, 측면부 에어백 감지 시스템이 이를 사고로 판단, 충돌하는 부분의 탑승객의 안전을 위하여 순각적으로 "
    		 + "가스백을 충전해 팽창시키는데 이를 측면 에어백이라 한다. 보통의 경우 각 필러 부분에 내장되어 있으며, 고급차에 옵션으로"
    		  +"선택 가능");
    } else if (idx == 95) {
      $("#optionTitle").html("커튼에어백");
      $("#optionContent").html("측면 및 천정에 충격이 가해질 시,에어백 센서가 사고로 판단, 모든 탑승객의 안전을 위하여 순간적으로 가스백을 충전해 팽창시키는데"
    		  +"이를 커튼에어백이라 한다. 유리조각으로 인한 상해를 막을 수 있도록 커튼 형태로 작동한다.");
    } else if (idx == 98) {
        $("#optionTitle").html("액티브헤드레스트");
        $("#optionContent").html("후면 충돌 시 자동적으로 헤드레스트가 앞으로 향하기 때문에 승객의 목 보호 능력이 탁월한 시스템");
      }
    else if (idx == 99) {
        $("#optionTitle").html("ABS");
        $("#optionContent").html("차량의 속도나 노면상태를 파악해 바퀴의 잠김과 풀림을 1초에 수회 반복하여 최적의 제동조건을 만드는 것으로 대부분의 도로에서 제동거리가 5~30%정도 짧아지는 효과가 있다.");
      }
    else if (idx == 102) {
        $("#optionTitle").html("ECS");
        $("#optionContent").html("노면 상태와 운전 조건에 따라 차체 높이를 변화시켜, 주행 안전성과 승차감을 동시에 확보하기 위한 장치");
      }
    else if (idx == 103) {
        $("#optionTitle").html("LSD");
        $("#optionContent").html("미끄러운 길 또는 진흙 길 등에서 주행할 때 한쪽 바퀴가 헛돌며 빠져나오지 못할 경우, 쉽게 빠져나올 수 있도록 도와주는 장치");
      }
    else if (idx == 104) {
        $("#optionTitle").html("TCS");
        $("#optionContent").html("눈길, 빗길 따위의 미끄러지기 쉬운 노면에서 차량을 출발하거나 가속할 때 과잉의 구동력이 발생하여 타이어가 공회전하지 않도록 차량의 구동력을 제어하는 시스템");
      }
    else if (idx == 105) {
        $("#optionTitle").html("VDC/ESP");
        $("#optionContent").html("운전자가 별도로 제동을 가하지 않더라도, 차량 스스로 미끄럼을 감지해 각각의 바퀴 브레이크 압력과 엔진 출력을 제어하는 장치. TCS, ABS, EBD, YMC 등의 장치들이 모두 포함되며, 특히 언더/오버스티어가 발생하는 것을 방지하여 사고를 미연에 방지하는 시스템");
      }
    else if (idx == 106) {
        $("#optionTitle").html("전,측면감지센서");
        $("#optionContent").html("주차 보조 시스템으로 앞범퍼 또는 측면에 장착된 센서를 통해 후진 시 뒤 쪽에 위치한 장애물과의 거리를 감지하여 음성또는 LED등의 신호로 운전자에게 전달하는 장치.");
      }
    else if (idx == 107) {
        $("#optionTitle").html("후방감지센서");
        $("#optionContent").html("주차 보조 시스템으로 뒤쪽 범퍼에 장착된 센서를 통해 후진 시 뒤 쪽에 위치한 장애물과의 거리를 감지하여 음성또는 LED등의 신호로 운전자에게 전달하는 장치.");
      }
    else if (idx == 108) {
        $("#optionTitle").html("전방카메라");
        $("#optionContent").html("차량의 전방 그릴부분에 장착되어지며 교차로 집입시 좌우를 실내에 있는 모니터로 확인할 수 있는 장치치.");
      }
    else if (idx == 109) {
        $("#optionTitle").html("후방카메라");
        $("#optionContent").html("차량의 후방 트렁크또는 번호판부분에 장착되어지며 주차시 뒤쪽의 장애물 등을 실내에 있는 모니터로 확인할 수 있는 장치.");
      }
    else if (idx == 110) {
        $("#optionTitle").html("차선이탈경보장치");
        $("#optionContent").html("졸음이나 부주의한 운전으로 인해 차량이 차선을 이탈할 경우 이를 감지해 운전자에게 경보를 주는 안전 시스템.");
      }
    else if (idx == 111) {
        $("#optionTitle").html("ECM 룸미러");
        $("#optionContent").html("룸미러에 들어오는 뒤쪽 차량의 빛을 광센서를 통해 자동으로 감지해 거울의 반사율을 낮추어 운전자의 눈부심 현상을 없애 주는 장치.");
      }
    else if (idx == 50) {
        $("#optionTitle").html("무선잠금장치");
        $("#optionContent").html("리모컨을 이용해 원거리에서 차량의 문과 트렁크를 열고, 닫을 수있는 장치이다.");
      }
    else if (idx == 112) {
        $("#optionTitle").html("스마트키/키레스고");
        $("#optionContent").html("차량과 운전자가 소지하고 있는 시동키가 전자적 신호를 주고 받아 자동으로 도어가 열리고 키를 꽂지 않고도 시동을 걸 수 있는 등의 기능을 제공하는 시스템.");
      }
    else if (idx == 113) {
        $("#optionTitle").html("엔진스타트버튼");
        $("#optionContent").html("자동차 키를 키박스에 넣고 돌리는 기존 방식과 달리, 엔진 시동 버튼을 누르면 시동이 걸리는 시스템.");
      }
    else if (idx == 114) {
        $("#optionTitle").html("이모빌라이저");
        $("#optionContent").html("차량 도난 방지 기술로 칩을 내장한 원래의 키나 카드를 소지하거나 사용하지 않으면 엔진의 시동이 걸리지 않도록 한 시스템.");
      }
    else if (idx == 115) {
        $("#optionTitle").html("전자주차브레이크");
        $("#optionContent").html("차량정차 또는 주차시에 사용하는 기계식 주차브레이크가 아닌 전기식 주차브레이크로 버튼만으로 작동이 가능하여 편리하게 사용가능한 시스템.");
      }
    else if (idx == 116) {
        $("#optionTitle").html("슈퍼비전계기판");
        $("#optionContent").html("하이플러스 이상급의 LED가 골고루 배치되어 있고, 시인성의 극대화를 목적으로 만들어진 계기판.");
      }
    else if (idx == 117) {
        $("#optionTitle").html("트립컴퓨터");
        $("#optionContent").html("정보 표시 시스템. 운전에 필요한 다양한 정보를 컴퓨터를 이용하여 문자 신호나 음성 신호등으로 운전자에게 제공하는 장치. 트립 컴퓨터를 통하여 제공되는 정보로는 주행거리, 순간 및 평균속도, 순간 및 평균 주행 연비, 주행 가능 거리등을 표시.");
      }
    else if (idx == 118) {
        $("#optionTitle").html("헤드업디스플레이");
        $("#optionContent").html("차량의 앞 유리에 현재 속도나 내비게이션 정보등을 표시해 운전자의 시야를 집중시킴으로써 안전 운행을 도와주는장치.");
      }
    else if (idx == 119) {
        $("#optionTitle").html("나이트비전");
        $("#optionContent").html("나이트비젼의 작동원리는 적외선 카메라가 물체의 열에너지를 감지해 영상 이미지로 재현하는 것으로 인간의 시각 능력을 훨씬 능가하는 시각 정보를 제공해 운전자가 위험한 상황을 감지할 수 있도록 해 자동차의 안전성을 배가 시켜주는 장치.");
      }
    else if (idx == 120) {
        $("#optionTitle").html("공기청정기");
        $("#optionContent").html("차량 내부 공기의 세균, 먼지등을 여과해 쾌적한 실내공기를 만드는 장치.");
      }
    else if (idx == 121) {
        $("#optionTitle").html("전동햇빛가리개");
        $("#optionContent").html("차안으로 들어오는 햇빛 및 자외선으로부터 승객을 보호해주는 커튼을 전동으로 작동시키는 장치.");
      }
    else if (idx == 122) {
        $("#optionTitle").html("빗물감지와이퍼");
        $("#optionContent").html("센서가 내장된 앞유리가 빗물의 양을 감지하여 별도의 조작이 없어도 와이퍼의 속도를 조절하는 장치.");
      }
    else if (idx == 123) {
        $("#optionTitle").html("크루즈컨트롤");
        $("#optionContent").html("정속 주행 장치. 희망하는 속도를 설정하면 운전자가 액셀이나 브레이크를 조작하지 않아도 설정된 속도를 유지하면서 주행하는 장치. 일반적으로 브레이크나 액셀을 조작하게 되면 크루즈컨트롤은 해제된다.");
      }
    else if (idx == 124) {
        $("#optionTitle").html("전동트렁크");
        $("#optionContent").html("차량내의 버튼이나 리모트 키를 이용해 트렁크 도어의 개폐가 가능하도록 해주는 전동식 장치.");
      }
    else if (idx == 125) {
        $("#optionTitle").html("오토라이트");
        $("#optionContent").html("주변의 밝기에 따라 자동으로 미등과 전조등을 켜고 꺼주는 장치.");
      }
    else if (idx == 126) {
        $("#optionTitle").html("타이어공기압경보");
        $("#optionContent").html("네바퀴의 회전수를 항상 탐지하여 공기압이 규정수준 이하로 떨어지면 바퀴속도가 빨라지는 것에 착안, 공기압 저하시 경보하여 주는 시스템.");
      }
    else if (idx == 129) {
        $("#optionTitle").html("핸즈프리");
        $("#optionContent").html("전화기를 손으로 잡지 않고서도 통화가 가능하도록 한 장치.");
      }
    else if (idx == 130) {
        $("#optionTitle").html("블루투스");
        $("#optionContent").html("블루투스가 지원되는 단말기와 연결하여 차량에서 양손의 사용 없이 전화기능 및 오디오를 들을수 있는 장치");
      }
    else if (idx == 57) {
        $("#optionTitle").html("내비게이션");
        $("#optionContent").html("지도를 보이거나 지름길을 찾아 주어 자동차 운전을 도와주는 장치나 프로그램.");
      }
    else if (idx == 127) {
        $("#optionTitle").html("하이패스");
        $("#optionContent").html("주행 중 고속도로 톨게이트 통과 시, 자동 요금 계산으로 무정차 통과를 가능하게 해주는 기능이다.");
      }
    else if (idx == 128) {
        $("#optionTitle").html("블랙박스");
        $("#optionContent").html("차량전력을 이용하여 주행중에 주행화면 및 도로정보를 녹화하여 저장하는 장치이다. 사고 시 또는 목격 자료로 유용하게 사용된다.");
      }
    else if (idx == 131) {
        $("#optionTitle").html("CD 플레이어");
        $("#optionContent").html("일반 음악CD를 삽입하여 음악 감상을 가능하게 하는 카 오디오 시스.");
      }
    else if (idx == 132) {
        $("#optionTitle").html("CD 체인저");
        $("#optionContent").html("CD 여러장을 한번에 삽입하고 선택하여 청취가 가능한 기능을 말한다.");
      }
    else if (idx == 133) {
        $("#optionTitle").html("VCD/DVD");
        $("#optionContent").html("DVD미디어를 사용하여 차량 안에서 고품질의 영상 및 음악을 재생 할 수 있는 장치.");
      }
    else if (idx == 134) {
        $("#optionTitle").html("DMB");
        $("#optionContent").html("지상파 또는 위성파 디지털신호를 수신하여 차량 이동중에도 TV를 시청할 수 있는 멀티미디어 장치.");
      }
    else if (idx == 135) {
        $("#optionTitle").html("MP3");
        $("#optionContent").html("MP3 파일을 이용한 CD 또는 메모리카드 미디어를 지원하여 음악감상이 가능한 장치.");
      }
    else if (idx == 136) {
        $("#optionTitle").html("AUX/USB");
        $("#optionContent").html("외부입력을 통해 휴대용장치의 음악미디어를 차량의 오디오에서 재생가능하게 하는 장치.");
      }
    else if (idx == 139) {
        $("#optionTitle").html("가죽시트");
        $("#optionContent").html("가죽으로 제작하여 승차감 및 내구성을 향상시킨 시트의 한 종류를 일컫는다.");
      }
    else if (idx == 140) {
        $("#optionTitle").html("전동시트");
        $("#optionContent").html("모터를 이용하여 운전석의 시트를 상/하, 전/후 방향을 자동으로 조절하는 장치.");
      }
    else if (idx == 141) {
        $("#optionTitle").html("열선시트");
        $("#optionContent").html("겨울철 탑승자의 보온을 위해 시트의 등받이와 엉덩이 부분에 열선을 삽입하여 시트를 따듯하게 만들어 주는 장치.");
      }
    else if (idx == 142) {
        $("#optionTitle").html("통풍시트");
        $("#optionContent").html("여름철 탑승자의 쾌적함을 위해 시트 표면을 시원하게 유지 시켜주는 시트를 일컫는다. "
        		+" 일반적으로 통풍성이 떨어지는 가죽시트에 주로 쓰인다." 
        		+" 앞좌석 통풍시트는 운전석과 동반석에 통풍시트 기능이 있는 것을 말한다");
      }
    else if (idx == 143) {
        $("#optionTitle").html("메모리시트");
        $("#optionContent").html("운전자가 설정해 놓은 시트의 위치와 각도등을 기억하는 전동 시트를 일컫는다. 버튼 조작만으로 각기 기억해 놓은 위치로 시트를 이동시켜 준다. 시트와 함께 사이드 미러, 룸미러, 오디오 기기등이 함께 기억되는 경우가 있으며 기억할 수 있는 운전자의 수도 한 명에서 3명이상까지 가능한 경우도 있다");
      }
    else if (idx == 144) {
        $("#optionTitle").html("파워핸들");
        $("#optionContent").html("엔진 힘에 의해 구동되는 모터를 이용해 적은 조향력으로도 스티어링 휠을 돌릴 수 있도록 하는 시스템을 일컫는다. 1960년대 전륜 하중이 큰 전륜차량이 보급되면서부터는 소형차에도 장착되기 시작했다.");
      }
    else if (idx == 145) {
        $("#optionTitle").html("히팅핸들");
        $("#optionContent").html("겨울철 운전자를 위한 장치로 스티어링 휠 내부에 열선을 장착하여 스티어링 휠을 따뜻하게 유지시켜주는 기능이 추가된 스티어링 휠을 일컫는다.");
      }
    else if (idx == 146) {
        $("#optionTitle").html("리모컨핸들");
        $("#optionContent").html("스티어링 휠(핸들)에 장착된 버튼으로 오디오 시스템 조작, 스피커 통화 등을 할 수 있도록 일체화 되어 있는 스티어링 휠을 일컫는다.");
      }
    else if (idx == 147) {
        $("#optionTitle").html("가죽/우드핸들");
        $("#optionContent").html("스티어링 휠의 일부분이 가죽 또는 우드 소재로 제작되어 있어 촉감이 좋고 고풍스러운 느낌을 주며, 핸들 조작 시 미끄러짐을 방지하는 효과가 있는 스티어링 휠이다.");
      }
    else if (idx == 148) {
        $("#optionTitle").html("속도감응형핸들");
        $("#optionContent").html("차량 주행속도에 따라 조타력을 제어해주는 장치이다.저속에서는 가볍게, 고속에서는 무겁게 조타력을 자동조절한다. - 고속주행시 안정성 확보.");
      }
    else if (idx == 149) {
        $("#optionTitle").html("파워윈도우");
        $("#optionContent").html("간단한 스위치 조작으로 차량 창문을 쉽게 올리거나 내릴 수 있게 만들어 주는 장치를 일컫는다.");
      }
    else if (idx == 150) {
        $("#optionTitle").html("에어컨");
        $("#optionContent").html("여름철 탑승자를 위한 장치로 엔진에 연결된 에어컵프레셔로 차량내부를 시원하게 유지 시켜주는 장치를 말한다.");
      }
    else if (idx == 151) {
        $("#optionTitle").html("풀오토에어컨");
        $("#optionContent").html("에어 컨디셔너에 컴퓨터 자동 제어 기능을 결합하여, 운전자가 원하는 온도를 설정해 두면 풍량과 공기의 온도, 방향등을 자동으로 조절하여 일정한 온도를 유지해 주는 장치를 말한다.");
      }
    else if (idx == 152) {
        $("#optionTitle").html("좌/우 독립에어컨");
        $("#optionContent").html("차량 좌측과 우측을 독립적으로 온도 조절을 할 수 있는 기능으로 운전자와 동승자가 따로 버튼으로 통제할 수 있는 기능을 일컫는다.");
      }
    else if (idx == 10) {
        $("#optionTitle").html("알루미늄휠");
        $("#optionContent").html("알루미늄 합금으로 제작된 휠의 종류로 주철 휠에 비교해서 가볍고, 또 열을 쉽게 발산시켜 브레이크 성능을 아주 좋게 한다."
        		+" 비중이 철의 3분의 1밖에 안되기 때문에 주철 휠보다 안전도를 고려하여 훨씬 가볍게 만들 수 있다. "
        		+" 또 주철에 비해 충격흡수 능력이 3배나 강하며, 완전한 원이 되어 바퀴의 밸런스가 아주 좋아진다. "
        		+"승차감을 좋게 해주며 기름 값도 덜어준다. 안정성, 경제성과 패션성 3박자를 고루 갖춘 휠이.");
      }
    else if (idx == 70) {
        $("#optionTitle").html("크롬휠");
        $("#optionContent").html("통상적으로 알루미늄 휠에 크롬으로 도금, 코팅한 휠 제품을 일컫는다. 상대적으로 보다 반짝이며 고급스러운 느낌을 준다.");
      }
    else if (idx == 71) {
        $("#optionTitle").html("광폭타이어");
        $("#optionContent").html("일반적인 타이어보다 노면과 접촉하는 면이 넓어서 주행 시 접지력을 향상시켜주며, 고속주행과 코너링에 유리한 타이어이다. 상대적으로 일반타이어에 비해 가격이 높고, 소음이 심하며, 연료효율이 낮아진다.");
      }
    else if (idx == 72) {
        $("#optionTitle").html("썬루프");
        $("#optionContent").html("바깥의 빛이나 공기가 차 안으로 들어오도록 조절할 수 있는 차량 지붕의 개폐 장치이다.");
      }
    else if (idx == 73) {
        $("#optionTitle").html("파노라마 썬루프");
        $("#optionContent").html("지붕의 일부분만 유리로 되어있는 일반 선루프와 달리 차량 지붕의 대부분이 유리로 되어 있는 개방감이 높은 선루프이다");
      }
    else if (idx == 74) {
        $("#optionTitle").html("루프캐리어");
        $("#optionContent").html("차량의 지붕 위에 짐을 올려놓고 다닐 수 있도록 설치하여 놓은 받침대를 일컫는다.");
      }
    else if (idx == 75) {
        $("#optionTitle").html("전동접이식미러");
        $("#optionContent").html("운전자가 앉아서 차량 외부의 사이드미러를 버튼을 이용하여 조정할 수 있고 자동으로 접고 펴는 기능이다.");
      }
    else if (idx == 76) {
        $("#optionTitle").html("사이드리피터");
        $("#optionContent").html("사이드 미러에 장착된 램프로 리어램프와 함께 차량의 진행방향을 보다 확실히 알려주는 기능성 장치이다.");
      }
    else if (idx == 77) {
        $("#optionTitle").html("제논/HID램프");
        $("#optionContent").html("제논/HID 헤드램프는 자연광에 가까운 색도로서 기존 램프보다 2배 이상 밝고 항상 수평 조사각을 유지케하며 반 영구적으로 사용 가능하며 운전자의 시인성 향상 및 피로감을 저하시켜주는 장치이다.");
      }
    else if (idx == 78) {
        $("#optionTitle").html("어댑티브헤드램프");
        $("#optionContent").html("조면가변형 전조등으로 차량이 움직이는 방향과 같이 움직여 운전자의 시야확보에 도움을 주는 장치이다..");
      }
    else if (idx == 79) {
        $("#optionTitle").html("헤드램프세척장치");
        $("#optionContent").html("헤드 램프의 오염 물질을 제거하고 악천후시 배광성능을 향상시키기 위해 헤드램프 렌즈표면에 세척액을 분사하는 장치.");
      }
    else if (idx == 11) {
        $("#optionTitle").html("흡기");
        $("#optionContent").html("흡기 튜닝이라는건 흡기저항을 줄여주는 것. 저항을 줄이고 흡입 공기량을 늘려 출력을 높이는 것이다.");
      }
    else if (idx == 80) {
        $("#optionTitle").html("배기");
        $("#optionContent").html("흡기 튜닝과 더불어 배기 튜닝이 조화를 이루어야만 원하는 성능을 낼 수 있다. 흡기량이 증가하여 출력이 증대되면 그에 상응하여 배기 시스템도 튜닝을 해주어 배기 효율을 좋게 해주는 것이 기본이다.");
      }
    else if (idx == 81) {
        $("#optionTitle").html("미션");
        $("#optionContent").html("변속계통장치를 엔진특성에 맞게 조율 또는 교체하면 동력전달 효율이 높아지고 가속성능 및 최고속도 도달성능이 향상된다.");
      }
    else if (idx == 82) {
        $("#optionTitle").html("핸들");
        $("#optionContent").html("직경이 작고 조작감이 뛰어난 레이싱용 핸들로 교체하여 조향성능을 민첩하고 정교하게 한다.");
      }
    else if (idx == 83) {
        $("#optionTitle").html("계기판");
        $("#optionContent").html("엔진의 각종 압력 및 장치들의 작동을 게이지로 표현하여 현차량의 상태를 나타내주는 장치를 장착하는 튜닝의 한 종류이다.");
      }
    else if (idx == 84) {
        $("#optionTitle").html("ECU맵핑");
        $("#optionContent").html("양산차 출고시 ECU로 제한된 차량의 ECU를 재튜닝하여 출려과 토크를 최적화 시키는 작업을 의미한다. 맵핑을 통해 출력증가와 토크상승을 기대할 수 있다.");
      }
    else if (idx == 85) {
        $("#optionTitle").html("터보차저");
        $("#optionContent").html("터빈을 이용하여 내연기관으로 흡입되는 공기를 미리 압축, 강제주입으로 출력을 높여 주는 장치.");
      }
    else if (idx == 86) {
        $("#optionTitle").html("슈퍼차저");
        $("#optionContent").html("터보차저의 단점을 개선하여 제작한 장치로 엔진에 급기 시키는 터보차저와 달리 슈퍼차져는 엔진이 돌아가는 폴리에 벨트를 걸어 엔진이 돌아가는 힘으로 터빈을 돌려 공기를 빨아 들이는방식이다. 단점으로는 저 배기량 엔진 차량에 장착되면 출력저하가 발생되기때문에 고 배기량 차량에 적합하다.");
      }
    else if (idx == 91) {
        $("#optionTitle").html("다운스프링");
        $("#optionContent").html("쇼크 업소버(Shock absorber) 결합되는 코일 스프링을 강성이 높고 길이가 짧은 스프링으로 교체하여 차체를 다운시킴으로써 코너링 향상과 핸들링 향상을 만드는 스프링이다. 단점으로는 승차감이 다소 저하된다.");
      }
    else if (idx == 92) {
        $("#optionTitle").html("일체형쇼바");
        $("#optionContent").html("순정차량의 쇼크 업소버 보다 가볍고 차량의 높낮이를 조절할 수 있으며 고속주행과 코너링등 차량의 특성을 끌어 올리는 장치.");
      }
    else if (idx == 154) {
        $("#optionTitle").html("N/A튜닝");
        $("#optionContent").html("N/A 는 Natural Aspiration 의 약자로 자연 흡기 튜닝을 말한다. 터보와 달리 과급기의 설치 없이 자연 흡기 시스템을 보강하거나 개조하여 자연흡기량을 늘리는데 그 목적이 있다. 터보와 달리 조금 더 섬세한 세팅이 필요하며 가속력이 매우 좋은게 장점이다.");
      }
    else if (idx == 155) {
        $("#optionTitle").html("오디오");
        $("#optionContent").html("데크, 스피커, 엠프, 우퍼 장치의 장착과 전원부보강, 방음 작업을 통해 카오디오 사운드의 품질 향상에 기여한다.");
      }
    else if (idx == 159) {
        $("#optionTitle").html("브레이크");
        $("#optionContent").html("브레이크의 캘리퍼, 디스크, 오일등 기존의 장치보다 성능이 향상된 부품을 조합하여 제동력을 향상시킬 수 있다.");
      }
    else if (idx == 160) {
        $("#optionTitle").html("리어스포일러");
        $("#optionContent").html("차량 뒤쪽에서 일어나는 공기의 와류현상을 없애기 위해 자동차의 지붕 끝이나 트렁크 위에 장착하는 장식 겸용 장치.");
      }
    else if (idx == 161) {
        $("#optionTitle").html("휠/타이어");
        $("#optionContent").html("휠의 인치업과 접지력이 좋은 타이어를 조합하여 고속주행, 코너링의 향상과 차량외관의 디자인 튜닝.");
      }
    else if (idx == 162) {
        $("#optionTitle").html("에어로파츠");
        $("#optionContent").html("고속주행시 공기저항을 줄여 안정적인 주행향상의 목적과 순정차량과 전혀다른 전체외관의 드레스업의 목적이다.");
      }
    
}
</script>
  </body>
</html>
