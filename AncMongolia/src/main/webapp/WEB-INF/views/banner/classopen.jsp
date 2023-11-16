<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-8월 개강일정</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>
</head>
<body>
<%@ include file="../include/nav.jsp"%>


<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<img src="/img/detail_classopen01.jpg" width="100%"  class="mobile-hidden">
			<img src="/img/detail_classopen02.gif" width="100%"  class="mobile-hidden">
			<img src="/img/detail_classopen03.jpg" width="100%"  class="mobile-hidden">
			<a href="/support/system.do"><img src="/img/detail_classopen04.jpg" width="100%"  class="mobile-hidden"></a>
			<img src="/img/detail_classopen05.jpg" width="100%"  class="mobile-hidden">
		</div>
	</div>
</div>



<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<img src="/img/detail_classopen_mo01.jpg" width="100%"  id="mobile-100-percent" class="mobile-show">
			<img src="/img/detail_classopen_mo02.gif" width="100%"  id="mobile-100-percent" class="mobile-show">
			<img src="/img/detail_classopen_mo03.png" width="100%"  id="mobile-100-percent" class="mobile-show">
			<a href="/support/system.do"><img src="/img/detail_classopen_mo04.png" width="100%"  id="mobile-100-percent" class="mobile-show""></a>
			<img src="/img/detail_classopen_mo05.png" width="100%"  id="mobile-100-percent" class="mobile-show"">
		</div>
	</div>
</div>


	<div class="container-fluid py-5 bg-ivory text-center" style="height: 100%; ">
		<div class="row sub-row" >
			<div class="col-12 my-3" >
				<img src="/img/edu_title_02.png" id="mobile-100-percent">
			</div>
			<div class="col-2"></div>
			<div class="col-8 my-3 text-center" id="mobile-100-percent" >
				<div class="swiper-container  " id="spc-gallery-thumbs" >
					<div class="swiper-wrapper text-center">
						<div class="swiper-slide  py-4 font-20 cursor:pointer" id="">채용대비반</div>
						<div class="swiper-slide  py-4 font-20 cursor:pointer" id="">이미지메이킹</div>
						<div class="swiper-slide  py-4 font-20 cursor:pointer" id="">자소서첨삭</div>
						<div class="swiper-slide  py-4 font-20 cursor:pointer" id="">합격자간담회</div>
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
								<p class="my-1 font-gray px-5 text-left">- 국내/국외 항공사별 채용대비반 형성</p>
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