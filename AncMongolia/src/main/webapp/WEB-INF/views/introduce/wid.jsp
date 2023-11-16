<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-크루팩토리장점</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<div class="container-fluid intro-banner-wid-container">
		<div class="row intro-row pad-top-150">
			<div class="col-md-6"></div>
			<div class="col-md-6"></div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row intro-row site-map-row">
			<ul>
				<li class="font-12 font-gray">Home</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-gray">크루팩토리소개</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-bold">크루팩토리만의 장점</li>
			</ul>
		</div>
	</div>

	<div class="container-fluid bg-dark-navy">
		<div class="row intro-row">
			<!-- div class="col-md-12 text-center">
			<div class="d-height-100 text-center align-middle">
				<h1 class="font-white font-bold ">크루팩토리는 이렇게 다릅니다</h1>
			</div>
		</div-->
		</div>
		<!-- edu-row end -->
	</div>
	<!-- container end -->

	<div class="d-height-100"></div>

	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>


	<footer> </footer>

</body>
</html>