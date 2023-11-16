<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-언론보도자료</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


<div class="container-fluid mt-5">
	<div class="row gs-row">
	  <div class="col-12">
	    <div class="col-3 mb-1 font-30 font-bold mobile-100-percent">일본공항지상직취업</div>
	    <div class="col-9 py-2 mobile-100-percent font-16 font-gray">일본공항취업은 당연히 크루팩토리!</div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid mt-5 rad-div-20 off-hide">
	<div class="row gs-row">
		<div class="col-12 mb-4 rad-div-20 off-hide" style="background:url('/img/jrecruit-img-0001.jpg') no-repeat center;">
			<div class="col-8 mobile-100-percent">
				<p class="font-14 font-white pt-5 px-5"><!-- Tomorrow's Learning Card System --></p>
				<p class="font-40 font-bold font-white py-3 px-5">모든 수강생에게 면접기회 제공</p>
				<p class="font-16 font-white pt-3 px-5" style="line-height:1.6rem;"><span class="font-pink">전 수강생 합격을 목표로 자격증, 어학면접까지 All-Pass 목표달성 !</span><br>
				크루팩토리에서 진행하는 과정을 수료하신 분에게는 크루팩토리에서 채용대행하는 항공사의 면접기회를 제공해드립니다.
				</p>
				<div class="px-5 pb-5"><a href="/counsel/online.do?cost=y&imgchk="><button class="banner-button mt-5">수강료조회</button></a></div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<p class="font-20 font-bold">취업처</p>
			<div class="col-12 my-5">
				<div class="swiper-container jrecruit-mou-sw">
					<div class="swiper-wrapper">
						<div class="swiper-slide text-center"><img src="/img/j-airport-narita.png" class="cricle-img"><p class="my-3">나리타국제공항</p></div>
						<div class="swiper-slide text-center"><img src="/img/j-airport-haneda.png" class="cricle-img"><p class="my-3">하네다국제공항</p></div>
						<div class="swiper-slide text-center"><img src="/img/j-airport-gansei.png" class="cricle-img"><p class="my-3">간사이국제공항</p></div>
						<div class="swiper-slide text-center"><img src="/img/j-airport-nagoya.png" class="cricle-img"><p class="my-3">나고야국제공항</p></div>
						<div class="swiper-slide text-center"><img src="/img/j-airport-chitose.png" class="cricle-img"><p class="my-3">치토새국제공항</p></div>
						<div class="swiper-slide text-center"><img src="/img/j-airport-hukuoka.png" class="cricle-img"><p class="my-3">후쿠오카국제공항</p></div>
					</div>
				</div>
			</div>
		</div>		
	</div>
</div>

<script>
if ($(window).width() > 768) {
	var jrecruitMouSwiper = new Swiper('.jrecruit-mou-sw', {
		slidesPerView : 6
	});
}else{
	var jrecruitMouSwiper = new Swiper('.jrecruit-mou-sw', {
		slidesPerView : 2.5		
	});
}
</script>

<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<p class="font-20 font-bold">담당업무</p>
			<ul class="col-12 my-4">
				<li class="ml-4 my-1" style="list-style-type:disc;">공항 예약발권 서비스</li>
				<li class="ml-4 my-1" style="list-style-type:disc;">공항 체크인카운터</li>
				<li class="ml-4 my-1" style="list-style-type:disc;">공항 면세점</li>
				<li class="ml-4 my-1" style="list-style-type:disc;">공항 라운지</li>
				<li class="ml-4 my-1" style="list-style-type:disc;">모바일 카운터</li>
			</ul>
		</div>		
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<p class="font-20 font-bold">지원자격</p>
			<ul class="col-12 my-4">
				<li class="ml-4 my-1" style="list-style-type:disc;">전문대졸이상</li>
				<li class="ml-4 my-1" style="list-style-type:disc;">JLPT 2급이상 또는 일본어 가능자</li>
			</ul>
		</div>		
	</div>
</div>


<div class="container-fluid bg-navy" style="background:url('/img/gs_support_jgsrecruit_bg.jpg') no-repeat center;">
	<div class="row sm-row">
		<div class="col-12">		
			<a href="https://crew-gs.com/detail/detail04.do" target="_blank">
				<img src="/img/gs_support_jgsrecruit.png" class="mobile-100-percent" >
			</a>
		</div>
	</div>
</div>



<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<img src="/img/230629_jgser_title.png" class="mobile-100-percent">
			<!-- <p class="font-20 font-bold">일본 공항 지상직 채용사 <mark> 유니스카이</mark> 알아보기</p> -->
			
			<div class="col-12 my-5">
				<div class="swiper-container jrecruit-mou-sw-t">
					<div class="swiper-wrapper">
					
						<div class="swiper-slide text-center">
						<a href="https://blog.naver.com/rhdshfl89/222558551121" target="_blank">
						<img src="/img/gs_support_jgsrecruit_01.jpg" class="cricle-img"><p class="my-3">유니스카이 회사 소개 및 <br>2023년 지상직 채용분야</p>
						</a>
						</div>
						
						<div class="swiper-slide text-center">
						<a href="https://blog.naver.com/rhdshfl89/222559263633" target="_blank">
						<img src="/img/gs_support_jgsrecruit_02.jpg" class="cricle-img"><p class="my-3">유니스카이 2023년 지상직 채용<br>연봉 및 복리후생</p>
						</a>
						</div>
							
						<div class="swiper-slide text-center">
						<a href="https://blog.naver.com/rhdshfl89/222564123499" target="_blank">
						<img src="/img/gs_support_jgsrecruit_03.jpg" class="cricle-img"><p class="my-3">유니스카이 공항지상직<br>채용 절차 및 면접 방식</p>
						</a>
						</div>
		
					</div>
				</div>
			</div>
		</div>		
	</div>
</div>

<script>
if ($(window).width() > 768) {
	var jrecruitMouSwiper = new Swiper('.jrecruit-mou-sw', {
		slidesPerView : 6
	});
}else{
	var jrecruitMouSwiper = new Swiper('.jrecruit-mou-sw', {
		slidesPerView : 2.5		
	});
}

if ($(window).width() > 768) {
	var jrecruitMouSwiper = new Swiper('.jrecruit-mou-sw-t', {
		slidesPerView : 3
	});
}else{
	var jrecruitMouSwiper = new Swiper('.jrecruit-mou-sw-t', {
		slidesPerView : 2.5		
	});
}
</script>


<%@ include file="../include/recruitsys.jsp" %>


<!-- 하단링크 -->
<%@ include file="../include/footlink.jsp"%>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>














