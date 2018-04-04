<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>NullPointerException 에러 화면</title>
</head>
<body bgcolor="#ffffff" text="#000000">
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center" bgcolor="orange"><b>NullPointerException 에러 화면입니다</b></td>
		</tr>
	</table>
	<br>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td align="center">
			<br><br><br><br><br>
			Message: ${exception.message } 또는 null 입니다
			<br><br><br><br><br>
			</td>
		</tr>
	</table>
	<table width="100" border="1" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td><a href="index.do">메인으로 돌아가기</a></td>
	</table>
</body>
</html>