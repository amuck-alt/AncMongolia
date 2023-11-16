<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- desktop main visual -->
<div class="container-fluid main-visual off-hide mobile-hidden">
	<div class="row">
		<div class="swiper-container" id="sw-main-visual">
			<div class="swiper-wrapper">
				<div class="swiper-slide col-12 bg-navy" style="background: url('../img/main-visual-img-01.png') no-repeat;">
					<div class="sub-row" style="margin-top:120px;">
						<div class="col-6 mobile-100-percent">
							<div class="col-12 px-5 py-5 rad-div-20" style="background-color:rgba(255, 255, 255, 0.7);">
								<ul>
									<li class="font-black font-bold font-40 my-3">Чиний зүүдэнд<br>Би чамд далавч өгье.</li>
									<li class="line-2-black mt-1" style="width:100px;"></li>
									<li class="font-black font-18 my-3">Дэлхийн хамгийн үзэсгэлэнтэй нислэг "Нислэгийн үйлчлэгч"</li>
									<li class="font-black font-18 my-3"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
<!-- 				<div class="swiper-slide col-12 bg-navy" style="background: url('../img/intro-wid-ban-bg.jpg') no-repeat;">
					<div class="sub-row" style="margin-top:90px;">
						<div class="col-6 mobile-100-percent">
							<div class="col-12 px-5 py-5 rad-div-20" style="background-color:rgba(255, 255, 255, 0.7);">
								<ul>
									<li class="font-black font-bold font-40 my-3">11-р сард<br>ANC Нислэгийн үйлчлэгчийн академи<br>Нисэж эхлээрэй.</li>
									<li class="line-2-black mt-1" style="width:100px;"></li>
									<li class="font-black font-18 my-3">Дэлхийн хамгийн үзэсгэлэнтэй нислэг "Нислэгийн үйлчлэгч"</li>
									<li class="font-black font-18 my-3"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide col-12 bg-navy" style="background: url('../img/main-visual-img-03.png') no-repeat;">
					<div class="sub-row" style="margin-top:90px;">
						<div class="col-6 mobile-100-percent">
							<div class="col-12 px-5 py-5 rad-div-20" style="background-color:rgba(255, 255, 255, 0.7);">
								<ul>
									<li><p class="mb-3"><img src="/img/mongo.png" width="100px" class="border mx-1"><img src="/img/korea.png" width="100px" class="border mx-1"></li>
									<li><p class="font-40">Солонгостой <br>конвенц</p></li>
									<li class="line-2-black my-3" style="width:200px"></li>
									<li><p class="font-16 my-4 font-gray">ANC нь Солонгосын ANC-тай хамтран агаарын тээврийн бүх үйлчлэгч элсүүлэх болон газар дээрх багийн ажилд авах агентлагуудыг нэгэн зэрэг дэмжиж ажилладаг.</p></li>
								</ul>
							</div>
						</div>
					</div>
				</div>	 -->
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
</div>

<!-- laptop main visual -->
<div class="container-fluid main-visual off-hide mobile-show">
	<div class="row">
		<div class="swiper-container" id="sw-main-visual">
			<div class="swiper-wrapper">
				<div class="swiper-slide col-12 bg-navy" style="background: url('../img/main-visual-img-01.png') no-repeat;">
					<div class="sub-row" style="margin-top:90px;">
						<div class="col-6 mobile-100-percent">
							<!-- <div class="col-12 px-5 py-5 rad-div-20" style="background-color:rgba(255, 255, 255, 0.7);">
								<ul>
									<li class="font-black font-bold font-40 my-3">Чиний зүүдэнд<br>Би чамд далавч өгье.</li>
									<li class="line-2-black mt-1" style="width:100px;"></li>
									<li class="font-black font-18 my-3">Дэлхийн хамгийн үзэсгэлэнтэй нислэг "Нислэгийн үйлчлэгч"</li>
									<li class="font-black font-18 my-3"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li>
								</ul>
							</div> -->
						</div>
					</div>
				</div>
				<div class="swiper-slide col-12 bg-navy" style="background: url('../img/intro-wid-ban-bg.jpg') no-repeat;">
					<div class="sub-row" style="margin-top:90px;">
						<div class="col-6 mobile-100-percent">
							<!-- <div class="col-12 px-5 py-5 rad-div-20" style="background-color:rgba(255, 255, 255, 0.7);">
								<ul>
									<li class="font-black font-bold font-40 my-3">11-р сард<br>ANC Нислэгийн үйлчлэгчийн академи<br>Нисэж эхлээрэй.</li>
									<li class="line-2-black mt-1" style="width:100px;"></li>
									<li class="font-black font-18 my-3">Дэлхийн хамгийн үзэсгэлэнтэй нислэг "Нислэгийн үйлчлэгч"</li>
									<li class="font-black font-18 my-3"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li>
								</ul>
							</div> -->
						</div>
					</div>
				</div>
				<div class="swiper-slide col-12 bg-navy" style="background: url('../img/main-visual-img-03.png') no-repeat;">
					<div class="sub-row" style="margin-top:90px;">
						<div class="col-6 mobile-100-percent">
							<!-- <div class="col-12 px-5 py-5 rad-div-20" style="background-color:rgba(255, 255, 255, 0.7);">
								<ul>
									<li><p class="mb-3"><img src="/img/mongo.png" width="100px" class="border mx-1"><img src="/img/korea.png" width="100px" class="border mx-1"></li>
									<li><p class="font-40">Солонгостой <br>конвенц</p></li>
									<li class="line-2-black my-3" style="width:200px"></li>
									<li><p class="font-16 my-4 font-gray">ANC нь Солонгосын ANC-тай хамтран агаарын тээврийн бүх үйлчлэгч элсүүлэх болон газар дээрх багийн ажилд авах агентлагуудыг нэгэн зэрэг дэмжиж ажилладаг.</p></li>
								</ul>
							</div> -->
						</div>
					</div>
				</div>	
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
</div>


<script>
var mainvisualSwiper = new Swiper('#sw-main-visual', {
	loop : true,
	centeredSlides : true,
	speed : 800,
	autoplay: { delay: 7000, disableOnInteraction: false, },
	pagination: {
    el: '.swiper-pagination', clickable: true,
  },
	navigation : {
		nextEl : '#sw-main-visual-silde-next',
		prevEl : '#sw-main-visual-silde-prev',
	},
});
</script>




