<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-교육시설안내</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>
<body>

<%@ include file="../include/nav.jsp"%>
<div class="container-fluid intro-banner-facil-container">
	<div class="row cf-row pad-top-100">
		<div class="col-12">
			<h4 class="font-white">Educational facilities</h4>
			<div class="line-2-white my-3" style="width:200px;"></div>
			<h2 class="font-white">Боловсролын байгууламж</h2>
			<h5 class="font-yellow mt-3">"Энд ирэх тэр мөчид онгоцны үйлчлэгч гэдэг мөрөөдөл байхаа больсон."</h5>
		</div>
	</div>
</div>

	<div class="container-fluid mt-5" id="page1">
		<div class="row cf-row">
			<div class="col-md-12">
				<div class="col-12 my-3">
					<ul>
						<li class="font-20 float-left mx-2" style="padding-top: 5px; list-style-type: disc;">Үндсэн байрны үүд / зөвлөгөө өгөх өрөө</li>
						<li class="main-office-front-prev float-left mx-2"><button class="btn">←</button></li>
						<li class="main-office-front-next float-left mx-2"><button class="btn">→</button></li>
					</ul>
				</div>
				<div class="col-12 line-1-gray"></div>
				<div class="col-12 my-4 swiper-container" id="main-office-front">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="/img/sample-img-001.jpg" width="100%">
						</div>
						<div class="swiper-slide">
							<img src="/img/sample-img-001.jpg" width="100%">
						</div>
					</div>
				</div>
				<div class="col-12 line-1-gray"></div>
				<div class="col-12 my-4">
					<ul>
						<li class="font-18 float-left mx-2" style="padding-top: 5px;">강의실/메이크업실</li>
						<li class="main-office-classroom-prev float-left mx-2"><button class="btn btn-warning">←</button></li>
						<li class="main-office-classroom-next float-left mx-2"><button class="btn btn-warning">→</button></li>
					</ul>
				</div>
				<div class="col-12 line-1-gray"></div>
				<div class="col-12 my-4 swiper-container float-right" id="main-office-classroom">
					<div class="swiper-wrapper float-right">
						<div class="swiper-slide">
							<img src="../img/facil-img-2-001.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-002.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-003.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-004.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-005.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-006.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-007.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-008.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-009.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-010.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-011.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-2-012.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-12 line-1-gray"></div>
				<div class="col-12 my-4">
					<ul>
						<li class="font-18 float-left mx-2" style="padding-top: 5px;">취업지원실/강의실</li>
						<li class="main-office-lab-prev float-left mx-2"><button class="btn btn-warning">←</button></li>
						<li class="main-office-lab-next float-left mx-2"><button class="btn btn-warning">→</button></li>
					</ul>
				</div>
				<div class="col-12 line-1-gray"></div>
				<div class="col-12 my-4 swiper-container float-right" id="main-office-lab">
					<div class="swiper-wrapper float-right">
						<div class="swiper-slide">
							<img src="../img/facil-img-3-001.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-3-002.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-3-003.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-3-004.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-3-005.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-3-006.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-12 line-1-gray"></div>
			</div>
			<div class="col-md-12 my-5" id="page2"></div>
			<div class="col-md-12">
				<span class="float-left font-30 pb-2">강남캠퍼스 별관</span>
				<div class="col-12 line-2 my-2"></div>
				<div class="col-12 my-4">
					<ul>
						<li class="font-18 float-left mx-2" style="padding-top: 5px;">입구/상담실</li>
						<li class="sub-office-front-prev float-left mx-2"><button class="btn btn-warning">←</button></li>
						<li class="sub-office-front-next float-left mx-2"><button class="btn btn-warning">→</button></li>
					</ul>
				</div>
				<div class="col-12 my-4 line-1-gray"></div>
				<div class="col-12 swiper-container" id="sub-office-front">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="../img/facil-img-4-001.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-4-002.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-4-003.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-4-004.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-4-005.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-4-006.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-4-007.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-12 my-4 line-1-gray"></div>
			</div>

			<div class="col-md-12 my-5" id="page3"></div>
			<div class="col-md-12">
				<span class="float-left font-30 pb-2">인천캠퍼스</span>
				<div class="col-12 line-2 my-2"></div>
				<div class="col-12 my-4">
					<ul>
						<li class="font-18 float-left mx-2" style="padding-top: 5px;">입구/상담실</li>
						<li class="incheon-office-front-prev float-left mx-2"><button class="btn btn-warning">←</button></li>
						<li class="incheon-office-front-next float-left mx-2"><button class="btn btn-warning">→</button></li>
					</ul>
				</div>
				<div class="col-12 my-4 line-1-gray"></div>
				<div class="col-12 swiper-container" id="incheon-office-front">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="../img/facil-img-6-001.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-6-002.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-6-003.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-6-004.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-6-005.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-6-006.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-12 my-4 line-1-gray"></div>
				<div class="col-12 my-4">
					<ul>
						<li class="font-18 float-left mx-2" style="padding-top: 5px;">강의실/메이크업실</li>
						<li class="incheon-office-classroom-prev float-left mx-2"><button class="btn btn-warning">←</button></li>
						<li class="incheon-office-classroom-next float-left mx-2"><button class="btn btn-warning">→</button></li>
					</ul>
				</div>
				<div class="col-12 my-4 line-1-gray"></div>
				<div class="col-12 swiper-container float-right" id="incheon-office-classroom">
					<div class="swiper-wrapper float-right">
						<div class="swiper-slide">
							<img src="../img/facil-img-7-001.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-7-002.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-7-003.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-7-004.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-7-005.png" id="mobile-100-percent">
						</div>
						<div class="swiper-slide">
							<img src="../img/facil-img-7-006.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-12 my-4 line-1-gray"></div>
			</div>

		</div>
		<!-- edu-row end -->
	</div>
	<!-- container end -->


	<div class="d-height-100"></div>


	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

	<footer> </footer>


	<script>
		function fnMove(seq) {
			var offset = $("#page" + seq).offset();
			$('html, body').animate({
				scrollTop : offset.top
			}, 400);
		}

		if ($(window).width() > 768) {
			// pc size
			var main_office_swiper = new Swiper('#main-office-front', {
				slidesPerView : 1,
				coverflowEffect : {
					rotate : 50,
					stretch : 0,
					depth : 100,
					modifier : 1,
					slideShadows : true,
				},
				navigation : {
					prevEl : '.main-office-front-prev',
					nextEl : '.main-office-front-next',
				}
			});

			var main_office_classroom_swiper = new Swiper(
					'#main-office-classroom', {
						//effect: 'coverflow',
						//grabCursor: true,
						//centeredSlides: true,
						slidesPerView : 1,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.main-office-classroom-prev',
							nextEl : '.main-office-classroom-next',
						}
					});

			var main_office_lab_swiper = new Swiper('#main-office-lab', {
				//centeredSlides: true,
				slidesPerView : 1,
				coverflowEffect : {
					rotate : 50,
					stretch : 0,
					depth : 100,
					modifier : 1,
					slideShadows : true,
				},
				navigation : {
					prevEl : '.main-office-lab-prev',
					nextEl : '.main-office-lab-next',
				}
			});

			var sub_office_front_swiper = new Swiper('#sub-office-front', {
				//centeredSlides: true,
				slidesPerView : 1,
				coverflowEffect : {
					rotate : 50,
					stretch : 0,
					depth : 100,
					modifier : 1,
					slideShadows : true,
				},
				navigation : {
					prevEl : '.sub-office-front-prev',
					nextEl : '.sub-office-front-next',
				}
			});

			var sub_office_classroom_swiper = new Swiper(
					'#sub-office-classroom', {
						//centeredSlides: true,
						slidesPerView : 1,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.sub-office-classroom-prev',
							nextEl : '.sub-office-classroom-next',
						}
					});

			var incheon_office_front_swiper = new Swiper(
					'#incheon-office-front', {
						//centeredSlides: true,
						slidesPerView : 1,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.incheon-office-front-prev',
							nextEl : '.incheon-office-front-next',
						}
					});

			var sub_office_classroom_swiper = new Swiper(
					'#incheon-office-classroom', {
						//centeredSlides: true,
						slidesPerView : 1,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.incheon-office-classroom-prev',
							nextEl : '.incheon-office-classroom-next',
						}
					});
		} else {
			// mobile size
			var main_office_swiper = new Swiper('#main-office-front', {
				slidesPerView : 1.3,
				spaceBetween : 10,
				coverflowEffect : {
					rotate : 50,
					stretch : 0,
					depth : 100,
					modifier : 1,
					slideShadows : true,
				},
				navigation : {
					prevEl : '.main-office-front-prev',
					nextEl : '.main-office-front-next',
				}
			});

			var main_office_classroom_swiper = new Swiper(
					'#main-office-classroom', {
						//effect: 'coverflow',
						//grabCursor: true,
						//centeredSlides: true,
						slidesPerView : 1.3,
						spaceBetween : 10,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.main-office-classroom-prev',
							nextEl : '.main-office-classroom-next',
						}
					});

			var main_office_lab_swiper = new Swiper('#main-office-lab', {
				//centeredSlides: true,
				slidesPerView : 1.3,
				spaceBetween : 10,
				coverflowEffect : {
					rotate : 50,
					stretch : 0,
					depth : 100,
					modifier : 1,
					slideShadows : true,
				},
				navigation : {
					prevEl : '.main-office-lab-prev',
					nextEl : '.main-office-lab-next',
				}
			});

			var sub_office_front_swiper = new Swiper('#sub-office-front', {
				//centeredSlides: true,
				slidesPerView : 1.3,
				spaceBetween : 10,
				coverflowEffect : {
					rotate : 50,
					stretch : 0,
					depth : 100,
					modifier : 1,
					slideShadows : true,
				},
				navigation : {
					prevEl : '.sub-office-front-prev',
					nextEl : '.sub-office-front-next',
				}
			});

			var sub_office_classroom_swiper = new Swiper(
					'#sub-office-classroom', {
						//centeredSlides: true,
						slidesPerView : 1.3,
						spaceBetween : 10,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.sub-office-classroom-prev',
							nextEl : '.sub-office-classroom-next',
						}
					});

			var incheon_office_front_swiper = new Swiper(
					'#incheon-office-front', {
						//centeredSlides: true,
						slidesPerView : 1.3,
						spaceBetween : 10,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.incheon-office-front-prev',
							nextEl : '.incheon-office-front-next',
						}
					});

			var sub_office_classroom_swiper = new Swiper(
					'#incheon-office-classroom', {
						//centeredSlides: true,
						slidesPerView : 1.3,
						spaceBetween : 10,
						coverflowEffect : {
							rotate : 50,
							stretch : 0,
							depth : 100,
							modifier : 1,
							slideShadows : true,
						},
						navigation : {
							prevEl : '.incheon-office-classroom-prev',
							nextEl : '.incheon-office-classroom-next',
						}
					});

		}
	</script>

</body>
</html>