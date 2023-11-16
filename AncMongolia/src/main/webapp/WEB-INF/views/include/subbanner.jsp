<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- div class="container-fluid sub-visual line-1-gray">
	<div class="row">
	  <div class="col-12">
	    <div class="col-12 off-hide">
		  <div class="swiper-container" id="sw-sub-visual">
			<div class="swiper-wrapper">
			  <div class="swiper-slide"><img src="/img/2020-main-visual-01.png"></div>
			  <div class="swiper-slide"><img src="/img/2020-main-visual-02.png"></div>
			  <div class="swiper-slide"><img src="/img/2020-main-visual-03.png"></div>
			  <div class="swiper-slide"><img src="/img/2020-main-visual-04.png"></div>
			  <div class="swiper-slide"><img src="/img/2020-main-visual-05.png"></div>
			</div>
		  </div>
		</div>  
	  </div>
	</div>
</div>
<div class="col-12 swiper-pagination" id="sw-sub-visual-pagination"></div-->

<script>
if( $(window).width() > 768 ){
	// pc사이즈일때
	
	// 서브비쥬얼
	var subvisualSwiper = new Swiper('#sw-sub-visual', {
		loop: true,
		slidesPerView: '2',
		centeredSlides: true,
		spaceBetween: 10,
	    freeMode: true,
		autoplay: { delay: 9000, disableOnInteraction: false, },
		pagination: {el:'#sw-sub-visual-pagination', clickable: true, },
		navigation: {
	        nextEl: '.visual-swiper-button-next',
	        prevEl: '.visual-swiper-button-prev',
	    },
	});
}else{
	
	// 서브비쥬얼
	var subvisualSwiper = new Swiper('#sw-sub-visual', {
		loop: true,
		slidesPerView: '1',
		centeredSlides: true,
		spaceBetween: 10,
	    freeMode: true,
		autoplay: { delay: 9000, disableOnInteraction: false, },
		pagination: {el:'#sw-sub-visual-pagination', clickable: true, },
		navigation: {
	        nextEl: '.visual-swiper-button-next',
	        prevEl: '.visual-swiper-button-prev',
	    },
	});
	
}
</script>