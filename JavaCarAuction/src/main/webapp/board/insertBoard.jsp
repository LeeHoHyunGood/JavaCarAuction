<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><spring:message code="message.board.list.link.insertBoard" /></title>
</head>
<body>
	<center>
		<h1><spring:message code="message.board.list.link.insertBoard" /></h1>
		<a href="logout.do">Log_out</a>
		<hr>
		<form action="insertBoard.do" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70"><spring:message code="message.board.list.table.head.title" /></td><td align="left">
					<input type="text" name="title" /></td>
				</tr>
				<tr>
					<td bgcolor="orange"><spring:message code="message.board.list.table.head.writer" /></td><td align="left">
					<input type="text" name="writer" size="10" value="${loginName }" readonly="readonly"/></td>
				</tr>
				<tr>
					<td bgcolor="orange"><spring:message code="message.board.list.search.condition.content" /></td><td align="left">
					<textarea name="content" rows="10" cols="40"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="70"><spring:message code="message.board.insert.table.head.upload" /></td><td align="left">
					<input type="file" name="uploadFile" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="<spring:message code="message.board.list.link.insertBoard" />" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getBoardList.do"><spring:message code="message.board.list.mainTitle" /></a>&nbsp;&nbsp;&nbsp;
	</center>
</body>
</html>