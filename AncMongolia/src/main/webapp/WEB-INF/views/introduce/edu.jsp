<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-크루팩토리특별혜택</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>


</head>
<body>
	<%@ include file="../include/nav.jsp"%>


	<div class="container-fluid py-5" style="background-color: #f2eeee; height: 550px;">
		<div class="row sub-row" style="height:505px; background:url('/img/intro-edu-bg-img.png') no-repeat right;">
			<div class="col-12">
				<div class="font-45-m my-3">소수정예 개인과외식의</div>
				<div class="font-45-m my-3">
					<span class="font-pink">높은수업만족도</span>를 자랑하는
				</div>
				<div class="font-45-m my-3 pb-2">크루팩토리입니다.</div>
				<p class="font-16-m my-4">
					크루팩토리가 <b>합격률이 높은이유</b>는 가장 중요한 <span class="font-pink font-bold">원칙 3가지</span>를 고집하고 있습니다.
				</p>
				<div style="width: 600px;" id="mobile-100-percent">
					<div class="col-12 py-2">
						<div class="col-1">
							<label class="med-label font-14-m font-white bg-pink mr-2 text-center">1</label>
						</div>
						<div class="col-11 px-2 pt-1">
							<span class="font-14-m">국내항공사전문과정, 외국항공사전문과정으로 각기 다른 <b>맞춤교육</b>을 실시합니다.
							</span>
						</div>
					</div>
					<div class="col-12 py-2">
						<div class="col-1">
							<label class="med-label font-14-m font-white bg-pink mr-2">2</label>
						</div>
						<div class="col-11 px-2 pt-1">
							<span class="font-14-m">8명미만의 소수정예 또는 1:1과외식수업으로 <b>개인관리</b>가 철저하고 체계적입니다.
							</span>
						</div>
					</div>
					<div class="col-12 py-2">
						<div class="col-1">
							<label class="med-label font-14-m font-white bg-pink mr-2">3</label>
						</div>
						<div class="col-11 px-2 pt-1">
							<span class="font-14-m">10년이상의 항공업계 및 교육을 담당해온 <b>"5Star"</b>강사진으로 이루어져 있습니다.
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

<div class="container-fluid pb-5">
		<div class="row sub-row">
			<div class="col-12 my-3">
				<div class="col-1"></div>
				<div class="col-4 font-bold mt-5 text-right " id="mobile-100-percent">
						<!-- label class="h-line font-14 bg-pink mr-2"></label -->
						<p class="font-50-m mt-7 ">지상직 승무원</p>
						<p class="font-50-m mt-2 "><span class=" font-pink ">3 STEP</span> 합격방법</p>
				</div>
				<div class="col-1"></div>
				<div class="col-6 mt-5 mobile-100-percent">
						<img src="/img/edu-class-edu-img-0001.jpg" class="mobile-100-percent ">
				</div>
				
			</div>
		</div>
	</div>
<div class="container-fluid ">
	<div class="row sub-row">
		<div class="col-12 my-3 text-center ">
			<img src="/img/edu-class-edu-img-0002.jpg" class="mobile-100-percent ">
		</div>
	</div>
</div>



<div class="container-fluid ">
	<div class="row ">
		<div class="col-12 my-5  ">
			<img src="/img/edu-class-edu-img-0003.jpg" width="100%" class="mobile-100-percent mobile-hidden">
		</div>
	</div>
</div>

<div class="container-fluid ">
	<div class="row ">
		<div class="col-12 text-center">
			<img src="/img/edu-class-edu-img-mo-0003.jpg" class="mobile-100-percent mobile-show">
		</div>
	</div>
</div>
	
<div class="container-fluid my-5 ">
	<div class="row gs-row">
		<div class="col-6 mt-5 mb-5  " id="mobile-100-percent">
			<img src="/img/edu-class-edu-img-mo-0004.jpg"  id="mobile-100-percent" >
		</div>
		<div class="col-1"></div>
		<div class="col-5 my-3 " id="mobile-100-percent">
			<P class="mt-7 font-40 " >크루팩토리 <span class="font-navy font-bold  font-navy-m">지상직학원</span>은? </P>
			<P class="mt-7 font-20" >전직 항공사출신 교수진으로 이루어진</P>
			<P class="mt-2 font-20" >1:1 담당멘토제도를 통해</P>
			<P class="mt-2 font-20" >수강부터 취업연계까지 <span class="font-bold">집중케어</span>하고 있습니다.</P>
	
		</div>
			
	</div>
</div>	
	
	<div class="container-fluid ">
		<div class="row ">
			<div class="col-12 py-5 text-center bg-light-gray-v3 ">
				<img src="/img/edu-class-edu-img-0005.png" class="mobile-100-percent">
			</div>
		</div>
	</div>
	<div class="container-fluid ">
		<div class="row ">
			<div class="col-12 my-5 text-center ">
				<p class=" font-40">[크루팩토리 지상직학원 <span class="font-bold font-navy font-navy-m">취업처</span>]</p>
				<img src="/img/edu-class-edu-img-0006.jpg" class="mobile-100-percent">
			</div>
		</div>
	</div>
	
	<div class="container-fluid ">
		<div class="row">
			<div class="col-12 mt-7">
				<img src="/img/edu-class-crsdcs-img-014.jpg" width="100%"  class="mobile-hidden">
			</div>
			<div class="col-12">
				<img src="/img/edu-class-crsdcs-img-mo-014.jpg" width="100%"   id="mobile-100-percent" class="mobile-show">
			</div>
		</div>
	</div>

	

	<!-- 이미지접히기 -->
	<div class="container-fluid ">
		<div class="row gs-row">
			<div class="col-12 text-center">
			<img src="/img/sid-ko-bg-img.jpg"  id="mobile-100-percent">
		</div>
		</div>
	</div>
	
	

	

<div class="container-fluid py-5 bg-ivory text-center" style="height: 100%;  ">
		<div class="row sub-row" >
			<div class="col-12 my-3" >
				<img src="/img/edu_title_02.png" id="mobile-100-percent">
			</div>
			<div class="col-2"></div>
			<div class="col-8 my-3 text-center" id="mobile-100-percent" >
				<div class="swiper-container  " id="spc-gallery-thumbs" >
					<div class="swiper-wrapper text-center  ">
						<div class="swiper-slide  py-4 font-20" id="">채용대비반</div>
						<div class="swiper-slide  py-4 font-20" id="">이미지메이킹</div>
						<div class="swiper-slide  py-4 font-20" id="">자소서첨삭</div>
						<div class="swiper-slide  py-4 font-20" id="">합격자간담회</div>
					</div>
				</div>
			</div>
			<div class="col-2"></div>
			<div class="col-2"></div>
			<div class="col-8 bg-white border px-5 py-5" id="mobile-100-percent" >
				<div class="swiper-container" id="spc-gallery-top" >
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number01.png" > 채용대비반</p>
								<p class="my-1 font-gray px-5 text-left">- 국내/국외 항공사 별 채용대비반 형성</p>
								<p class="my-1 font-gray px-5 text-left">- 1차, 2차 면접절차별 별도 진행</p>
								<p class="my-1 font-gray px-5 text-left">- 절차별 주안점/모의면접</p>
							</div>
							<div class="col-2"></div>
							<div class="col-12">
								<img src="/img/intro-edu-p-01-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-01-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number02.png" > 이미지메이킹</p>
								<p class="my-1 font-gray px-5 text-left">- 헤어, 메이크업</p>
								<p class="my-1 font-gray px-5 text-left">- 퍼스널 컬러</p>
								<p class="my-1 font-gray px-5 text-left">- 메이크업 아티스트로부터 1:1이미지체킹 진행</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-02-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-02-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number03.png" > 자소서첨삭</p>
								<p class="my-1 font-gray px-5 text-left">- 직장인, 지방 거주자를 위한'E-mail'첨삭</p>
								<p class="my-1 font-gray px-5 text-left">- 항상 변경되는 항목을 위한 '공채 첨삭 Day'</p>
								<p class="my-1 font-gray px-5 text-left">- 항공사 별 강사진과 함께하는 '1:1 대면첨삭'</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-03-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-03-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number04.png" > 합격자간담회</p>
								<p class="my-1 font-gray px-5 text-left">- 항공사 별 합격자들의 이야기</p>
								<p class="my-1 font-gray px-5 text-left">- 준비방법 및 합격생 기본 스펙공유</p>
								<p class="my-1 font-gray px-5 text-left">- 동기부여 및 사기증진 충족</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-04-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-04-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid py-5 text-center" style="height: 100%;">
		<div class="row sub-row" >
			<div class="col-12 my-3" >
				<img src="/img/edu_title_03.png" id="mobile-100-percent">
			</div>
			<div class="col-2"></div>
			<div class="col-8 my-3" id="mobile-100-percent" >
				<div class="swiper-container text-center" id="spc-gallery-thumbs1" >
					<div class="swiper-wrapper">
						<div class="swiper-slide text-center" id="">토익점수 취득</div>
						<div class="swiper-slide text-center" id="">기내수화 자격증</div>
						<div class="swiper-slide text-center" id="">CPR(심폐소생술)자격증</div>
					</div>
				</div>
			</div>
			<div class="col-2"></div>
			<div class="col-2"></div>
			<div class="col-8 bg-white border px-5 py-5" id="mobile-100-percent" >
				<div class="swiper-container" id="spc-gallery-top1" >
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number01.png" >토익 점수 취득</p>
								<p class="my-1 font-gray px-5 text-left"> 지원조건을 충족하기 위한</p>
								<p class="my-1 font-gray px-5 text-left"> 어학 자격취득</p>
							
							</div>
							<div class="col-2"></div>
							<div class="col-12">
								<img src="/img/intro-edu-s-01-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-s-01-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number02.png" >기내수화 자격증</p>
								<p class="my-1 font-gray px-5 text-left"> 기내안에서의 비상상황, 안내등을 위한 </p>
								<p class="my-1 font-gray px-5 text-left"> 수화 수료증 취득</p>
								
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-s-02-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-s-03-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number03.png" >CPR(심폐소생술)자격증</p>
								<p class="my-1 font-gray px-5 text-left"> 기내안에서의 위급상황 대처를 위한</p>
								<p class="my-1 font-gray px-5 text-left"> CPR수료증 취득</p>
								
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-s-03-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-s-03-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
					</div>
				</div>
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
	
	function fnMove(seq) {
		var offset = $("#page" + seq).offset();
		$('html, body').animate({
			scrollTop : offset.top
		}, 400);
	}

	$(".mproul-sid").css('display', 'none');
	$(document).ready(function() {
		$(".pro-menu>a").click(function() {
			var submenu = $(this).next("ul");
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		});
	});
	
	
	$(document).ready(function(){
		$('#blogto').show();
		$('#blogsh').hide();
		$('#blogcp').hide();
	});

	function clickBlog(section){
		
		if (section == 'to'){
			$('#blog-section-to').addClass('activing');
			$('#blog-section-sh').removeClass('activing');
			$('#blog-section-cp').removeClass('activing');
			$('#blogto').show();
			$('#blogsh').hide();
			$('#blogcp').hide();
		} else if(section == 'sh'){
			filterClass = '.sh';
			$('#blog-section-sh').addClass('activing');
			$('#blog-section-to').removeClass('activing');
			$('#blog-section-cp').removeClass('activing');
			$('#blogto').hide();
			$('#blogsh').show();
			$('#blogcp').hide();
		}
		else{
			filterClass = '.cp';
			$('#blog-section-cp').addClass('activing');
			$('#blog-section-sh').removeClass('activing');
			$('#blog-section-to').removeClass('activing');
			$('#blogto').hide();
			$('#blogsh').hide();
			$('#blogcp').show();
		}
	}
	
	
	
	if ($(window).width() > 768) {

		var galleryThumbs = new Swiper('#spc-gallery-thumbs', {
			slidesPerView : 6,
			spaceBetween : 10,
			watchSlidesVisibility : true,
			watchSlidesProgress : true,
		});

		var galleryTop = new Swiper('#spc-gallery-top', {
			thumbs : {
				swiper : galleryThumbs,
			},
		});
		
		var galleryThumbs1 = new Swiper('#spc-gallery-thumbs1', {
			slidesPerView : 3,
			spaceBetween : 10,
			watchSlidesVisibility : true,
			watchSlidesProgress : true,
		});

		var galleryTop = new Swiper('#spc-gallery-top1', {
			thumbs : {
				swiper : galleryThumbs1,
			},
		});

	} else {
		var galleryThumbs = new Swiper('#spc-gallery-thumbs', {
			slidesPerView : 2.6,
			spaceBetween : 10,
			watchSlidesVisibility : true,
			watchSlidesProgress : true,
		});

		var galleryTop = new Swiper('#spc-gallery-top', {
			thumbs : {
				swiper : galleryThumbs,
			},
		});
		var galleryThumbs1 = new Swiper('#spc-gallery-thumbs1', {
			slidesPerView : 2.6,
			spaceBetween : 10,
			watchSlidesVisibility : true,
			watchSlidesProgress : true,
		});

		var galleryTop = new Swiper('#spc-gallery-top1', {
			thumbs : {
				swiper : galleryThumbs1,
			},
		});


	}
	</script>

</body>
</html>