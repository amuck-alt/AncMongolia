<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="robots" content="index, follow">
<meta name="author" content="Crew-Factory">
<meta name="keywords" content="">
<meta name="description" content="">
<title>${ result.title } - 크루팩토리승무원학원</title>

<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>



<div class="container-fluid">
	<div class="row sub-row">	
		<div class="col-12 mt-4">
			<div class="col-fix-6 text-left">
				<a href="/news/event.do?section=${param.section}startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}"><label class="re-label">목록으로</label></a>
			</div>
			<div class="col-fix-6 text-right">
				<label class="re-label">이전</label><span class="px-1"></span><label class="re-label">다음</label>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid" id="containter-body">
	<div class="row sub-row">	
		<div class="col-12 line-2 my-3"></div>
		<div class="col-12 font-20 font-bold">			
			<div class="col-10 px-2">${ result.title }</div>
			<div class="col-2"><fmt:formatDate value="${result.regdate}" pattern="yyyy-MM-dd"/></div>
		</div>
		<div class="col-12 line-2 my-3"></div>
		<div class="col-12 px-3" id="bbs-content">
			${result.content}
		</div>
	</div>				
</div>


<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>