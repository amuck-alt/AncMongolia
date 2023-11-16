<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>취업지원금</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->

	<div style="text-align: center;">
		
	</div>
	
	
	
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
				<img src="/img/detail_210113_01.jpg"  alt="취업지원금" id="mobile-100-percent">
			</div>
		</div>
	</div>
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
				<img src="/img/detail_210113_02.jpg"  alt="취업지원금" id="mobile-100-percent">
			</div>
		</div>
	</div>
	
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
				<img src="/img/detail_210113_03.jpg"  alt="취업지원금" id="mobile-100-percent">
			</div>
		</div>
	</div>
	
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
				<img src="/img/detail_210113_04.jpg"  alt="취업지원금" id="mobile-100-percent">
			</div>
		</div>
	</div>
	
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
				<img src="/img/detail_210113_05.jpg"  alt="취업지원금" id="mobile-100-percent">
			</div>
		</div>
	</div>
	
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
				<a href="/counsel/online.do"><img src="/img/detail_210113_06.gif"  alt="취업지원금" id="mobile-100-percent"></a>
			</div>
		</div>
	</div>
	
	
	
	


	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>



	<script>
		$(document).ready(function($) {
			$('.counter').counterUp({
				delay : 10,
				time : 3000
			});
		});

		var wow = new WOW({
			animateClass : 'animated',
			offset : 100
		});

		wow.init();
	</script>
	<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>
</body>
</html>