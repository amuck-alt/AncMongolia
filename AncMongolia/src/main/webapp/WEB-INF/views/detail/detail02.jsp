<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->

	<div style="text-align: center;">
		<img src="/img/d2-001.png" alt="대졸공채" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d2-01.png" alt="대졸공채" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d2-02.png" alt="대졸공채" id="mobile-100-percent" class="mobile-show">
	</div>
	
	<div style="text-align: center;">
		<img src="/img/d2-02-001.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-01.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-02.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-03.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-04.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
	</div>


<div class="container-fluid ">
		<div class="row">
			<div class="col-12 mt-7">
				<img src="/img/edu-class-crsdcs-img-014.jpg" width="100%"  class="mobile-hidden">
			</div>
			<div class="col-12">
				<img src="/img/edu-class-crsdcs-img-mo-014.jpg" width="100%"   id="mobile-100-percent" class="mobile-show">
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