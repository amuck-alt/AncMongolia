<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-크루팩토리</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>



<div class="container-fluid" style="background:url('/img/edu-class-os-d09-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-14 mb-4 font-gray">Intensive course for LCC/HSCs</p>
				<p class="font-40 mb-4">LCC, HSC 항공사 <br>공채 취업반 </p>
				<p class="font-14 mb-4 font-gray">LCC/HSC 항공사 중 자체적으로 대졸공채를 진행하는 제주항공, 티웨이항공, 에어프레미아 등 <br>취업조건, 직무에 대한 이해를 바탕으로 컨설팅교육이 진행되는 전문 취업 코스입니다. </p>
				<div class="mt-5">
				<a href="/counsel/online.do"><button class="banner-button2 my-2">상담신청</button></a>
				<a href="/counsel/online.do?cost=y&imgchk="><button class="banner-button2 my-2">수강료조회</button></a>
				<a href="/banner/classopen.do"><button class="banner-button2 my-2">개강일정</button></a>
				</div>
			</div>
		</div>
	</div>
</div>

	<!-- 사이즈 1920로 스크롤생김 -->

	
	  <div class="container-fluid " >
	  	<div class="row sub-row">
	  		<div class="col-12 text-center">
	  			<img src="/img/detail_gs_d9_01.jpg" alt="LCC" id="mobile-100-percent">
	  			<img src="/img/detail_gs_d9_02.jpg" alt="LCC" id="mobile-100-percent">
	  		</div>
	  	</div>
	  </div>
	
	
	<div class="container-fluid " >
	  	<div class="row ">
	  		<div class="col-12 text-center">
	  			<img src="/img/detail_gs_d9_03.jpg" alt="LCC" class="mobile-hidden" id="mobile-100-percent" style="width:100%;">
	  			<img src="/img/detail_gs_d9_04.jpg" alt="LCC" class="mobile-hidden" id="mobile-100-percent" style="width:100%;">
	  			<img src="/img/detail_gs_d9_05.jpg" alt="LCC" class="mobile-hidden" id="mobile-100-percent" style="width:100%;">
	  		</div>
	  	</div>
	  </div>
	
	
	
	<div style="text-align: center;width:100%;">
		<img src="/img/detail_gs_d9_03_mo.jpg" alt="LCC" class="mobile-show"id="mobile-100-percent">
	</div>
	
	
	<div style="text-align: center; width:100%;">
		<img src="/img/detail_gs_d9_04_mo.jpg" alt="LCC" class="mobile-show"id="mobile-100-percent">
	</div>
	
	
	
	<div style="text-align: center; width:100%;">
		<img src="/img/detail_gs_d9_05_mo.jpg" alt="LCC" class="mobile-show"id="mobile-100-percent">
	</div>
	
     <div class="container-fluid " >
	        <div class="row sm-row mb-5" style="background-color:#051043; height:100%;" >
	        <div class="col-12 text-center my-3 ">   
	        	<img src="/img/fffffff.png" id="mobile-100-percent">
	        	<a href="/support/recruit.do?section=01"><button class="banner-button2 my-1"><img src="/img/lcc-icon-001.png" alt="LCC"> 채용공고</button></a>
				<a href="/counsel/online.do"><button class="banner-button2 my-1"><img src="/img/lcc-icon-002.png" alt="LCC"> 수강료조회</button></a>
				<a href="/counsel/online.do?cost=y&imgchk="><button class="banner-button2 my-1"><img src="/img/lcc-icon-003.png" alt="LCC"> 온라인상담</button></a>
				<a href="/introduce/map.do"><button class="banner-button2 my-1"><img src="/img/lcc-icon-004.png" alt="LCC"> 학원위치</button></a>
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