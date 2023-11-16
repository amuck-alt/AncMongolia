<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- <div class="container-fluid" id="notice">
	<div class="col-12 text-center">
 		<img src="img/main-sign-txt_04.png" CLASS="mobile-100-percent">
	</div>
</div> -->

<%@ include file = "index_notice.jsp" %>

<div class="container-fluid mobile-hidden" style="height:100px"></div>

<div class="container-fluid py-3" id="containter-body">
	<div class="row main-row">
		<div class="col-12 main-quick-menu">
			<div class="col-12 mobile-100-percent">
				<div class="col-12 quick-ke-day">
					<div class="col-9 off-hide overlay-container quick-ke-day">
						<a href="/detail/event.do">
						<img src="/img/main-quick-yeb.jpg" id="mobile-100-percent">
						<div class="overlay mobile-hidden">
							<div class="overlay-text font-white font-20">예비승무원대회</div>
						</div>
						</a>
					</div>
					<div class="col-3 bg-light-gray quick-ke-day">
						<a href="/detail/event.do">
						<div class="py-5 px-3">
							<p class="py-3 font-20-m font-bold">예비승무원대회</p>
							<div class="py-1 line-2-black" style="width:100%"></div>
							<p class="py-3 font-14-m font-gray">실제면접 분위기연출<br>실전감각 익히기</p>
							<img src="/img/main-scheduler-more-btn.png" class="py-4 mobile-hidden">
						</div>
						</a>
					</div>
				</div>
				<div class="col-12 quick-oz-day">
					<div class="col-3 bg-oz text-right quick-oz-day">
						<a href="/detail/eventpa.do">
						<div class="py-5 px-3">
							<p class="py-3 font-20-m font-bold">합격생간담회</p>
							<div class="py-1 line-2-black float-right" style="width:100%;"></div>
							<p class="py-4 font-14-m font-gray">대학교별 합격자들의<br> 생생한 이야기</p>
							<img src="/img/main-scheduler-more-btn.png" class="py-4 float-right mobile-hidden">
						</div>
						</a>
					</div>
					<div class="col-9 off-hide overlay-container quick-oz-day">
						<a href="/detail/eventpa.do">
						<img src="/img/main-quick-hab.jpg" id="mobile-100-percent">
						<div class="overlay mobile-hidden">
							<div class="overlay-text font-white font-20">합격생간담회</div>
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid my-5 py-5" id="scheduler">
  <div class="row main-row">
    <div class="col-12 off-hide">
      <div class="col-2 bg-navy">
        <div class="font-white font-14 pt-3 text-center">크루팩토리</div>
        <div class="font-white font-22 py-2 text-center font-bold">스케쥴표</div>
        <div class="col-12 pt-2 text-center" style="position: absolute; z-index: 999;">
					<button class=" mx-1 bg-white border" id="sw-main-scheduler-prev">
						<img src="/img/ico-prev-btn.png" style="width:60%;">
					</button>
					<button class="mx-1 bg-white border" id="sw-main-scheduler-next">
						<img src="/img/ico-start-btn.png" style="width:60%;">
					</button>
				</div>
      </div>
      <div class="col-10 main-scheduler off-hide" id="sw-main-scheduler">
        <div class="swiper-wrapper">
          <div class="swiper-slide py-2">
              <div class="my-4 pl-4"> 
              <span class="font-26-m font-bold">4월 개강반 D-day</span><span class="mx-3 font-16 font-bold">4월 18일 </span>
              </div>
            <div class="pt-1">
              <span class="pl-4 font-bold font-20-m">4월 토요일 개강반 오픈</span>
              <span class="px-2 float-right mobile-hidden"><img src="/img/main-scheduler-more-btn.png" width="60%;"></span>
            </div>
          </div>
          <div class="swiper-slide py-2">
            <div class="my-4 pl-4">  
              <span class="font-26-m font-bold">인하공전 D-day</span><span class="mx-3 font-16 font-bold">10월 10일</span>
            </div>  
            <div class="pt-1">
              <span class="pl-4 pt-2 font-bold font-20-m">인하공전 - 수시1차</span>
              <span class="px-2 float-right mobile-hidden"><img src="/img/main-scheduler-more-btn.png" width="60%;"></span>
            </div>
          </div>
          <div class="swiper-slide py-2">
            <div class="my-4 pl-4">  
            <span class="font-26-m font-bold">한서대 D-day</span><span class="mx-3 font-16 font-bold">10월 예정</span>
            </div>  
            <div class="pt-1">
              <span class="pl-4 pt-2 font-bold font-20-m">한서대 - 수시 1차</span>
              <span class="px-2 float-right mobile-hidden"><img src="/img/main-scheduler-more-btn.png" width="60%;"></span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- div class="col-12 text-center">
    	<div class="text-center" id="sw-main-scheduler-pagination"></div>
    </div-->
  </div>
</div>

<script>

	$(document).ready(function(){
		if( $(window).width() > 768 ){
			var schedulerSwiper = new Swiper('#sw-main-scheduler', {
				slidesPerView: 3,
				navigation : {
					nextEl : '#sw-main-scheduler-next',
					prevEl : '#sw-main-scheduler-prev',
				},
			});
		}else{
			var schedulerSwiper = new Swiper('#sw-main-scheduler', {
				autoplay : {
					delay : 3000,
					disableOnInteraction : false,
				},
				slidesPerView: 1.1,
				navigation : {
					nextEl : '#sw-main-scheduler-next',
					prevEl : '#sw-main-scheduler-prev',
				},
			});
		}
	});
</script>

