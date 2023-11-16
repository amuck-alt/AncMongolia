<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %> - 일본항공사 취업 연수생 모집 </title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->
	
	<!-- <div class="container-fluid  mobile-hidden" >
		<div class="row">
			<div class="col-12 text-center">
				<img src="/img/221014_sp2_page.jpg" style="width: 100%;" alt="대한항공 6회 퍼펙트 과정" id="mobile-100-percent">
			</div>
		</div>
	</div> -->
	
	<!-- <div class="container-fluid mobile-show">
		<div class="row">
			<div class="col-12">
					<img src="/img/221014_sp2_page_mo.png" alt="대한항공 6회 퍼펙트 과정" id="mobile-100-percent">
				</div>
		</div>
	</div> -->
	
	<!-- 카드뉴스 형식 -->
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
			
			
				<img src="/img/221209_d6_01.jpg"  alt="일본항공사 취업 연수생 모집 " id="mobile-100-percent">
				<img src="/img/221209_d6_02.jpg"  alt="일본항공사 취업 연수생 모집 " id="mobile-100-percent">
				<img src="/img/221209_d6_03.jpg"  alt="일본항공사 취업 연수생 모집 " id="mobile-100-percent">
				
				<a href="https://www.worldjob.or.kr/advnc/strnLink.do?joCrtfcNo=T20221208001&joCrtfcDsp=1&joCrtfcDspSn=1">
				<img src="/img/221209_d6_04.jpg"  alt="일본항공사 취업 연수생 모집" id="mobile-100-percent">
				</a>
				
				<img src="/img/221209_d6_05.jpg"  alt="일본항공사 취업 연수생 모집" id="mobile-100-percent">
			
	
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