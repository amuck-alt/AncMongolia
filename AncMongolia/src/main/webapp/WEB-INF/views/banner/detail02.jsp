<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-대한항공과외과정</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>


<body>
	<%@ include file="../include/nav.jsp"%>



	<!-- 사이즈 1920로 스크롤생김 -->

	<div style="text-align: center;">
		<img src="/img/d2_01.png" alt="신학기" id="mobile-100-percent"class="mobile-show">
	</div>
	
	<div style="text-align: center;">
		<img src="/img/d2_02.png" alt="신학기" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
	</div>





	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>


</body>
</html>