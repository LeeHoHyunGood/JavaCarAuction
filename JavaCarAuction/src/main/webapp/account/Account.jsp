<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	function checking() {
		if (document.writeForm.name.value == "")
			alert("이름을 입력하세요")
		else if (document.writeForm.id.value == "")
			alert("아이디를 입력하세요")
		else if (document.writeForm.pwd.value == "")
			alert("패스워드를 입력하세요")
		else if (document.writeForm.pwd.value != document.writeForm.repwd.value)
			alert("패스워드가 틀립니다")
		else
			document.writeForm.submit()
	}
	function checkId() {
		var sid = document.writeForm.id.value
		if (sid == "")
			alert("입력된 아이디가 없습니다.")
		else
			window.open("checkId.jsp?id=" + sid, "", "width=400 height=150")
	}
	function checkPost() {
		window.open("checkPost.jsp", "", "width=500 height=500 scrollbars=yes");
	}
	
	$(function() {
		$('#email_select').change(function() {
			if ($('#email_select').val() == "1") {
				$("#last_email").val("");
				$("#last_email").prop("readonly", false);
			} else if ($('#email_select').val() == "") {
				$("#last_email").val("");
				$("#last_email").prop("readonly", true);
			} else {
				$("#last_email").val($('#email_select').val());
				$("#last_email").prop("readonly", true);
			}
		});
	});
</script>
</head>
<body>
	<form name="writeForm" method="post" action="insert.jsp">
		<table border="2">
			<tr>
				<td colspan="2" align="center">회원가입</td>
			</tr>
			<tr>
				<td align="center">이름</td>
				<td><input type="text" name="name"></input></td>
			</tr>
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="id" size="30"
					style="ime-mode: disabled"></input>
				<!--아이디를 영문만 입력가능하도록 설정-->
					<input type="button" value="중복체크" onClick="javascript:checkId()"></input>
				<!--버튼만들기, checkId() 실행--></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="text" name="pwd"></input></td>
			</tr>
			<tr>
				<td align="center">재확인</td>
				<td><input type="text" name="repwd"></input></td>
			</tr>
			<tr>
				<td align="center">성별</td>
				<td><input type="radio" name="gender" value="남자">남자 <input
					type="radio" name="gender" value="여자">여자</td>
			</tr>
			<tr>
				<td align="center">이메일</td>
				<td><input type="text" name="email1"></input> @<input
					type="text" name="acc_email2" id="last_email" size="10" /> <select id="email_select">
						<option value="" selected>::선택하기::</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="bondingedu.com">bondingedu.com</option>
						<option value="hanmir.com">hanmir.com</option>
						<option value="empas.com">empas.com</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="korea.com">korea.com</option>
						<option value="lycos.co.kr">lycos.co.kr</option>
						<option value="freechal.com">freechal.com</option>
						<option value="1">::직접입력::</option></select></td>
			</tr>
			<tr>
				<td align="center">전화번호</td>
				<td><select name="tel1"><option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
						<option value="070">070</option></select> - <input type="text" name="tel2"></input>
					- <input type="text" name="tel3"></input></td>
			</tr>
			<tr>
				<td align="center">주소</td>
				<td><input type="text" name="zipcode" size="10" readonly></input><input
					type="button" value="우편번호체크" onClick="javascript:checkPost()"></input><br>
				<input type="text" name="addr1" readonly></input><br>
				<input type="text" name="addr2"></input></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button"
					value="회원가입" onClick="javascript:checking()"></input><input
					type="reset" value="다시작성"></input></td>
			</tr>
		</table>
	</form>
</body>
</html>