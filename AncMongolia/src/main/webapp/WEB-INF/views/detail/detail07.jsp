<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %> - 지상직 정규반 34% 할인 이벤트</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->
	<!-- 카드뉴스 형식 -->
	<!-- <div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
			
				<img src="/img/230424_d7_page_01.jpg"  alt=" 유니스카이 일본 공항 지상직(대한항공) " id="mobile-100-percent">
				
				<a href="http://crewkorea.com/recruit/view.do?idx=5&startPage=&visiblePages=&searchText=§ion=" target="_blank">
				<img src="/img/230424_d7_page_02.jpg"  alt=" 유니스카이 일본 공항 지상직(대한항공)" id="mobile-100-percent">
				</a>
				
				<img src="/img/230424_d7_page_03.jpg"  alt=" 유니스카이 일본 공항 지상직(대한항공) " id="mobile-100-percent">
			
			</div>
		</div>
	</div> -->
	
	
	<!-- 카드뉴스 형식 -->
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
			
				<img src="/img/230602_d7_page.jpg"  alt="창립 34주년 지상직 정규반 34% 할인 이벤트" id="mobile-100-percent">
				
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
	
	$(document).ready(function( $ ) {
		$('.counter').counterUp({
			delay: 10,
			time: 3000
		});
	});

	var wow = new WOW( {
		animateClass: 'animated',
		offset:       100
	});
	
	wow.init();
</script>
	<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>
</body>
</html>