<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<title>댓글 수정</title>

</head>
<body>	
${category.name}
		<center>		
			<hr>
		<form action="updateReply.do" method="post">
			<input name="idx" type="hidden" value="${reply.idx}">
			<input name="parent_idx" type="hidden" value="${reply.parent_idx}">
			<input name="reply_regdate" type="hidden" value="${reply.reply_regdate}">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<table border="0" cellpadding="0" cellspacing="0">	
				<tr>
				<td colspan='2'><b>댓글수정</b></td>
				</tr>
				<tr>
					<td width="70"><br>작성자</td>
					<td align="left"><br>
						<input type="hidden" name="repleyer" size="10" value="${reply.repleyer}" readonly>${reply.repleyer}</td>					
				</tr>
				<tr>
					<td><br>내용</td>
					<td align="left"><br><input type="text" name="reply_text" value="${reply.reply_text}"></td>
				</tr>
				<tr>
					<td></td>
					<td align="center"><input type="submit" value="글 수정"></td>				
				</tr>			
			</table>		
		</form>
			<hr>		
		</center>
</body>
</html>