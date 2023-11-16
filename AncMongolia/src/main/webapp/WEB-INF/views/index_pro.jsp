<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
	.ck-content h4 { font-size:18px; font-weight:600; }
	.ck-content h4 strong {	font-weight:600; }
	
	#sw-pro-li-container .swiper-slide .pro-wrapper { background-color:#e3e5e8; height:200px; }	
	#sw-pro-li-container .swiper-slide-thumb-active .pro-wrapper, #sw-pro-li-container .swiper-slide .pro-wrapper:hover { background-color:#0072ff; color:#fff; cursor:pointer; }
	.sw-pro-li-cantainer-pagination .swiper-pagination-bullet { margin: 20px 3px; }
	
	.pro-main-container { height:470px;	}
	.pro-img-container {	width:400px; bottom:0px; right:0px;	}
	.pro-title-container { width:450px; margin-top:60px; padding-left:50px;	}
	.pro-list-container { margin-top:50px; }	
	.pro-list-container .pro-list-container-txt { width:180px; position:aubsolute; z-index:800; margin-top:50px; margin-left:30px; margin-right:10px; }
	.pro-wrapper img { width:150px; position:absolute; right:0px; bottom:0px; }
	.pro-title-container .mt-5p { margin-top: 1.5rem !important; }
	
@media only screen and (max-width: 767px) {
	.ck-content h4 { font-size:14px; }
	#sw-pro-li-container .swiper-slide .pro-wrapper { height:170px; }
	.pro-main-container { height:270px;	}
	.pro-title-container { padding-left:30px; width:280px; margin-top:30px;	}
	.pro-img-container {	width:250px; bottom:0px; right:-50px;	}
	.pro-list-container { margin-top:.0px;	}	
	.pro-list-container .pro-list-container-txt { width:120px; margin-top:30px; margin-left:10px; padding-right:20px; }
	.pro-wrapper img { width:130px; right:-30px; bottom:0px; }
	.pro-title-container .mt-5p { margin-top: 1.5rem !important; }	
	.pro-img-modal { width:150px; bottom:0px; right:-30px; }
	
}
</style>

<div class="container-fluid pb-3">
	<div class="row sub-row py-5">
		<div class="col-12">
			<div class="col-12 text-center">
				<p class="font-40 font-bold">UNITED PROFESSIONAL SUMMIT</p>
			</div>
			<div class="col-12 text-center"><span class="font-40 font-pink">_</span></div>
			<div class="col-12 text-center my-3">
				<span class="mx-4 font-14 font-gray font-normal">ANC мэргэжлийн багш нар</span>
			</div>
		</div>
	</div>
</div>
		
<div class="container-fluid" id="containter-body">
	<div class="row sub-row">
		<div class="col-12 px-2">
			<div class="swiper-container" id="sw-pro-thumb-container">
				<div class="swiper-wrapper">					
					<c:forEach items="${professor}" var="pro" varStatus="status">
						<div class="swiper-slide">
							<div class="col-12 pro-main-container rad-div-20 off-hide mobile-100-percent" style="position:relative; background:url('/img/counsel-img-bg.jpg') no-repeat left bottom;">
								<img src="${pro.thumbnail}" class="pro-img-container" style="position:absolute; z-index:500;">
								<div class="pro-title-container mx-5" style="position:relative; z-index:600;">
									<p class="font-white pt-4 font-40" style="color:#5be2ff; font-weight:500; word-break:keep-all;">${pro.subject}</p>
									<div class="mt-5 font-yellow font-30" style="font-weight:500;">${pro.proname}<span class="font-20 font-white ml-2">${pro.ranks }</span>
									<!--<span class="mx-2"><a href="javascript:viewModal('#modalNum${pro.idx}')"><img src="/img/ico-more-view-btn.png"></a></span>  -->
									</div>
									<p class="pt-3 font-white font-20" style="font-weight:500; word-break:keep-all;">${pro.sentence}</p>
								</div>
							</div>
<%-- 							<div class="col-5 mobile-hidden" style="padding-left:50px;">
								<div class="col-12 rad-div-20 px-5 py-5" style="border:1px solid #cecece; height:470px;">
									<div class="ck-content">${pro.history }</div>
								</div>
							</div> --%>
						</div>
					</c:forEach>					
				</div>
			</div>			
		</div>
		<div class="col-12 pro-list-container">
			<div class="swiper-container" id="sw-pro-li-container">
			<ul class="swiper-wrapper pl-1">
				<c:forEach items="${professor}" var="pro" varStatus="status">
					<li class="swiper-slide px-1 py-2" style="width:20%;">
						<div class="col-12 rad-div-10 border off-hide pro-wrapper">
							<img src="${pro.thumbnail}">
							<div class="col-12 pro-list-container-txt">
								<p class="font-20 font-bold" style="color:#00285a;"><strong>${pro.proname}</strong><span class="ml-2 font-14">${pro.ranks }</span></p>
								<p class="font-14 mt-4" style="word-break:keep-all;">${pro.subject}</p>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
			</div>
			<div class="sw-pro-li-cantainer-pagination text-center"></div>
		</div>
		<div class="col-12 py-3 text-center"><a href="/introduce/pro.do"><label class="sm-label my-2">Бусад багш нарыг харна уу</label></a></div>
	</div>
</div>

<script>

if ($(window).width() > 768) {
	var proliSwiper = new Swiper('#sw-pro-li-container', {
		loop : true,
		speed : 800,
		autoplay: { delay: 2000, disableOnInteraction: false, },
		slidesPerView : 3,
		pagination: {el: ".sw-pro-li-cantainer-pagination", clickable: true, },
	});
	var proThumbSwiper = new Swiper('#sw-pro-thumb-container', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proliSwiper
	      }
	});	
} else {
	var proliSwiper = new Swiper('#sw-pro-li-container', {
		loop : true,
		speed : 800,
		autoplay: { delay: 2000, disableOnInteraction: false, },
		slidesPerView : 2,
		pagination: {el: ".sw-pro-li-cantainer-pagination", clickable: true, },
	});
	var proThumbSwiper = new Swiper('#sw-pro-thumb-container', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proliSwiper
	      }
	});
}

</script>

<script>
	function viewModal(str){
		var modal = str;
		$(modal).show();
	}
	function closeModal(str){
		var modal = str;
		$(modal).hide();
	}
</script>

<c:forEach items="${professor}" var="prolist" varStatus="status">
<div class="modal" id="modalNum${prolist.idx}" style="display:none; width:100%; height:100%; background: rgba(0, 0, 0, 0.7); position:fixed; z-index:999;">
  <div class="modal-dialog" role="document" style="max-width:600px; min-width:350px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="close" onclick="closeModal('#modalNum${prolist.idx}')">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="col-12">
			<div class="col-12 px-2 py-4 pro-main-modal off-hide mobile-100-percent" style="position:relative; background:url('/img/pro-sign-bg.jpg') no-repeat left bottom;">
				<img src="${prolist.thumbnail}" class="pro-img-modal" style="position:absolute;z-index:500;">
				<div class="pro-title-modal" style="position:relative; z-index:600;">
					<p class="font-white font-20" style="color:#5be2ff; font-weight:500; word-break:keep-all;">${prolist.subject }</p>
					<p class="mt-4 font-white font-16" style="font-weight:500;">${prolist.proname}<span class="ml-2">${prolist.ranks }</span></p>
					<p class="mt-4 font-white font-14" style="font-weight:500; word-break:keep-all;">${prolist.sentence }</p>
					<div class="col-12 mt-4">
						<div class="col-1"><img src="/img/ico-watch-img.png" width="15px"></div>
						<div class="col-11 pl-2"><span class="font-white font-14" style="font-weight:400; word-break:keep-all;">${prolist.schedule }</span></div>
					</div>
					<div class="col-12 mt-3">
						<div class="col-1"><img src="/img/ico-schedule-img.png" width="15px"></div>
						<div class="col-11 pl-2"><span class="font-white font-14" style="font-weight:400; word-break:keep-all;">${prolist.classnm }</span></div>
					</div>
				</div>
			</div>
			<div class="col-12">
				<div class="col-12 px-3 py-5">
					<div class="ck-content">${prolist.history }</div>
				</div>
			</div>
      </div>
    </div>
  </div>
</div>
</c:forEach>

<div class="container-fluid" style="height:50px;"></div>	

