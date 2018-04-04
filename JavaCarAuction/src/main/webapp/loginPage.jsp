<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로1그인</title>
</head>
<body>
		<form id="loginForm" action="j_spring_security_check" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">아이디</td>
					<td><input type="text" name="acc_id" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td><input type="password" name="acc_pw" /></td>
					<td><input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /></td>
				</tr>
				<tr>
				
					<td colspan="2" align="center">
						<input type="submit" 
						value="로그인" />
					</td>
				</tr>
				<c:if test="${not empty param.fail}">
				<tr>
					<td colspan="2">
						<font color="red">
							<p>Your login attempt was not successful, try again.</p>
							<p>Reason: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
						</font>
						<c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION"/>
					</td>
				</tr>
				</c:if>
			</table>
		</form>
		<hr>
</body>
<script type="text/javascript">
var loginForm = document.getElementById('loginForm');

function login(){

loginForm.action = "j_spring_security_check";

loginForm.submit();

}

function logout(){

loginForm.action = "logout.do";

loginForm.submit();

}

function makeAccount(){

loginForm.action = "makeAccount.do";

loginForm.submit();

}
</script>
</html>