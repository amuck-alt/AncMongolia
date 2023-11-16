<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-국내항공사과정</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>
</head>
<body>
<%@ include file="../include/nav.jsp"%>

<div class="container-fluid" style="background:url('/img/counsel-img-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-14 mb-4 font-pink">Japanese airport ground crew employment</p>
				<p class="font-30 mb-4">Японы нисэх онгоцны буудал<br>газрын багийнхан</p>
				<p class="font-14 mb-4 font-gray">ANC-ээс олгосон сургалтыг дүүргэсэн хүмүүс ANC-ийн үйл ажиллагаа явуулдаг агаарын тээврийн компаниудад ярилцлага хийх боломжийг олгоно.</p>
			<div class="mt-4">
				<a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid py-5">
	<div class="row cf-row">
		<ul class="col-12 my-3">
			<li class="col-12 float-left font-30 font-bold my-2 mobile-100-percent"><span class="">Бүх оюутнуудад ярилцлага хийх боломжийг олгодог</span></li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 my-3">
			<p class="font-18 font-gray">ANC-ээс олгосон сургалтыг дүүргэсэн хүмүүс ANC-ийн үйл ажиллагаа явуулдаг агаарын тээврийн компаниудад ярилцлага хийх боломжийг олгоно.</p>
		</div>
		<div class="col-12 my-3">
			<img src="/img/support-ja-img-001.png">
		</div>
	</div>
</div>

<div class="container-fluid py-5">
	<div class="row cf-row">
		<ul class="col-12 my-3">
			<li class="col-12 float-left font-30 font-bold my-2 mobile-100-percent"><span class="">Японы нисэх онгоцны буудлын газрын багийн үндсэн үүрэг</span></li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 pl-2 mobile-100-percent">
			<ul>
				<li class="font-18 ml-4 my-2 list-disc">Нисэх онгоцны буудлын захиалга, тасалбарын үйлчилгээ</li>
				<li class="font-18 ml-4 my-2 list-disc">Нисэх онгоцны буудал Check-in Counter</li>
				<li class="font-18 ml-4 my-2 list-disc">Нисэх онгоцны буудлын татваргүй дэлгүүр</li>
				<li class="font-18 ml-4 my-2 list-disc">Нисэх онгоцны буудал VIP Lounge</li>
				<li class="font-18 ml-4 my-2 list-disc">Mobile Counter</li>
			</ul>
		</div>
	</div>
</div>

<%@ include file="../include/collaboration.jsp" %>

<div class="container-fluid py-5">
	<div class="row cf-row">
		<ul class="col-12 my-3">
			<li class="col-12 float-left font-30 font-bold my-2 mobile-100-percent"><span class="">Таны ажиллах боломжтой Японы нисэх онгоцны буудлууд</span></li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 pl-2 mobile-100-percent">
			<ul>
				<li class="float-left mx-2 my-2 text-center"><img src="/img/j-airport-narita.png" class="rad-div"><br>Narita Airport</li>
				<li class="float-left mx-2 my-2 text-center"><img src="/img/j-airport-nagoya.png" class="rad-div"><br>Nagoya Airport</li>
				<li class="float-left mx-2 my-2 text-center"><img src="/img/j-airport-hukuoka.png" class="rad-div"><br>Hukuoka Airport</li>
				<li class="float-left mx-2 my-2 text-center"><img src="/img/j-airport-haneda.png" class="rad-div"><br>Haneda Airport</li>
				<li class="float-left mx-2 my-2 text-center"><img src="/img/j-airport-gansei.png" class="rad-div"><br>Gansei Airport</li>
				<li class="float-left mx-2 my-2 text-center"><img src="/img/j-airport-chitose.png" class="rad-div"><br>Chitose Airport</li>
			</ul>
		</div>
	</div>
</div>


<div class="container-fluid my-5 bg-navy">
	<div class="row cf-row">
		<div class="col-12 py-5" style="background:url('/img/edu-gs-img-banner-001.png') no-repeat right; height:300px;">
			<ul class="col-12">
			<li class="col-12 float-left font-40 font-bold my-3 font-white">ANC&nbsp;&nbsp;<span class="font-blue">Агаарын тээврийн газрын<br>багийнхны сургалтын анги</span></li>
			<li class="col-12 font-18 font-white">ANC-ийн агаарын тээврийн тусгай газрын багийнхан <span class="font-pink">All-In-One Class</span></li>
		</ul>
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row cf-row">
		<div class="col-12 my-3">
<!-- 			<div class="card my-4">
				<div class="card-body">
					<div class="col-12 py-3 px-3">
						<div class="col-2 font-blue font-bold font-30 mobile-100-percent">Step.1</div>
						<div class="col-6 mobile-100-percent">
							<p class="font-20 pr-3">Баримт бичгийг шалгах бэлтгэл,<br>Өөрийгөө танилцуулах бичих ур чадварын сургалт</p>
							<ul class="my-3">
								<li class="ml-3 font-gray list-disc">Хэлтэй холбоотой гэрчилгээ авах үйл явц</li>
							</ul>
						</div>
						<div class="col-4 mobile-100-percent"><img src="/img/edu-class-img-001.jpg" width="100%"></div>
					</div>
				</div>
			</div>
			<div class="card my-4">
				<div class="card-body">
					<div class="col-12 py-3 px-3">
						<div class="col-2 font-blue font-bold font-30 mobile-100-percent">Step.2</div>
						<div class="col-6 mobile-100-percent">
							<p class="font-20 pr-4">Баримт бичгийг шалгасны дараа ярилцлагад бэлдэж байна</p>
							<ul class="my-3">
								<li class="ml-3 font-gray list-disc">Агаарын тээврийн бизнес ба корпорацийн дүн шинжилгээ</li>
								<li class="ml-3 font-gray list-disc">Image Making, Мэндлэх арга, Маяг засах</li>
								<li class="ml-3 font-gray list-disc">Foreign Language Interview</li>
								<li class="ml-3 font-gray list-disc">Бодит ярилцлагатай төстэй асуулт/хариултын дасгал</li>
								<li class="ml-3 font-gray list-disc">Бодит амьдрал дээрх хуурамч ярилцлага</li>
							</ul>
						</div>
						<div class="col-4 mobile-100-percent"><img src="/img/edu-class-img-002.png" width="100%"></div>
					</div>
				</div>
			</div> -->
			<div class="card my-4">
				<div class="card-body">
					<p class="py-3 px-3 font-20 font-bold py-2"><span class="font-blue">Step.1</span>&nbsp;&nbsp;&nbsp;Баримт бичгийг шалгах бэлтгэл, Өөрийгөө танилцуулах бичих ур чадварын сургалт</p>
				</div>
			</div>
			<div class="card my-4">
				<div class="card-body">
					<p class="py-3 px-3 font-20 font-bold py-2"><span class="font-blue">Step.2</span>&nbsp;&nbsp;&nbsp;Баримт бичгийг шалгасны дараа ярилцлагад бэлдэж байна</p>
				</div>
			</div>
			<div class="card my-4">
				<div class="card-body">
					<p class="py-3 px-3 font-20 font-bold py-2"><span class="font-blue">Step.3</span>&nbsp;&nbsp;&nbsp;Эцсийн хүлээн авалтад мэргэжлийн удирдлагын багийг томилох</p>
				</div>
			</div>
		</div>
	</div>
</div>	

<!-- 특별프로그램 -->
<div class="container-fluid py-5" style="background-image: url('/img/edu-banner-ko-sub2-bg.png');">
	<div class="row sub-row">
		<div class="col-12 py-4 text-center">
			<p class="font-30 font-bold font-white">Энгийн хичээлээс гадуур тусгай лекц уншдаг</p>
			<div class="py-3 text-center line-2-white" style="width: 100px; margin: 0 auto;"></div>
		</div>
		<div class="col-12 my-3">
			<div class="col-3 px-2 py-2" id="mobile-100-percent">
				<div class="col-12 bg-light-gray rad-div px-4 py-4">
					<p class="py-3 font-20 font-bold">Тусгай лекцийн анги</p>
					<div class="line-1-gray"></div>
					<div class="col-12">
						<p class="font-14 my-2 font-gray">- Speech &amp; Voice Training</p>
						<p class="font-14 my-2 font-gray">- Hair &amp; Makeup</p>
						<p class="font-14 my-2 font-gray">- Resume Guide</p>
						<p class="font-14 my-2 font-gray">- English Interview</p>
					</div>
					<div class="col-12 mt-2 off-hide">
						<img src="/img/special_pht_KO_01.png" id="mobile-100-percent">
					</div>
				</div>
			</div>
			<div class="col-3 px-2 py-2" id="mobile-100-percent">
				<div class="col-12 bg-light-gray rad-div px-4 py-4">
					<p class="py-3 font-20 font-bold">Судалгааны бүлэг</p>
					<div class="line-1-gray"></div>
					<div class="col-12">
						<p class="font-14 my-2 font-gray">- Ижил зорилтот агаарын тээврийн компанитай оюутнуудын судалгааны бүлэг</p>
						<p class="font-14 my-2 font-gray">- Нэг агаарын тээврийн компанийн багштай хичээлд сууна</p>
					</div>
					<div class="col-12 mt-2 off-hide">
						<img src="/img/special_pht_KO_02.png" id="mobile-100-percent">
					</div>
				</div>
			</div>
			<div class="col-3 px-2 py-2" id="mobile-100-percent">
				<div class="col-12 bg-light-gray rad-div px-4 py-4">
					<p class="py-3 font-20 font-bold">Амжилттай өргөдөл гаргагчидтай уулзах</p>
					<div class="line-1-gray"></div>
					<div class="col-12">
						<p class="font-14 my-2 font-gray">- Агаарын тээврийн компанийн амжилттай нэр дэвшигчдийн түүх</p>
						<p class="font-14 my-2 font-gray">- Бэлтгэх арга, нэр дэвшигчдийн үндсэн үзүүлэлтүүд</p>
					</div>
					<div class="col-12 mt-2 off-hide">
						<img src="/img/special_pht_KO_03.png" id="mobile-100-percent">
					</div>
				</div>
			</div>
			<div class="col-3 px-2 py-2" id="mobile-100-percent">
				<div class="col-12 bg-light-gray rad-div px-4 py-4">
					<p class="py-3 font-20 font-bold">Тусгай хөтөлбөр</p>
					<div class="line-1-gray"></div>
					<div class="col-12">
						<p class="font-14 my-2 font-gray">
							- Нислэгийн тусгай үйлчилгээнд зориулсан "Дохионы хэл"-ийн гэрчилгээ
						</p>
						<p class="font-14 my-2 font-gray">
							- Аюулгүй байдалтай холбоотой<span> 'CPR'</span>Төгссөн гэрчилгээ
						</p>
						<p class="font-14 my-2 font-white">.</p>

					</div>
					<div class="col-12 mt-2 off-hide">
						<img src="/img/special_pht_04.png" id="mobile-100-percent">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/jobavailable.jsp" %>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>


