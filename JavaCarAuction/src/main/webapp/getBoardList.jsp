<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<title>글 목록</title>
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.color{color:red}
    img{
        width:3%;
    }

    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
    }
     
    #list {
      text-align: center;
    }
    
   #write {
      text-align: right;
      padding-right: 19%;
    }
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: skyblue;
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }
    #main-area .list-i-new {
    width: 10px;
    height: 10px;
    background: url(https://cafe.pstatic.net/cafe4/ico-new.gif) 0 1px no-repeat;
}
a {
 text-decoration:none;
 color:black; 
}
a:hover { 
text-decoration:underline
}
  </style>
</head>
<body>

<center>
	<h1>${category.name}</h1>
	<h3>${user.acc_name} 환영<a href="index.do">  메인으로가기</a></h3>
	
		<a href="getBoardList.do?category_idx=1">자유게시판</a>
		<a href="getBoardList.do?category_idx=2">리뷰</a>
		<a href="chat.jsp" target="black"onClick="window.open(this.href, '', 'width=500, height=450'); return false;">채팅 하기</a>
	<!-- 검색 시작 -->
	<form action="getBoardList.do" method="post">
	<input name="category_idx" type="hidden" value="${board.category_idx}"/>
		<table class="table table-striped table-bordered">
			<tr>
			
				<td align="right">
					<select name="searchCondition">
						<c:forEach items="${conditionMap }" var="option">
							<option value="${option.value }">${option.key}</option>
						</c:forEach>
					</select>
					<input name="searchKeyword" type="search" value="${keywolrd.searchKeyword}" placeholder="Search">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="검색"/>
			</tr>
		</table>
	</form>
	<!-- 검색 종료 -->
	<div id="container">
		<div id="list">
      <b>${category.name}(전체 글: ${totalcount})</b>
    </div>
    
    <div id="write">
    <button  onclick="location.href='insertBoard.jsp?category_idx=${board.category_idx}'"><input type="image" src="https://cafe.pstatic.net/cafe4/ico-btn-write.gif">글쓰기</button>
    </div>
    
	<div>
	<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th width="10%">번호</th>
			<th width="60%">제목</th>
			<th width="10%">작성자</th>
			<th width="10%">작성일</th>
			<th width="10%">조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${boardList}" var="board">
		<tr>
				
			<td>${board.seq}</td>
			<td align="left"><c:if test="${board.cnt >= 20}"><span class="hit">hit!</span></c:if><a href="getBoard.do?seq=${board.seq}&writer_idx=${user.acc_idx}&category_idx=${board.category_idx}">${board.title}<span class="color">(${board.rcnt})</span></a><c:if test="${time - board.regdate.getTime() < 3600000*24*3}"><img src="https://cafe.pstatic.net/cafe4/ico-new.gif"></c:if><c:if test="${board.filename ne null}"><img src="https://cafe.pstatic.net/cafe4/ico-img.gif"></c:if>
                </td>
			<td>${board.writer}</td>
			<td>${board.regdate}</td>
			<td>${board.cnt}</td>
			
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<table>
	<tr>
		<td><form action="getBoardList.do" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" name="category_idx" value="${board.category_idx}"/>
		<input type="hidden" name="searchKeyword" value="${keywolrd.searchKeyword}">
		<input type="hidden" name="searchCondition" value="${keywolrd.searchCondition}">
		<input name="pageNumber" type="hidden" value="${pageNumber=1}" >
		<input type="submit" value="<<">
		</form></td>
		<c:if test="${startPage-1 ne 0}">
		<td><form action="getBoardList.do" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" name="category_idx" value="${board.category_idx}"/>
		<input type="hidden" name="searchKeyword" value="${keywolrd.searchKeyword}">
		<input type="hidden" name="searchCondition" value="${keywolrd.searchCondition}">
		<input name="pageNumber" type="hidden" value="${startPage-1}">
		<input type="submit" value="<">
		</form></td>
		</c:if>
		<c:forEach begin="${startPage}" end="${endPage}" var="page" varStatus="state">
		<td><form action="getBoardList.do" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" name="category_idx" value="${board.category_idx}">
		<input type="hidden" name="searchKeyword" value="${keywolrd.searchKeyword}">
		<input type="hidden" name="searchCondition" value="${keywolrd.searchCondition}">
		<input type="submit" name="pageNumber" value="${page}">
		</form></td>
		</c:forEach>
		
		<c:if test="${endPage ne realEndPage}">
		<td><form action="getBoardList.do" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" name="category_idx" value="${board.category_idx}"/>
		<input type="hidden" name="searchKeyword" value="${keywolrd.searchKeyword}">
		<input type="hidden" name="searchCondition" value="${keywolrd.searchCondition}">
		<input name="pageNumber" type="hidden" value="${endPage+1}" >
		<input type="submit" value=">">
		</form></td>
		</c:if>
		<td><form action="getBoardList.do" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" name="category_idx" value="${board.category_idx}"/>
		<input type="hidden" name="searchKeyword" value="${keywolrd.searchKeyword}">
		<input type="hidden" name="searchCondition" value="${keywolrd.searchCondition}">
		<input name="pageNumber" type="hidden" value="${realEndPage}" >
		<input type="submit" value=">>">
		</form></td>
	</tr>
	</table>
	</div>
	<br>
</center>
</body>
</html>