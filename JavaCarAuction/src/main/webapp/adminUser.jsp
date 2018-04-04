<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<title>회원 관리 모드</title>
<link rel="stylesheet" href="resources/css/aTagStyle.css">
<link rel="stylesheet" href="resources/css/adminModeIndex.css">
</head>
<body style="background-color: black;">
	<br><br><br><br><br><br>
	<center><div id="wrapper">
		<div id="nav">
			<br><br>					
			&nbsp;<b><font color="red">ADMINISTRATOR</font><br>
			&nbsp;<font color="red">MODE</font></b>
			<hr align="center" style="width: 20%;"><br>
			<form action="#" method="post">
				<table>
					<tbody>
						<tr>
							<th style="color: white;">몇일 로그인 안한 회원 검색</th>
							<td><input id="logNumber" type="text" name="logUser" />
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></td>
						</tr>
						<tr><th><button id="logUser" type="button">등록</button><th>
						<td><a href="adminModeIndex.jsp"><button type="button">돌아가기</button></a></td></tr>
					</tbody>
				</table>
			</form>
			<hr align="center" style="width: 20%;">
			<table id="mytable">
				<thead>
					<tr id="logUserList" style="display: none;">
						<th style="color: white;">유저아이디</th>
						<th style="color: white;">유저비번</th>
						<th style="color: white;">유저닉네임</th>
						<th style="color: white;">유저이름</th>
						<th style="color: white;">유저메일</th>
						<th style="color: white;">유저번호</th>
						<th style="color: white;">유저성별</th>
						<th style="color: white;">유저생년월일</th>
						<th style="color: white;">유저머니</th>
						<th style="color: white;">유저포인트</th>
						<th style="color: white;">유저등급</th>
						<th style="color: white;">유저활성화</th>
						<th style="color: white;">유저마지막로그인시간</th>
						<th style="color: white;">비활성화</th>
					</tr>
				</thead>
				<tbody id="list">
				</tbody>
			</table>
		</div>		
	</div></center>
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	$('#logUser').on(
			'click', function() {
				var token = $("meta[name='_csrf']").attr("content");
            	var header = $("meta[name='_csrf_header']").attr("content");
				$.ajax({
					type : 'POST',
					headers : {header : token},
					url : '/logUser.do',
					dataType : 'JSON',
					data : { "logUser" : $('#logNumber').val()},
					beforeSend: function(xhr) {
                    	xhr.setRequestHeader(header, token); 
                    	},
					success : function(data) {
						$('#mytable > tbody').empty();
						$.each(data , function(idx, val) {
							var time = new Date(val.acc_logtime);
							var certification = "";
							if (val.certification == 1) {
								certification = "활성화중";
	                        } else {
	                        	certification = "비활성화중";
	                        }
							$("#list")
	                        .append(
	                                "<tr>"
	                                +"<td style=\"color: white;\">"+val.acc_id+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_pw+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_nickname+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_name+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_email+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_hp+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_sex+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_birthday+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_money+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_point+"</td>"
	                                +"<td style=\"color: white;\">"+val.acc_grade+"</td>"
	                                +"<td style=\"color: white;\">"+certification+"</td>"
	                                +"<td style=\"color: white;\">"+time.toLocaleString()+"</td>"
	                                +"<td style=\"color: white;\"><a href=\"upDataCertification.do?acc_idx="+val.acc_idx+"\"style=\"color: white;\">비활성화</a></td>"
	                                +"</tr>");
							});
						$("#logUserList").css("display", "");
					}
						
				}); //end ajax    
			}); //end on
	});
	</script>
</body>
</html>