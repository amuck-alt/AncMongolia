<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="containter-fluid py-5 bg-skyblue" id="containter-body">
	<div class="row sub-row">
		<div class="col-12">
			<div class="swiper-container sw-main-quick-container">
				<ul class="swiper-wrapper">
					<li class="swiper-slide mx-1 my-2">
						<div class="col-12 rad-div-10 border bg-navy" style="height:230px;">
							<ul class="py-4 px-4">
								<li class="font-16 font-white">Үндсэн утас</li>
								<li class="font-30 my-2 font-yellow">XXX-XXXX-XXXX</li>
								<li class="font-14 font-gray">Мөн амралтын өдрүүд/амралтын өдрүүдэд зөвлөгөө авах боломжтой.</li>
								<li class="font-black font-18 mt-3"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li>
							</ul>
						</div>
					<li class="swiper-slide mx-1 my-2 div-hover">
						<div class="col-12 bg-white rad-div-10 border" style="background:url('/img/main-img-banner-001.png') no-repeat top; height:230px;">
							<ul class="py-4 px-4">
								<li class="font-16 font-black">Anc Mongolia</li>
								<li class="font-28 my-2 font-pink">Хөдөлмөрийн<br>яармаг</li>
								<li class="font-14 font-gray">Хөдөлмөрийн яармаг сар бүрийн<br>эхний Даваа гарагт нээгддэг.</li>
								<!-- <li class="font-black font-18 mt-3"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li> -->
							</ul>
						</div>
					</li>
					<li class="swiper-slide mx-1 my-2 div-hover">
						<div class="col-12 bg-white rad-div-10 border" style="height:230px;">
							<ul class="py-4 px-4">
								<li><p class="mb-3"><img src="/img/mongo.png" width="50px" class="border mx-1"><img src="/img/korea.png" width="50px" class="border mx-1"></li>
								<li class="font-24 my-2 font-navy">Солонгостой конвенц</li>
								<li class="font-14 font-gray">Хөдөлмөрийн яармаг сар бүрийн эхний Даваа гарагт нээгддэг.</li>
								<!-- <li class="font-black font-18 mt-3"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li> -->
							</ul>
						</div>
					</li>
				</ul>
				<div class="col-12 py-2 text-center main-review-swiper-pagination"></div>
			</div>
		</div>
	</div>
</div>
<div class="col-12"></div>
<script>
if ($(window).width() > 768) {
	var quickMenuSwiper = new Swiper('.sw-main-quick-container', {
		slidesPerView : 3.1,
	});
}else if ($(window).width() > 470) {
	var quickMenuSwiper = new Swiper('.sw-main-quick-container', {
		slidesPerView : 2.2,
	});
}else{
	var quickMenuSwiper = new Swiper('.sw-main-quick-container', {
		slidesPerView : 1.5,
	});
}

</script>