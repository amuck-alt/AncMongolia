<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title>${result.title}</title>
<meta name="description" content="${result.description}"/>
<meta property="og:title" content="${result.title}">
<meta property="og:description" content="${result.description}">
<%@ include file = "../include/header.jsp" %>
<!-- 에디터용 css -->
<link rel="stylesheet" href="/editor/src/content-styles.css" type="text/css">
<script async charset="utf-8" src="//cdn.iframe.ly/embed.js?api_key=crewschool.co.kr"></script>
</head>
<body>
<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12 mt-4">
			<div class="col-fix-6 text-left">
				<a href="/crewpeople/review.do?startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}"><label class="re-label">목록으로</label></a>
			</div>
<!-- 			<div class="col-fix-6 text-right">
				<label class="re-label">이전</label><span class="px-1"></span><label class="re-label">다음</label>
			</div> -->
		</div>
	</div>
</div>

<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-3 line-2-black"></div>
		<div class="col-12">			
			<div class="col-12 px-2 font-24 font-bold">${ result.title }</div>
			<div class="col-12 px-2 pt-2 font-14 font-gray" class="mobile-100-percent"><fmt:formatDate value="${result.regdate}" pattern="yyyy-MM-dd"/></div>
		</div>
		<div class="col-12 line-1-gray my-3"></div>
		<div class="col-12 ck-content" id="bbs-content">
			${result.content}
		</div>
	</div>				
</div>

<div class="container-fluid" style="height:150px;"></div>
<script src="/editor/build/ckeditor.js"></script>
<script src="/editor/src/cke-config-by-web.js"></script>
<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>


</body>
</html>