<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="../../#page-top">Java Car Live</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fa fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="topMenuLi"><a class="nav-link js-scroll-trigger" href="#">경매 소개</a>
					<ul class="submenu">
						<li class="submenuLink longLink"><a class="nav-link js-scroll-trigger"
					href="../../#about" style=" color: black;">경매장 소개</a></li>
						<li class="submenuLink longLink"><a class="nav-link js-scroll-trigger"
					href="../../#download" style=" color: black;">경매장 이용법</a></li>
						<li class="submenuLink longLink"><a class="nav-link js-scroll-trigger"
					href="../../#contact" style=" color: black;">팀소개</a></li>
					</ul>
					</li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="../../insertauction.jsp">경매</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="../../auctionList.do?auc_type=0000">경매리스트</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="../../#contact">개발자</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="../../chat.jsp" onClick="window.open(this.href, '', 'width=500, height=450'); return false;">채팅창</a></li>
				<li class="nav-item">
					<div class="dropdown" id="mydropdown">
						<button class="btn btn-link text-white" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
							커뮤니티 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenu1">
							<c:forEach var="category" items="${categorylist}">
								<li role="presentation"><a class="text-muted"
									role="menuitem" tabindex="-1"
									href="getBoardList.do?category_idx=${category.idx}">${category.name}</a></li>
							</c:forEach>
						</ul>
					</div>

				</li>
			</ul>
			<ul class="navbar-nav ml-auto">
			<sec:authorize access="isAnonymous()">
						<li class="nav-item"><a class="nav-link" id="login"
							data-toggle="modal" href="#loginModal">로그인</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="modal"
							href="#agreeModal">회원가입</a></li>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
						<li class="nav-item">
							<div class="dropdown" id="mydropdown">
							<b>아이디 : </b>
								<button class="btn btn-link text-white" type="button"
									id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
									${user.acc_name} <span class="caret2">
									<sec:authorize access="hasAnyRole('ROLE_USER')">
									 ${user.facing} 
									 <script type="text/javascript">
											setInterval("facing('')",5000);
											function facing() {
												var token = $("meta[name='_csrf']").attr("content");
										    	var header = $("meta[name='_csrf_header']").attr("content");
											$.ajax({
									            type : 'POST',
												headers : {header : token},
												url : 'facing.do',
												data : { "acc_idx" : '${user.acc_idx}'},
									            beforeSend: function(xhr) {
									            	xhr.setRequestHeader(header, token); 
									            	},
									            success : function(data) {
									            	$('.caret2').html(data); 
									            }
									            //전송실패에대한 핸들링은 고려하지 않음
									        });
											}
									 </script>
									 </sec:authorize>
									 </span>
								</button>
								<ul class="dropdown-menu" role="menu"
									aria-labelledby="dropdownMenu1">
									<sec:authorize access="hasAnyRole('ROLE_USER')">
										<li role="presentation"><a class="text-muted"
											role="menuitem" tabindex="-1"
											href="mypage.jsp">마이페이지</a></li>
									</sec:authorize>
									<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
											<li role="presentation"><a class="text-muted"
											role="menuitem" tabindex="-1"
											href="adminModeIndex.jsp" onclick="window.open(this.href, '', 'width=1000, height=730'); return false;">관리자페이지</a></li>
									</sec:authorize>
									<sec:authorize access="hasAnyRole('ROLE_USER')">
										<li role="presentation"><a class="text-muted"
											role="menuitem" tabindex="-1"
											href="getFacingList.do?acc_idx=${user.acc_idx}">쪽지함</a></li>
									</sec:authorize>
									<sec:authorize access="hasAnyRole('ROLE_USER')">
										<li role="presentation"><a class="text-muted"
											role="menuitem" tabindex="-1"
											href="getBoardList.do?category=${category.idx}">설정</a></li>
									</sec:authorize>
										<li role="presentation"><a class="text-muted"
											role="menuitem" tabindex="-1"
											href="account/logout_proc.do">로그아웃</a></li>
									<sec:authorize access="hasAnyRole('ROLE_USER')">
										<li role="presentation"><a class="text-muted"
											role="menuitem" tabindex="-1" data-toggle="modal"
											href="#deleteaccount">회원 탈퇴</a></li>
									</sec:authorize>
								</ul>
							</div>
						</li>
						</sec:authorize>
			</ul>
		</div>
	</div>
	</nav>
