<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<header id="head">
	<div class="head-row">
		<div class="col-4 align-middle">
			<div class="logo" style="padding-top: 10px;">
				<a href="/"><img src="https://www.crew-factory.com/img/logo.png"></a>
			</div>
		</div>
		<div class="col-8 text-right">
			<div class="campus py-2 line-1-gray">
				<ul>
					<li><a href="https://www.crew-factory.com" target="_blank">강남캠퍼스</a></li>
					<li><a href="http://www.crewfa.com/" target="_blank">인천캠퍼스</a></li>
					<li><a href="http://www.crewgo3.com/" target="_blank">항공운항과</a></li>
					<li><a href="http://www.crew-gs.com/" target="_blank">지상직승무원</a></li>
					<li><a href="http://www.factoryop.com/" target="_blank">여행사취업</a></li>
				</ul>
			</div>
			<div class="outlink py-2">
				<ul>
					<li style="width: 430px;">
						<div class="col-4">
							<label class="sm-label font-10">채용일정</label>
						</div>
						<div class="col-8 text-left pl-3 pt-1 off-hide" style="height:30px;">
							<div class="swiper-container sw-open-class">
								<div class="swiper-wrapper">				    
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink"> 국내항공사 </span>&nbsp;&nbsp; 평일반 &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b> 1월 30일 </b></div>
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink"> 외국항공사 </span>&nbsp;&nbsp; 평일반 &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b> 1월 30일 </b></div>
								</div>
							</div>
						</div>
					</li>
					<li><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="../images/sns-facebook-ico-bl.png"></a></li>
					<li><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="../images/sns-instagram-ico-bl.png"></a></li>
					<li><a href="https://pf.kakao.com/_QWAEl" target="_blank"><img src="../images/sns-kakao-ico-bl.png"></a></li>
					<li><a href="https://map.naver.com/v5/entry/place/34589774?c=14140743.5947732,4510655.1054681,15,0,0,0,dh" target="_blank"><img src="../images/sns-naver-ico-bl.png"></a></li>
				</ul>
			</div>
		</div>
	</div>
</header>

<script>
    var openClassSwiper = new Swiper('.sw-open-class', {
      direction: 'vertical',
      speed : 300, 
      loop: true,
		autoplay: { delay : 3000 }
    });
</script>

<nav class="container-fluid line-1-gray mobile-hidden">
	<div class="row sub-row" style="text-align:center;">
		<ul class="col-10 gnb-menu" id="gnb-menu" style="height:45px;">
			<li class="font-16"><a href="/recruit/list.do" class=""><b>온라인채용지원</b></a><label class="ml-2 hot-dot"></label></li>
			<li class="font-16"><a href="/ehr/search.do" class=""><b>지원현황조회</b></a><label class="ml-2 hot-dot"></label></li>
			<li class="font-16"><a href="/counsel/online.do" class=""><b>상담신청</b></a></li>
			<li class="font-16"><a href="/news/list.do" class=""><b>공지사항</b></a></li>
			<li class="font-16"><a href="/introduce/intro.do" class=""><b>ANC기관소개</b></a></li>
		</ul>
	</div>
</nav>


<div class="container border-bottom mobile-show">
	<div class="row">
		<div class="col-12 px-2 py-3">
			<div class="col-2"><img src="/images/nav-menu-img.png" id="flip" width="25px" class="ml-2"></div>
			<div class="col-8 text-center"><a href="/"><img src="https://www.crew-factory.com/img/logo.png" width="164px"></a></div>
		</div>
	</div>
</div>
<div class="container mobile-show" id="mobile-menu" style="height:100%; display:none;">
	<div class="row">
		<div class="col-12 px-2 py-3 border-bottom" style="background:#1b2e5f;">
			<div class="col-6 font-12 font-white">
				<ul>
					<li class="float-left pr-2"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="../images/sns-facebook-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="../images/sns-instagram-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://pf.kakao.com/_QWAEl" target="_blank"><img src="../images/sns-kakao-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://map.naver.com/v5/entry/place/34589774?c=14140743.5947732,4510655.1054681,15,0,0,0,dh" target="_blank"><img src="../images/sns-naver-ico.png"></a></li>
				</ul>
			</div>
			<div class="col-6 pr-2 text-right font-14 font-white"><a href="tel:02-2038-0065"><span class="font-white">02-2038-0065</span></a></div>
		</div>
		<!-- div class="col-12 px-3 py-3 border-bottom" style="background:#ededed;">
			<div class="col-5 font-14">
				<ul>
					<li class="font-bold py-2" onclick="showSubMenu('#introduce');">온라인채용지원</li>
					<li class="font-bold py-2" onclick="showSubMenu('#education');">지원현황조회</li>
					<li class="font-bold py-2" onclick="showSubMenu('#lab');">상담신청</li>
				</ul>
				<div class="col-12 pt-2"><a href="/counsel/online.do?cost=y&imgchk="><button class="btn bg-navy font-12 font-white">수강료조회</button></a></div>
				<div class="col-12 pt-2"><a href="/introduce/map.do"><button class="btn bg-navy font-12 font-white">위치안내</button></a></div>
				<div class="col-12 pt-2"><a href="/introduce/map.do"><button class="btn bg-navy font-12 font-white">상담예약</button></a></div>
			</div>
		</div-->
		<div class="col-12 px-2 py-2 border-bottom" style="background:#fff;">
			<ul>
				<li class="float-left px-2 bg-white font-14"><a href="https://www.crew-factory.com" target="_blank">강남캠퍼스</a></li>
				<li class="float-left border-left px-2 bg-white font-14"><a href="http://www.crewfa.com/" target="_blank">인천캠퍼스</a></li>
				<li class="float-left border-left px-2 bg-white font-14"><a href="http://www.crewgo3.com/" target="_blank">항공운항과입시</a></li>
				<li class="float-left border-left px-2 bg-white font-14"><a href="http://www.crew-gs.com/" target="_blank">지상직학원</a></li>
				<li class="float-left border-left px-2 bg-white font-14"><a href="http://www.factoryop.com/" target="_blank">여행사취업</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="container border-bottom mobile-show">
	<div class="row">
		<div class="col-12 px-2 py-3 text-center">
			<ul class="col-12 text-center font-14">
				<li class="float-left font-bold px-2"><a href="/recruit/list.do">채용지원</a></li>
				<li class="float-left font-bold px-2"><a href="/ehr/search.do">지원현황조회</a></li>
				<li class="float-left font-bold px-2"><a href="/counsel/online.do">상담신청</a></li>
				<li class="float-left font-bold px-2"><a href="/news/list.do">공지사항</a></li>
				<li class="float-left font-bold px-2"><a href="/introduce/intro.do" class=""><b>ANC기관소개</b></a></li>
			</ul>
		</div>
	</div>
</div>


<script>	
	$(document).ready(function() {
		$("#flip").click(function() {
			if($('#mobile-menu').first().is( ":hidden" ) ){
				$('#mobile-menu').slideDown( 300 );
				$("#flip").attr("src", "/images/nav-close-img.png");
			}
			else{
				$('#mobile-menu').slideUp( 300 );
				$("#flip").attr("src", "/images/nav-menu-img.png");
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
