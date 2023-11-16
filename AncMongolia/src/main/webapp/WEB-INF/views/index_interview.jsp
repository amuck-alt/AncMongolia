<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="containter-fluid mobile-hidden" style="background-color:#300643;" id="containter-body">
	<div class="row sub-row">
		<div class="col-12 py-5">
			<p class="px-2 font-28 font-bold font-white">합격생인터뷰<span class="mx-4 font-14 font-gray">실제합격한 크루팩토리합격생들의 리얼후기</span></p>
			<div class="col-12 my-4 swiper-container" id="sw-main-review">
				<div class="swiper-wrapper">
					<c:forEach items="${review}" var="review"  varStatus="status">
						<div class="swiper-slide">
							<div class="bg-white rad-div-10 review-container">
								<ul class="col-12" id="review-wrapper">
									<li class="col-4 float-left px-2 my-3 off-hide mobile-hidden"><img src="${review.thumbnail}" class="cricle-img"></li>
									<li class="col-8 float-left px-2 my-2 mobile-100-percent">
										<p class="font-14 font-gray mb-2">${review.section }</p>
										<p class="font-20"><strong>${review.title}</strong>&nbsp;<label class="ml-2 hot-dot"></label></p>
										<div class="bg-skyblue rad-div-10 mt-4 px-4 py-4 mobile-hidden">
											<p class="font-12-gs">${review.description}</p>
										</div>
										<div class="col-12 float-right text-right mobile-hidden">
											<span class="font-12 font-gray mr-3"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></span>
										</div>
										<div class="col-12 mt-2">
											<a href="/crewpeople/review.do"><span class="font-14 font-under-line font-bold">자세히보기</span></a>
										</div>
									</li>
								</ul>
								<ul class="col-12 mt-1 mobile-show">
									<li class="col-12 bg-skyblue rad-div-10 mt-2 px-4 py-4">
										<p class="font-14">${fn:substring(review.description, 0, 88)}...</p>
									</li>
									<li class="col-12">
										<div class="col-12 float-right text-right">
											<span class="font-12 font-gray mr-3"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></span>
										</div>
									</li>									
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-12 text-center main-review-swiper-pagination"></div>
		</div>
	</div>
</div>

<div class="containter-fluid mobile-show" style="background-color:#300643;">
	<div class="row sub-row">
		<div class="col-12 pt-4 pb-3">
			<p class="pl-3 font-28 font-bold font-white">합격생인터뷰<span class="ml-4 font-14 font-gray">실제합격한 크루팩토리합격생들의 리얼후기</span></p>
			<div class="col-12 my-4" id="sw-m-main-review">
				<div class="">
					<c:forEach items="${review}" var="review"  varStatus="status">
						<div class="col-12 my-1">
							<a href="/crewpeople/review.do">
								<ul class="col-12">
									<li class="col-3 float-left px-3 my-2"><img src="${review.thumbnail}" class="rad-div-20" width="60px;"></li>
									<li class="col-9 float-left px-2 my-2">
										<p class="font-14 font-white my-2">${review.section } <span class="font-12 font-blue mx-3">★★★★★</span><span class="font-12 font-gray float-right mx-3"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></span></p>
										<p class="font-20 font-white">${fn:substring(review.title, 0, 24)}...&nbsp;<label class="ml-2 hot-dot"></label></p>
									</li>
								</ul>
								<ul class="col-12">
									<li class="col-12 px-3 py-2">
										<p class="font-12 font-newgray">${fn:substring(review.description, 0, 88)}...</p>
									</li>								
								</ul>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
if ($(window).width() > 768) {
	var mainreviewSwiper = new Swiper('#sw-main-review', {
		speed : 400,
		slidesPerView : 1.5,
		slidesBetween : 30,
		autoplay: { delay: 4000},
		pagination: {
	        el : '.main-review-swiper-pagination', clickable : true,
	      },
	});
}else{
	var mainreviewSwiper = new Swiper('#sw-m-main-review', {
		loop : true,
		speed : 400,
		slidesPerView : 1,
		//autoplay: { delay: 4000, disableOnInteraction: false, },
		pagination: {
	        el : '.main-review-m-swiper-pagination', clickable : true,
	      },
	});
}
</script>




