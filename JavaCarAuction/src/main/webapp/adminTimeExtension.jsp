<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<title>입찰 시간연장 관리 모드</title>
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
			<form action="adminTimeExtension.do" method="post">
				<table>
					<tbody>
						<tr>
							<th style="color: white;">연장 시간</th>
							<td><input type="text" name="ter_time_extension" />
								<input type="hidden" name="tar_idx" value="1" />
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></td>
						</tr>
						<tr>
							<th style="color: white;">연장 하는 시간</th>
							<td><input type="text" name="ter_end_time" /></td>
						</tr>
						<tr><th><button type="submit">등록</button><th>
						<td><a href="adminModeIndex.jsp"><button type="button">돌아가기</button></a></td></tr>
					</tbody>
				</table>
			</form>
			<hr align="center" style="width: 20%;">
		</div>		
	</div></center>
</body>
</html>