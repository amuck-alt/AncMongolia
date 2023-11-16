<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-언론보도자료</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>


<div class="container-fluid" style="background:url('/img/counsel-banner-bg-img.jpg') no-repeat center; height:350px;">
	<div class="row cf-row" style="padding-top: 6rem;">
		<div>
			<p class="font-bebas-light font-20 font-thin font-white my-3">OVERSEAS EMPLOYMENT / INTERNSHIP</p>
			<p class="font-white font-30 font-bold my-2">
				<span style="color: #fc229c">Гадаадад ажил эрхлэлт, дадлага хийх</span>
			</p>
			<p class="font-white font-20 my-4">
				Бид гадаадад ажилд зуучлах, гадаадад дадлага хийх системтэй сургалтын хөтөлбөрөөр хангадаг.
			</p>
		</div>
	</div>
</div>


<div class="container-fluid my-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-30 font-bold my-2 mobile-100-percent"><span class="font-pink">Академи төгсөөд өргөдөл гаргаж болох ажил / мэргэжил</span></li>
			<li class="col-12 my-2"><div class="line-2-black"></div></li>
		</ul>
		<div class="col-12 my-4">
			<div class="col-7 mobile-100-percent">
				<div class="col-12">
					<ul>
						<li class="pt-3 my-2 mx-2 font-20 font-bold list-disc">Нисэх онгоцны буудалтай холбоотой ажил мэргэжил</li>
						<li class="my-2 mx-2 font-16 font-gray">Онгоцны үйлчлэгч, нисэх онгоцны газрын ажилчид зэрэг нисэх онгоцны буудлын үйлчилгээ, нисэхтэй холбоотой бүх салбарт ажилд авна</li>
						<li class="pt-3 my-2 mx-2 font-20 font-bold list-disc">Зочид буудал, аялал жуулчлалын үйлчилгээ</li>
						<li class="my-2 mx-2 font-16 font-gray">Дэлхийн зочид буудал, амралтын газар, аялал жуулчлалын компаниудад зочид буудлын үйлчилгээтэй холбоотой чиглэлээр ажиллах</li>
						<li class="pt-3 my-2 mx-2 font-20 font-bold list-disc">Крузын баг ба далайчид</li>
						<li class="my-2 mx-2 font-16 font-gray">Том / дунд аялалын хөлөг онгоцны багийн гишүүнээр ажиллах</li>
						<li class="pt-3 my-2 mx-2 font-20 font-bold list-disc">Аялал жуулчлалын агентлаг</li>
						<li class="my-2 mx-2 font-16 font-gray">Дэлхийн аялал жуулчлалын агентлагт ажилд авна</li>
						<li class="pt-3 my-2 mx-2 font-20 font-bold list-disc">Корпорацийн нарийн бичгийн даргын ажил / CS</li>
						<li class="my-2 mx-2 font-16 font-gray">CS боловсролын багшаар ажилд авна</li>
					</ul>
					<div class="col-12 mt-2">
						<a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a>
					</div>
				</div>
			</div>
			<div class="col-5 mobile-hidden"><img src="/img/lab-img-globe.png" width="100%"></div>
		</div>
	</div>
</div>

<!-- 크루팩토리 채용시스템(공통) -->
<%@ include file="../include/recruitsys.jsp"%>

<%@ include file="../include/jobavailable.jsp" %>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

</body>
</html>