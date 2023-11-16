<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
h1 {
  text-align: center;
  font-size: 35px;
  font-size: 2.1875rem;
  line-height: 1.8;
  padding: 50px 0;
}

.accordion {
	list-style:none;
	padding:0;	
  /*max-width: 560px;*/
  margin: 20px auto 100px 45px;

}
.accordion li {
	list-style:none;
  float:left;
  display:inline-block;
}
.accordion li p {
  display: none;
  padding: 80px 25px 30px;
  /*color: #6b97a4;*/
}
.accordion a {
  width: 100%;
  display: block;
  cursor: pointer;
  line-height: 3;
  font-size: 14px;
  font-size: 0.875rem;
  text-indent: 15px;
  user-select: none;
}
.accordion a:after {
  width: 8px;
  height: 8px;
  border-right: 1px solid #4a6e78;
  border-bottom: 1px solid #4a6e78;
  position: absolute;
  right: 80px;
  content: "";
  top: 353px;
  transform: rotate(-45deg);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
.accordion p {
  font-size: 13px;
  font-size: 0.8125rem;
  line-height: 2;
  padding: 10px;
}

a.active:after {
  transform: rotate(45deg);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

.review-hvr a {
  position: relative;
  top:-6.2em;
  right:-13em;
}
.review-hvr2 a {
  position: relative;
}
.review-hvr a span {
  position: absolute;
  width: 14px;
  height: 14px;
  top:62%;
  right:1%;
  border-left: 1px solid #ffffff;
  border-bottom: 1px solid #ffffff;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  -webkit-animation: sdb 2s infinite;
  animation: sdb 2s infinite;
  opacity: 0;
  box-sizing: border-box;
}
.review-hvr a span:nth-of-type(1) {
  -webkit-animation-delay: 0s;
  animation-delay: 0s;
}
.review-hvr a span:nth-of-type(2) {
margin-top: 8px;
  -webkit-animation-delay: .15s;
  animation-delay: .15s;
}
.review-hvr a span:nth-of-type(3) {
margin-top: 16px;
  -webkit-animation-delay: .3s;
  animation-delay: .3s;
}
@-webkit-keyframes sdb {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}
@keyframes sdb {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}

.video-popup.reveal {
	display: flex;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	justify-content: center;
	align-items: center;
	z-index: 9
}

.video-popup .video-wrapper {
	position: relative;
	width: 70%;
	padding-bottom: 45%;
	z-index: 10
}

.video-popup .video-wrapper iframe {
	position: absolute;
	width: 100%;
	height: 100%;
}

.video-popup.reveal .video-popup-closer {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .5);
	z-index: 9
}
</style>

<div class="container-fluid bg-ivory pt-5" id="containter-body">
	<div class="row py-5 main-interview-row">
		<div class="col-12">
			<div id="player">
				<iframe width="1100px" height="620px" src="https://www.youtube.com/embed/hwj-ZPUxi2w?start=7&autoplay=" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div id="player-txt">
				<p class="font-24 my-2 px-3" style="line-height:2.5rem;">2020학년도 인하공전 항공운항과, 한서대 항공관광학과 ALL-PASS</p>
			</div>			
		</div>
		<div class="col-12 my-4">
			<div class="swiper-container" id="main-review-swiper-thumbnail">
				<div class="swiper-wrapper">
					<div class="swiper-slide px-2"><a href="javascript:playYoutube('hwj-ZPUxi2w', '2020학년도 인하공전 항공운항과, 한서대 항공관광학과 ALL-PASS')"><img src="/img/main-review-gallery-001.jpg" width="100%"></a></div>
					<div class="swiper-slide px-2"><a href="javascript:playYoutube('X-IH1jcq2lM', '2020 연성대 항공서비스과 수시2 합격')"><img src="/img/main-review-gallery-002.jpg" width="100%"></a></div>
					<div class="swiper-slide px-2"><a href="javascript:playYoutube('ZKLNd6tj7I8', '인하공전 항공운항과 합격')"><img src="/img/main-review-gallery-003.jpg" width="100%"></a></div>
					<div class="swiper-slide px-2"><a href="javascript:playYoutube('PklvOGl0taA', '2019 연성대 항공서비스과 수시2차 합격')"><img src="/img/main-review-gallery-004.jpg" width="100%"></a></div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>

function playYoutube(obj, txt){
	$('#player iframe').show().attr("src", "https://www.youtube.com/embed/" + obj + "?autoplay=&start=7");
	$('#player-txt p').text(txt);
}

if ($(window).width() > 768) {
	var reviewThumbSwiper = new Swiper('#main-review-swiper-thumbnail', {
		//loop : true,
		slidesPerView : 3.2,
	   //autoplay: { delay: 3000, disableOnInteraction : false, }
	});
}else{
	$(document).ready(function() {
		$('#player iframe').css('width', $(window).width());
		$('#player iframe').css('height', '250px');
	});
	var reviewThumbSwiper = new Swiper('#main-review-swiper-thumbnail', {
		loop : true,
		slidesPerView : 2.2,
	   autoplay: { delay: 3000, disableOnInteraction : false, }
	});
}

</script>

<!-- 합격생부분 시작 -->
<!-- 타이틀 시작 -->
<div class="container-fluid bg-ivory" id="containter-body">
	<div class="row main-review-row">
		<div class="col-12 text-center py-5 mt-5 mobile-hidden"></div>
	</div>
</div>
<div class="container-fluid bg-ivory mobile-hidden">
	<div class="row pass-banner-row mobile-100-percent">
		<div class="col-12 text-left" style="left: 18%; top: 64%;">
			<span class="font-140-m counter" style="color: #ec0889"><b>814</b></span>
		</div>
	</div>
</div>
<!-- 타이틀 끝 -->

<!-- 본문 시작 -->
<div class="container-fluid bg-curbgc mobile-hidden">
	<div class="row pass2-banner-row pt-4">
		<div class="col-12 pt-3">
			<ul class="accordion">
				<div class="col-4"><img src="/img/main-review-img-01.png" alt="배진아"><li>
						<a><span style="color: #fc93d1" class="px-6">합격후기 자세히보기</span></a>
						<div style="position: absoiute; margin-left: -20px;">
							<p>
								<img src="/img/main-reivew-inter-01.png" style="margin-top:-80px;">
							</p>
						</div></li>
				</div>
				<div class="col-4"><img src="/img/main-review-img-02.png" alt="김예원"><li>
						<a><span style="color: #fc93d1" class="px-6">합격후기 자세히보기</span></a>
						<div style="position: absoiute; margin-left: -300px;">
							<p>
								<img src="/img/main-reivew-inter-02.png" style="margin-top:-80px;">
							</p>
						</div></li>
				</div>
				<div class="col-4"><img src="/img/main-review-img-03.png" alt="함선영"><li>
						<a><span style="color: #fc93d1" class="px-6">합격후기 자세히보기</span></a>
						<div style="position: absoiute; margin-left: -580px;">
							<p>
								<img src="/img/main-reivew-inter-03.png" style="margin-top:-80px;">
							</p>
						</div></li>
				</div>
			</ul>
		</div>
	</div>
</div>
<div class="container-fluid bg-curbgc mobile-hidden">
	<div class="row pass2-banner-row pt-4">
		<div class="col-12 pt-3">
			<ul class="accordion">
				<div class="col-4"><img src="/img/main-review-img-04.png" alt="조윤채"><li>
						<a><span style="color: #fc93d1" class="px-6">합격후기 자세히보기</span></a>
						<div style="position: absoiute; margin-left: -20px;">
							<p>
								<img src="/img/main-reivew-inter-04.png" style="margin-top:-80px;">
							</p>
						</div></li>
				</div>
				<div class="col-4"><img src="/img/main-review-img-05.png" alt="유서연"><li>
						<a><span style="color: #fc93d1" class="px-6">합격후기 자세히보기</span></a>
						<div style="position: absoiute; margin-left: -300px;">
							<p>
								<img src="/img/main-reivew-inter-05.png" style="margin-top:-80px;">
							</p>
						</div></li>
				</div>
				<div class="col-4"><img src="/img/main-review-img-06.png" alt="정소미"><li>
						<a><span style="color: #fc93d1" class="px-6">합격후기 자세히보기</span></a>
						<div style="position: absoiute; margin-left: -580px;">
							<p>
								<img src="/img/main-reivew-inter-06.png" style="margin-top:-80px;">
							</p>
						</div></li>
				</div>
			</ul>
		</div>
	</div>
</div>

<div class="container-fluid bg-light-gray-v2 mobile-hidden">
	<div class="row event-banner-row py-5 px-5 text-center mobile-100-percent">
		<div class="col-12 text-center">
			<img src="/img/main-pass-sub-img02.png" class="mobile-100-percent">
		</div>
	</div>
</div>

<div class="container-fluid bg-light-gray-v2 mobile-hidden">
	<div class="row event-banner-row py-3 px-5 mobile-100-percent">
		<div class="col-12 text-center">
			<ul>
				<li class="review-hvr2 pb-5"><a><img src="/img/main-pass-sub-icon.png" style="margin-top:-30px;"></a>
					<ul class="review-sid" id="hide">
							<img src="/img/main-pass-sub-img01.png" class="mobile-100-percent">
					</ul></li>
			</ul>
		</div>
	</div>
</div>

<!--ul>
					<li class="review-hvr pb-5 ">
						<ul class="review-sid text-center" id="hide">
							<div class="container-fluid">
								<div class="row pass2-banner-row" style="margin-left:-33px;">
									<div class="col-12 py-3">
										<div class="col-3 px-3"><p class="font-lightpink font-light-thin font-14-m my-2"><b>Q.</b><br>합격을 축하합니다<br>소감 한마디 해주세요</p>
										<div class="line-1-gray my-2 px-3" style="width: 100%; margin: 0 auto;"></div>
										<p class="font-white font-thin font-14-m my-2"><b>A.</b><br>제가 정말 기대를 안했던 학교이기 때문에 합격을 늦게 확인했어요! 합격이란 글자를 보고 너무 믿기지 않았고 로리쌤께 연락해 함께 기쁨을 나눴습니다! 대학교에 가서도 이 감동을 그대로 이어 열심히 대학생활을 하겠습니다!</p></div>
										<div class="col-3 px-3"><p class="font-lightpink font-light-thin font-14-m my-2"><b>Q.</b><br>면접 당일 어땠는지<br>말씀해 주세요</p>
										<div class="line-1-gray my-2 px-3" style="width: 100%; margin: 0 auto;"></div>
										<p class="font-white font-thin font-14-m my-2"><b>A.</b><br>저는 평소보다 더 떨지 않고 면접장에 들어갔던 것 같습니다 면접장에 교수님께서도 분위기가 좋았고 제가 받았던 세 질문 모두 제가 준비를 열심히 했던 질문이라 어렵지 않게 대답할 수 있었습니다!</p></div>
										<div class="col-3 px-3"><p class="font-lightpink font-light-thin font-14-m my-2"><b>Q.</b><br>면접준비는<br>어떻게 하셨나요?</p>
										<div class="line-1-gray my-2 px-3" style="width: 100%; margin: 0 auto;"></div>
										<p class="font-white font-thin font-14-m my-2"><b>A.</b><br>저는 작년 5월 크루팩토리에서 정규반 수업이 끝나고 재수강 수업, 모의면접 등 열심히 참여하였습니다 그리고 레벨테스트와 예승대회 등 학원 행사에는 빠지지 않고 참여하려고 노력하였습니다</p></div>
										<div class="col-3 px-3"><p class="font-lightpink font-light-thin font-14-m my-2"><b>Q.</b><br>후배들에게<br>한마디 해준다면?</p>
										<div class="line-1-gray my-2 px-3" style="width: 100%; margin: 0 auto;"></div>
										<p class="font-white font-thin font-14-m my-2"><b>A.</b><br>저는 Advance반이였다가 Basic반으로 떨어졌었습니다 결과를 듣고 많이 당황스럽고 좌절감도 들었지만 여러분들도 끝까지 포기하지 않고 열심히 하다보면 꼭 좋은 결과가 있을거라 생각합니다 크루팩토리 화이팅!!</p></div>
									</div>
								</div>
							</div>
						</ul></li>
				</ul-->


<div class="container-fluid mobile-show">
	<div class="row event-banner-row py-5 mobile-100-percent">
		<div class="col-12">
				<a href="/crewpeople/review.do"><img src="/img/main-pass-m-img.png" id="mobile-100-percent"></a>
		</div>
	</div>
</div>

<div class="container-fluid bg-dark-navy mobile-show">
	<div class="row event-banner-row py-5 mobile-100-percent">
		<div class="col-12">
			<div class="col-6">
				<a href="javascript:viewModal('/img/main-reivew-modal-01.png')"><img src="/img/main-review-img-01.png" id="mobile-100-percent"></a>
			</div>
			<div class="col-6">
				<a href="javascript:viewModal('/img/main-reivew-modal-02.png')"><img src="/img/main-review-img-02.png" id="mobile-100-percent"></a>
			</div>
		</div>
				<div class="col-12">
			<div class="col-6">
				<a href="javascript:viewModal('/img/main-reivew-modal-03.png')"><img src="/img/main-review-img-03.png" id="mobile-100-percent"></a>
			</div>
			<div class="col-6">
				<a href="javascript:viewModal('/img/main-reivew-modal-04.png')"><img src="/img/main-review-img-04.png" id="mobile-100-percent"></a>
			</div>
		</div>
				<div class="col-12">
			<div class="col-6">
				<a href="javascript:viewModal('/img/main-reivew-modal-05.png')"><img src="/img/main-review-img-05.png" id="mobile-100-percent"></a>
			</div>
			<div class="col-6">
				<a href="javascript:viewModal('/img/main-reivew-modal-06.png')"><img src="/img/main-review-img-06.png" id="mobile-100-percent"></a>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid bg-light-gray-v2 mobile-show">
	<div class="row event-banner-row py-5 text-center mobile-100-percent">
		<div class="col-12 text-center">
			<img src="/img/main-pass-sub-img02.png" class="mobile-100-percent">
		</div>
	</div>
</div>

<div class="container-fluid bg-light-gray-v2 mobile-show">
	<div class="row event-banner-row py-3 mobile-100-percent">
		<div class="col-12 text-center">
			<ul>
				<li class="review-hvr2 pb-5"><a><img src="/img/main-pass-sub-icon.png" style="margin-top:-30px;"></a>
					<ul class="review-sid" id="hide">
							<img src="/img/main-pass-sub-img01.png" class="mobile-100-percent">
					</ul></li>
			</ul>
		</div>
	</div>
</div>
<!-- 본문 끝 -->
<!-- 합격생부분 끝 -->

<div class="container-fluid bg-light-gray-v2">
	<div class="row main-row">
		<div class="col-12 text-center">
			<a href="/crewpeople/hof.do"><img src="/img/btn-go-hof-img.png" alt="명예의전당 바로가기" class="my-4"></a>
		</div>
	</div>
</div>

<div class="container-fluid bg-curbgc">
	<div class="row main-row">
		<div class="slick mb-1" id="std-pic-swiper">
			<div class="slick-slide my-3"><img src="/img/std-slide-0001.png" class="mobile-100-percent"></div>
			<div class="slick-slide my-3"><img src="/img/std-slide-0002.png" class="mobile-100-percent"></div>
			<div class="slick-slide my-3"><img src="/img/std-slide-0003.png" class="mobile-100-percent"></div>
			<div class="slick-slide my-3"><img src="/img/std-slide-0004.png" class="mobile-100-percent"></div>
			<div class="slick-slide my-3"><img src="/img/std-slide-0005.png" class="mobile-100-percent"></div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {
		$('#std-pic-swiper').slick({
			autoplay : true,
			vertical : true,
			slidesToShow : 1,
			slidesToScroll : 1,
			arrows : false,
			fade : false,
		});
	});
</script>

<script>
(function($) {
    $('.accordion > li:eq(0) a').addClass('.accordion').next().slideUp();

    $('.accordion a').click(function(j) {
        var dropDown = $(this).closest('li').find('p');

        $(this).closest('.accordion').find('p').not(dropDown).slideUp();

        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).closest('.accordion').find('a.active').removeClass('active');
            $(this).addClass('active');
        }

        dropDown.stop(false, true).slideToggle();

        j.preventDefault();
    });
})(jQuery);
</script>

<script>
$(".review-sid").css('display','none');
$(document).ready(function(){
    $(".review-hvr>a").click(function(){
        var submenu = $(this).next("ul");
        if( submenu.is(":visible") ){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });
});
$(".review-sid").css('display','none');
$(document).ready(function(){
    $(".review-hvr2>a").click(function(){
        var submenu = $(this).next("ul");
        if( submenu.is(":visible") ){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });
});
</script>

<script type="text/javascript">
	$(".popupVideo a")
					.click(
							function() {
										$(".video-popup").addClass("reveal"),
										$(".video-popup .video-wrapper")
												.remove(),
										$(".video-popup")
												.append(
														"<div class='video-wrapper'><iframe width='560' height='315' src='https://youtube.com/embed/"
																+ $(this)
																		.data(
																				"video")
																+ "?rel=0&playsinline=1&autoplay=1' allow='autoplay; encrypted-media' allowfullscreen></iframe></div>")
							}), $(".video-popup-closer").click(
					function() {
						$(".video-popup .video-wrapper").remove(), $(
								".video-popup").removeClass("reveal")
					});

	function viewDetailReview(title, gubun, thumbnail, age, spec, gradlv,
			langlv, reference, description) {
		var txt = "";
		if (gubun == 'ke') {
			txt = "인하공업전문대학";
		} else if (gubun == 'oz') {
			txt = "수원과학대학교";
		} else {
			txt = "연성대학교";
		}
		$("#review-ko-gubun").text(txt);
		$("#review-ko-title").text(title);
		$("#review-ko-thumbnail").attr("src", thumbnail);
		$("#review-ko-age").text(age);
		$("#review-ko-spec").text(spec);
		$("#review-ko-gradlv").text(gradlv.substring(0, 20));
		$("#review-ko-langlv").text(langlv.substring(0, 20));
		$("#review-ko-reference").text(reference.substring(0, 20));
		$("#review-ko-description").text(description);
		$("#review-ko-description-m").text(description);
	}

	function viewDetailReviewOs(title, gubun, thumbnail, age, spec, gradlv,
			langlv, reference, description) {
		var txt = "";
		if (gubun == 'ea') {
			txt = "한서대학교";
		} else if (gubun == 'eu') {
			txt = "극동대학교";
		} else {
			txt = "중부대학교";
		}
		$("#review-os-gubun").text(txt);
		$("#review-os-title").text(title);
		$("#review-os-thumbnail").attr("src", thumbnail);
		$("#review-os-age").text(age);
		$("#review-os-spec").text(spec.substring(0, 20));
		$("#review-os-gradlv").text(gradlv.substring(0, 10));
		$("#review-os-langlv").text(langlv.substring(0, 10));
		$("#review-os-reference").text(reference.substring(0, 10));
		$("#review-os-description").text(description);
		$("#review-os-description-m").text(description);
	}

	function clickReviewKo(code) {
		var key = "." + code;
		if (code == 'ke') {
			$('#review-section-ke').addClass('activing');
			$('#review-section-oz').removeClass('activing');
			$('#review-section-ko').removeClass('activing');
		} else if (code == 'oz') {
			$('#review-section-oz').addClass('activing');
			$('#review-section-ke').removeClass('activing');
			$('#review-section-ko').removeClass('activing');
		} else if (code == 'ko') {
			$('#review-section-ko').addClass('activing');
			$('#review-section-ke').removeClass('activing');
			$('#review-section-oz').removeClass('activing');
		} else {
			$('#review-section-ke').removeClass('activing');
			$('#review-section-oz').removeClass('activing');
			$('#review-section-ko').removeClass('activing');
		}

		$('.slk-main-review-ko-1').slick('slickUnfilter');
		$('.slk-main-review-ko-1').slick('slickFilter', key).slick('refresh');
		$('.slk-main-review-ko-1').slick('slickGoTo', 0);

	}

	function clickReviewOs(code) {
		var key = "." + code;
		if (code == 'ea') {
			$('#review-section-ea').addClass('activing');
			$('#review-section-eu').removeClass('activing');
			$('#review-section-as').removeClass('activing');
		} else if (code == 'eu') {
			$('#review-section-eu').addClass('activing');
			$('#review-section-ea').removeClass('activing');
			$('#review-section-as').removeClass('activing');
		} else {
			$('#review-section-as').addClass('activing');
			$('#review-section-ea').removeClass('activing');
			$('#review-section-eu').removeClass('activing');
		}

		$('.slk-main-review-os-1').slick('slickUnfilter');
		$('.slk-main-review-os-1').slick('slickFilter', key).slick('refresh');
		$('.slk-main-review-os-1').slick('slickGoTo', 0);

	}

	$(document).ready(function() {
		$('.slk-main-review-ko-1').slick({
			autoplay : true,
			slidesToShow : 7,
			slidesToScroll : 3,
			//centerMode:true,
			arrows : false,
			fade : false,
			responsive : [ {
				breakpoint : 960,
				settings : {
					slidesToShow : 5
				}
			}, {
				breakpoint : 768,
				settings : {
					slidesToShow : 3,
					centerMode : true,
					arrows : false
				}
			} ]
		});

		$('.slk-main-review-os-1').slick({
			autoplay : true,
			slidesToShow : 7,
			slidesToScroll : 3,
			//centerMode:true,
			arrows : false,
			fade : false,
			responsive : [ {
				breakpoint : 960,
				settings : {
					slidesToShow : 5
				}
			}, {
				breakpoint : 768,
				settings : {
					slidesToShow : 3,
					centerMode : true,
					arrows : false
				}
			} ]
		});
	});

</script>




