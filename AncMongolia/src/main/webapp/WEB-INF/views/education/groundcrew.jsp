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

<div class="container-fluid" style="background:url('/img/edu-class-os-banner-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-14 mb-4 font-pink">Intensive course for ground crew</p>
				<p class="font-40 mb-4">Airport Xазрын ажилтнууд</p>
				<p class="font-14 mb-4 font-gray">Нисэх онгоцны буудлын үйлчилгээний дадлага, үйлчилгээний оффисын ажилд зориулсан анкет бэлтгэх, ярилцлага хийх, имиж бүрдүүлэхэд чиглэсэн сургалт.</p>
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
			<li class="col-12 float-left font-30 font-bold my-2 mobile-100-percent"><span class="">What is Airport Ground Staff?</span></li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 my-4">
			<p class="font-18 font-gray">Агаарын тээврийн газрын ажилтнууд нь нисэх онгоцны буудал дээр үйлчлүүлэгчидтэй харьцдаг онгоцны үйлчлэгч юм. Бүхээгийн багийнхан гэдэг нь нярав, няраваас бусад бүх хэлтэст хамаарна. Нислэгийн төлөвлөгөө гаргахаас эхлээд онгоцонд суух хүртэлх бүх үйлчилгээг газрын багийнхан хариуцдаг.</p>
			<img src="/img/edu-class-img-002.jpg" width="100%" class="my-4">
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-30 font-bold my-2 mobile-100-percent"><span class="">Газрын багийн үндсэн үүрэг</span></li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">01</span>&nbsp;&nbsp;&nbsp;Check-in counter (Reservation/Ticketing)</p>
			<p class="font-16 font-gray pt-1 pb-3">Зорчигчийн паспортыг хүлээн авах, зорчих газарт тохирсон нэвтрэх бичиг баримтыг шалгах ажил нь ая тухтай аялахад тусална.</p>
			<div class="col-12 card bg-light-gray">
				<div class="card-body">	
				<div class="col-6 mobile-100-percent">
					<img src="/img/edu-gs-img-001.png" width="100%" class="rad-div">
				</div>
				<div class="col-6 pl-4 mobile-100-percent">
					<ul>
						<li class="font-16 ml-4 my-2 list-disc">Суудлын мэндчилгээ</li>
						<li class="font-16 ml-4 my-2 list-disc">Суудлын хуваарилалт</li>
						<li class="font-16 ml-4 my-2 list-disc">Floor Service</li>
						<li class="font-16 ml-4 my-2 list-disc">Ачаа тээш хүргэх үйлчилгээ</li>
						<li class="font-16 ml-4 my-2 list-disc">Оруулсан бичиг баримтыг шалгана уу</li>
						<li class="font-16 ml-4 my-2 list-disc">Онгоцны тасалбар олгох</li>
					</ul>
				</div>
				</div>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">02</span>&nbsp;&nbsp;&nbsp;Явах/орох хаалганы үүрэг</p>
			<p class="font-16 font-gray pt-1 pb-3">Онгоцонд суухаас өмнө зорчигчдыг онгоцонд суулгахад нь туслах.</p>
			<div class="col-12 card bg-light-gray">
				<div class="card-body">	
				<div class="col-6 mobile-100-percent">
					<img src="/img/edu-gs-img-002.png" width="100%" class="rad-div">
				</div>
				<div class="col-6 pl-4 mobile-100-percent">
					<ul>
						<li class="font-16 ml-4 my-2 list-disc">Ахмад болон бүхээгийн багийнхантай харилцах</li>
						<li class="font-16 ml-4 my-2 list-disc">Шаардлагатай бичиг баримтыг хүргэх</li>
						<li class="font-16 ml-4 my-2 list-disc">Зорчигчийн тусгай мэдээллийг бүхээгийн багийнхантай хуваалцаарай</li>
					</ul>
				</div>
				</div>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">03</span>&nbsp;&nbsp;&nbsp;VIP Lounge</p>
			<p class="font-16 font-gray pt-1 pb-3">Бизнесийн / нэгдүгээр зэрэглэлийн зорчигчдын ашигладаг VIP Lounge-д ажиллаж байна.</p>
			<div class="col-12 card bg-light-gray">
				<div class="card-body">	
				<div class="col-6 mobile-100-percent">
					<img src="/img/edu-gs-img-003.png" width="100%" class="rad-div">
				</div>
				<div class="col-6 pl-4 mobile-100-percent">
					<ul>
						<li class="font-16 ml-4 my-2 list-disc">VIP зорчигчийн үйлчилгээ</li>
						<li class="font-16 ml-4 my-2 list-disc">Service Mind</li>
					</ul>
				</div>
				</div>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">04</span>&nbsp;&nbsp;&nbsp;Аюулгүй байдлын шалгалт</p>
			<p class="font-16 font-gray pt-1 pb-3">Яаралтай нөхцөл байдлаас урьдчилан сэргийлэх зорилгоор зорчигч/тээшний үзлэг хийнэ.</p>
			<div class="col-12 card bg-light-gray">
				<div class="card-body">	
				<div class="col-6 mobile-100-percent">
					<img src="/img/edu-gs-img-004.png" width="100%" class="rad-div">
				</div>
				<div class="col-6 pl-4 mobile-100-percent">
					<ul>
						<li class="font-16 ml-4 my-2 list-disc">Онгоцонд тэсрэх бодисын үзлэг</li>
						<li class="font-16 ml-4 my-2 list-disc">Гар тээшний үзлэг</li>
						<li class="font-16 ml-4 my-2 list-disc">Багийн эд зүйлсийг шалгах</li>
						<li class="font-16 ml-4 my-2 list-disc">Биеийн үзлэг, рентген шинжилгээ</li>
					</ul>
				</div>
				</div>
			</div>
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


