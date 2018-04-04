<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<title>핫 경매 관리 모드</title>
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
			<form action="adminHotAuction.do" method="post">
				<table>
					<tbody>
						<tr>
							<th style="color: white;">핫 경매 등록할 입찰 건수</th>
							<td><input type="text" name="har_bid_conter" />
								<input type="hidden" name="har_idx" value="1" />
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></td>
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