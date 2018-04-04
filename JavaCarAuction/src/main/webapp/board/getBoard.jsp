<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><spring:message code="message.board.get.mainTitle" /></title>
</head>
<body>
	<center>
		<h1><spring:message code="message.board.get.mainTitle" /></h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq }" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70"><spring:message code="message.board.list.table.head.title" /></td>
					<td align="left"><input name="title" type="text"
						value="${board.title }" /></td>
				</tr>
				<tr>
					<td bgcolor="orange"><spring:message code="message.board.list.table.head.writer" /></td>
					<td align="left">${board.writer }</td>
				</tr>
				<tr>
					<td bgcolor="orange"><spring:message code="message.board.list.search.condition.content" /></td>
					<td align="left"><textarea name="content" cols="40" rows="10">
					${board.content }</textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange"><spring:message code="message.board.list.table.head.regDate" /></td>
					<td align="left">${board.regDate }</td>
				</tr>
				<tr>
					<td bgcolor="orange"><spring:message code="message.board.list.table.head.cnt" /></td>
					<td align="left">${board.cnt }</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="<spring:message code="message.board.get.getBoard" />" /></td>
				</tr>
			</table>
			</form>
		<hr>
		<a href="insertBoard.do"><spring:message code="message.board.list.link.insertBoard" /></a>&nbsp;&nbsp;&nbsp; <a
			href="deleteBoard.do?seq=${board.seq }"><spring:message code="message.board.get.delete" /></a>&nbsp;&nbsp;&nbsp; <a
			href="getBoardList.do"><spring:message code="message.board.list.mainTitle" /></a>&nbsp;&nbsp;&nbsp;
	</center>
</body>
</html>