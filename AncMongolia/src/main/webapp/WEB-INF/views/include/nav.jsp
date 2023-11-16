<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>

</style>

<script>
	$(document).ready(function() {
		$("#gnb-menu").hover(function() {
			$("#snb-menu-pc").stop().slideDown(200);
		}, function() {
			$("#snb-menu-pc").stop().slideUp(200);
		});
		$("#snb-menu-pc").hover(function() {
			$("#snb-menu-pc").stop().slideDown(200);
		}, function() {
			$("#snb-menu-pc").stop().slideUp(200);
		});
	});
	
	function body_zoomin() {
		zoomx = zoomx + 10;
		$("body").css("zoom", zoomx + "%");
	}
	function body_zoomout() {
		zoomx = zoomx - 10;
		$("body").css("zoom", zoomx + "%");
	}
	function body_zoomdef() {
		zoomx = 100;
		$("body").css("zoom", zoomx + "%");
	}
	function newWin(url, w, h) {
		window.open(url, 'new_win', 'width=' + w + ',height=' + h
				+ ',toolbars=no,menubars=no,scrollbars=auto');
	}

</script>


<!--<div class="container-fluid bg-yellow top-banner" id="containter-body">
	<div class="row main-row bg-yellow">
		<div class="col-12 text-center" id="top-banner-img-cont">
			<div class="col-12" id="mobile-100-percent">
				<a href="" data-toggle="modal" data-target="#coronaModal"><img src="/img/corona_top_banner_01.png" class="mobile-100-percent"></a>
			</div>
			<div class="top-banner-btn-x">
				<a href="javascript:hideTopBanner();"><img src="/img/corona_top_banner_03.png"></a>
			</div>
		</div>
	</div>
</div> -->

<script>
	$(document).ready(function() {
		var topbarsession = sessionStorage.getItem("8defd9dl");
		if(topbarsession == "close"){
			$(".top-banner").hide();
		}
	});

	function hideTopBanner(){
		$(".top-banner").hide(300);
		sessionStorage.setItem("8defd9dl", "close");
		//alert(sessionStorage.getItem("8defd9dl"));
	}
</script>

<!-- Common Top Menu Start -->
<header id="head">
	<div class="head-row">
		<div class="col-6 align-middle">
			<div class="logo" style="padding-top: 20px;">
				<a href="/"><img src="../img/anc-mongolia.png" width="45%"></a>
				<h1 class="hide">Anc Mongolia</h1>
			</div>
		</div>
		<div class="col-6 text-right">
			<div class="campus py-2 line-1-gray">
				<ul>
					<li><a href="/">Job Information</a></li>
					<li><a href="https://www.anc.co.kr/" target="_blank">Anc Korea</a></li>
				</ul>
			</div>
			<div class="col-12 outlink py-2">
				<ul>
					<li style="width: 360px;">
						<div class="col-4">
							<label class="sm-label font-10">Schedule</label>
						</div>
						<div class="col-8 text-left pl-3 pt-1 off-hide" style="height:30px;">
							<div class="swiper-container sw-open-class">
								<div class="swiper-wrapper"> 								    
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink">Cabin Crew</span>&nbsp;&nbsp;Ажлын өдөр&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>10/12</b></div>
								</div>
							</div>
						</div>
					</li>
					<li class="float-left font-16 font-bold mr-2">
						<c:choose>
							<c:when test="${!empty sessionScope.crewfactoryMemberInfo}"><a href="/member/logout.do">Logout</a></c:when>
							<c:otherwise><a href="/member/login.do">Login</a></c:otherwise>
						</c:choose>
					</li>
					<li class="float-left"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="/img/sns-facebook-ico-bl.png"></a></li>
					<li class="float-left"><a href="https://www.instagram.com/ancrewfactory_fly" target="_blank"><img src="/img/sns-instagram-ico-bl.png"></a></li>
					<li><a href="http://pf.kakao.com/_sxoFhG" target="_blank"><img src="/img/sns-kakao-ico-bl.png"></a></li>
					<!--<li><a href="https://blog.naver.com/crewfac101" target="_blank"><img src="/img/sns-naver-ico-bl.png"></a></li> -->
				</ul>
			</div>
		</div>
	</div>
</header>

<script>
    var openClassSwiper = new Swiper('.sw-open-class', {
     
      speed : 200, 
      loop: true,
		autoplay: { delay : 2000 }
    });
</script>

<nav class="container-fluid line-1-gray mobile-hidden">
	<div class="row gs-row mt-1">
		<ul class="col-12 gnb-menu" id="gnb-menu" style="height:45px;">
			<li class="float-left font-16 font-bold"><a href="/introduce/intro.do" class="">Anc танилцуулга</a></li><!-- Anc -->
			<li class="float-left font-16 font-bold"><a href="/education/domestic.do">Хичээлийн хөтөлбөр</a></li><!-- Education -->
			<li class="float-left font-16 font-bold"><a href="/support/jobforairportinjapan.do" class="">Хөдөлмөр эрхлэлт</a><label class="ml-2 hot-dot"></label></li><!-- Job -->
			<li class="float-left font-16 font-bold"><a href="/crewpeople/moment.do" class="">Олон нийтийн сүлжээ</a><label class="ml-2 hot-dot"></label></li><!-- Community -->
			<li class="float-left font-16 font-bold"><a href="/counsel/online.do" class="">Зөвлөгөө өгөх</a></li><!-- Counseling -->
		</ul>
	</div>
</nav>

<section id="snb-menu-pc" style="width:100%; display:none;">
	<div class="container-fluid bg-white line-1-gray">
		<div class="row snb-row">
			<div class="col-12 mb-2" id="snb-wrap">
				<ul style="margin:0 auto;">
					<li class="my-3">
						<ul class="font-15">
							<li class="py-2"><a href="/introduce/intro.do">Боловсролын философи</a></li>
							<li class="py-2"><a href="/introduce/pro.do">Багшийн танилцуулга</a></li>
							<li class="py-2"><a href="/introduce/facil.do">Боловсролын<br>байгууламж</a></li>
							<li class="py-2"><a href="/introduce/corw.do">Хамтарсан компани</a></li>
							<li class="py-2"><a href="/introduce/map.do">Байршил</a></li>
						</ul>
					</li>
					<li class="my-3">
						<ul class="font-15">
							<li class="py-2"><a href="/education/domestic.do">Дотоодын агаарын<br>тээврийн онгоцны<br>үйлчлэгчийн сургалт</a></li>
							<li class="py-2"><a href="/education/overseas.do">Гадаадын агаарын<br>тээврийн онгоцны<br>үйлчлэгчийн сургалт</a></li>
							<li class="py-2"><a href="/education/groundcrew.do">Нисэх онгоцны<br>буудлын газрын<br>ажилчдыг ажилд авна</a></li>
							<li class="py-2"><a href="/education/personal.do">Онгоцны үйлчлэгчийн<br>хувийн хичээл</a></li>
						</ul>
					</li>
					<li class="my-3">
						<ul class="font-15 font-normal font-black">
							<li class="py-2"><a href="/support/jobforairportinjapan.do">Японы нисэх онгоцны<br>буудлын ажил эрхлэлт</a></li>
							<li class="py-2"><a href="/recruit/list.do">Ажил эрхлэлт</a></li>
						</ul>
					</li>
					<li class="my-3">
						<ul class="font-15 font-normal font-black">
							<li class="py-1"><a href="/crewpeople/weare.do">ANC People</a></li>
							<li class="py-1"><a href="/crewpeople/moment.do">ANC Moment</a>
							<li class="py-1"><a href="/">Interview</a>
						</ul>
					</li>
					<li class="my-3">
						<ul class="font-15 font-normal font-black">
							<li class="py-1"><a href="/counsel/online.do">Зөвлөгөө авах хүсэлт</a></li>
							<li class="py-1"><a href="/news/announce.do">Мэдэгдэл</a></li>
							<li class="py-1"><a href="/counsel/faq.do">FAQ</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-ivory ling=1-gray" style="background:url('/img/main-teacherbanner-bg-01.jpg') no-repeat center;">
		<div class="row gs-row">
			<div class="col-12 py-5" style="background:url('/img/edu-gs-img-banner-001.png') no-repeat right; height:300px;">
				<ul class="col-12">
				<li class="col-12 float-left font-30 font-white font-bold my-3">Энд ирэх тэр мөчид онгоцны үйлчлэгч гэдэг<br>мөрөөдөл байхаа больсон.</li>
				<li class="col-12 font-18"><a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a></li>
			</ul>
			</div>
		</div>
	</div>
</section>


<!-- 모바일용글로벌메뉴 -->
<div class="container-fluid mobile-show pc-hidden">
	<div class="row">
		<div class="col-12 line-1-gray" style="height:35px;">
			<div class="col-3 bg-navy font-14 font-white text-center" style="height:100%; padding-top:7px;">Schedule</div>
			<div class="col-5 px-2 font-14" style="padding-bottom: 5px; height:100%; padding-top:7px;">				
				<div class="swiper-container sw-open-class-m">
					<div class="swiper-wrapper">					
						<div class="swiper-slide px-1"><span class="font-pink">Cabin Crew</span>&nbsp;&nbsp;Ажлын өдөр&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>10/12</b></div>
						<div class="swiper-slide px-1"><span class="font-pink">Ground Crew</span>&nbsp;&nbsp;Ажлын өдөр&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>10/01</b></div>
						<div class="swiper-slide px-1"><span class="font-pink">Invitational</span>&nbsp;&nbsp;Ажлын өдөр&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>10/12</b></div>
					</div>
				</div>
			</div>
			<div class="col-4 float-right" style="padding-top:7px;">
				<ul class="col-12 text-right">	
					<li class="float-right" style="margin-right:10px;"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="../img/sns-facebook-ico-bl.png" width="100%"></a></li>
					<li class="float-right" style="margin-right:10px;"><a href="https://www.instagram.com/ancrewfactory_fly" target="_blank"><img src="../img/sns-instagram-ico-bl.png" width="100%"></a></li>
					<li class="float-right" style="margin-right:10px;"><a href="http://pf.kakao.com/_sxoFhG" target="_blank"><img src="../img/sns-kakao-ico-bl.png" width="100%"></a></li>
					<!-- <li class="float-right" style="margin-right:10px;"><a href="https://blog.naver.com/crewfac101" target="_blank"><img src="../img/sns-naver-ico-bl.png" width="100%"></a></li> -->
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="container border-bottom mobile-show">
	<div class="row">
		<div class="col-12 px-2 py-3">
			<!-- <div class="col-2"><a href="tel:02-2038-0065"></a></div> -->
			<div class="col-10 pl-3"><a href="/"><img src="/img/anc-mongolia.png" width="165px"></a></div>
			<div class="col-2 pt-1 text-right"><img src="/img/nav-menu-img.png" id="flip" width="25px" class="mr-3"></div>
		</div>
	</div>
</div>
<div class="container bg-navy mobile-show">
	<div class="row">
		<div class="col-12 px-2 py-3 text-center">
			<ul class="col-12 text-center font-14">
				<li class="float-left font-bold px-3"><a href="/introduce/intro.do"><span class="font-16 font-white">Anc</span></a></li>
				<li class="float-left font-bold px-3"><a href="/education/domestic.do"><span class="font-16 font-white">Curriculum</span></a></li>
				<li class="float-left font-bold px-3"><a href="/support/jobforairportinjapan.do" class=""><span class="font-16 font-white">Recruit</span></a></li><!-- Job -->
				<li class="float-left font-bold px-3"><a href="/crewpeople/weare.do"><span class="font-16 font-white">Anc People</span></a></li>
				<li class="float-left font-bold px-3"><a href="/counsel/online.do"><span class="font-16 font-white">Зөвлөгөө өгөх</span></a></li>
			</ul>
		</div>
	</div>
</div>
<div class="container mobile-show" id="mobile-menu" style="height:100%; display:none;">
	<div class="row">
		<div class="col-12 px-3 py-3 border-bottom" style="background:#ededed;">
			<div class="col-5 font-14">
				<ul>
					<li class="font-bold py-2" onclick="showSubMenu('#introduce');">Anc танилцуулга</li>
					<li class="font-bold py-2" onclick="showSubMenu('#education');">Хичээлийн хөтөлбөр</li>
					<li class="font-bold py-2" onclick="showSubMenu('#lab');">Хөдөлмөр эрхлэлт</li>
					<li class="font-bold py-2" onclick="showSubMenu('#people');">Anc People</li>
					<li class="font-bold py-2" onclick="showSubMenu('#counsel');">Зөвлөгөө өгөх</li>
				</ul>
				<div class="col-12 py-3"><a href="/introduce/map.do"><button class="btn bg-navy font-12 font-white">Байршлын мэдээлэл</button></a></div>
			</div>
			<div class="col-7 font-14">
				<ul class="col-12" id="introduce" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">Anc танилцуулга</li>
					<li class="pt-3 pb-2"><a href="/introduce/intro.do">Боловсролын философи</a></li>
					<li class="py-2"><a href="/introduce/pro.do">Багшийн танилцуулга</a></li>
					<li class="py-2"><a href="/introduce/facil.do">Боловсролын байгууламж</a></li>
					<li class="py-2"><a href="/introduce/corw.do">Хамтарсан компани</a></li>
					<li class="py-2"><a href="/introduce/map.do">Байршил</a></li>					
				</ul>
				<ul class="col-12" id="education" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">Хичээлийн хөтөлбөр</li>
					<li class="pt-3 pb-2"><a href="/education/domestic.do">Дотоодын агаарын тээврийн онгоцны<br>үйлчлэгчийн сургалт</a></li>
					<li class="py-2"><a href="/education/overseas.do">Гадаадын агаарын тээврийн онгоцны<br>үйлчлэгчийн сургалт</a></li>
					<li class="py-2"><a href="/education/groundcrew.do">Нисэх онгоцны буудлын газрын<br>ажилчдыг ажилд авна</a></li>
					<li class="py-2"><a href="/education/personal.do">Онгоцны үйлчлэгчийн хувийн хичээл</a></li>
				</ul>
				<ul class="col-12" id="lab" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">Хөдөлмөр эрхлэлт</li>
					<li class="pt-3 pb-2"><a href="/support/jobforairportinjapan.do">Японы нисэх онгоцны<br>буудлын ажил эрхлэлт</a></li>
					<li class="py-2"><a href="/recruit/list.do">Ажил эрхлэлт</a></li>
				</ul>
				<ul class="col-12" id="people" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">Anc People</li>
					<li class="pt-3 pb-2"><a href="/crewpeople/weare.do">ANC People</a></li>
					<li class="py-2"><a href="/crewpeople/moment.do">ANC Moment</a></li>
					<li class="py-2"><a href="/">Interview</a></li>
				</ul>
				<ul class="col-12" id="counsel" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">Зөвлөгөө өгөх</li>
					<li class="pt-3 pb-2"><a href="/counsel/online.do">Зөвлөгөө авах хүсэлт</a></li>
					<li class="py-2"><a href="/news/announce.do">Мэдэгдэл</a></li>
					<li class="py-2"><a href="/counsel/faq.do">FAQ</a></li>
				</ul>
			</div>
		</div>
 		<div class="col-12 px-2 py-2 border-bottom" style="background:#fff;">
			<ul>
				<li class="float-left px-2 bg-white font-12"><button class="btn bg-navy font-12 font-white">Хаяг</button></li>
				<li class="float-left px-2 py-2 pr-4 bg-white font-12">XXXXXX XXXXXXXXXXXXX, XXXXXXX, 2302-12</li>
				<li class="float-left px-2 bg-white font-12"><button class="btn bg-navy font-12 font-white">Утасны дуудлага</button></li>
				<li class="float-left px-2 py-2 bg-white font-12">XXX-XXXX-XXXX</li>
			</ul>
		</div>
	</div>
</div>


<script>	
	$(document).ready(function() {
		$("#flip").click(function() {
			if($('#mobile-menu').first().is( ":hidden" ) ){
				$('#mobile-menu').slideDown( 300 );
				$("#flip").attr("src", "/img/nav-close-img.png");
			}
			else{
				$('#mobile-menu').slideUp( 300 );
				$("#flip").attr("src", "/img/nav-menu-img.png");
			}
		});		
	});
	
	function initSubMenu(){
		$("#introduce").hide();
		$("#education").hide();
		$("#lab").hide();
		$("#people").hide();
		$("#counsel").hide();
	}
	
	function showSubMenu(arg){
		initSubMenu();
		$(arg).show();
	}
	
	
</script>





<script>
    var openClassMSwiper = new Swiper('.sw-open-class-m', {
      speed : 200, 
      loop: true,
		autoplay: { delay : 2000 }
    });
</script>



