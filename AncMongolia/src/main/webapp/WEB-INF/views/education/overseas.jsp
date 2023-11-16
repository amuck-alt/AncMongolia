<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-외국항공사과정</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>

</head>
<body>
<%@ include file="../include/nav.jsp"%>

<div class="container-fluid" style="background:url('/img/edu-banner-os-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-bebas-light font-14 font-gray my-3">OVERSEAS AIRLINES CABIN-CREW</p>
				<p class="font-30 mb-4"><span style="color: #fc229c">Гадаадын агаарын тээврийн компани</span> Бүхээгийн багийн курс</p>
				<p class="font-14 mb-4 font-gray">Бид хувийн дүр төрхийг оношлох, дүн шинжилгээ хийх замаар өндөр чанартай авъяас чадварыг хөгжүүлэх зорилготой.</p>
			<div class="mt-4">
				<a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid pt-4"></div>
<%@ include file="../include/jobavailable.jsp" %>

<%@ include file="../include/collaboration.jsp" %>

<div class="container-fluid py-5">
	<div class="row cf-row">
		<div class="col-12">
			<ul>
				<li class="font-24 font-bold float-left mx-2 pt-3">Дотоодын агаарын тээврийн онгоцны үйлчлэгчийн сургалт</li>
			</ul>
		</div>
		<div class="col-12 line-2-black my-3"></div>
		<div class="col-12 my-4 swiper-container" id="edu-section-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="card mx-1 bg-white">
						<div class="card-body">
							<div class="col-12">
								<div class="font-30 font-bold my-2">01&nbsp;&nbsp;Junior Class</div>
								<div class="line-1-gray"></div>
								<div class="font-16 font-gray py-3">Гадаадын агаарын тээврийн онгоцны үйлчлэгч Ярилцлагад бэлтгэх үндсэн хичээл</div>
								<div class="font-16 py-1">→</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card mx-1 bg-light-gray">
						<div class="card-body">
							<div class="col-12">
								<div class="font-30 font-bold my-2">02&nbsp;&nbsp;Senior Class</div>
								<div class="line-1-gray"></div>
								<div class="font-16 font-gray py-3">Гадаадын агаарын тээврийн онгоцны үйлчлэгч Ажилд орох өргөдөл гаргах бэлтгэл үйл явц</div>
								<div class="font-16 py-1">→</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card mx-1 bg-fact1">
						<div class="card-body">
							<div class="col-12">
								<div class="font-30 font-bold my-2">03&nbsp;&nbsp;Top Senior</div>
								<div class="line-1-gray"></div>
								<div class="font-16 font-gray py-3">Эцсийн хүлээн зөвшөөрөх Ажилд авах бэлтгэлийн үйл явц</div>
								<div class="font-16 py-1">→</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid py-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-40 font-bold my-2 mobile-100-percent"><span class="font-pink">01&nbsp;&nbsp;Junior Class</span></li>
			<li class="col-12 font-14 font-gray">Гадаадын агаарын тээврийн онгоцны үйлчлэгч Ярилцлагад бэлтгэх үндсэн хичээл</li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 py-4">
			<div class="swiper-pagination text-left" id="sw-eduos1-swiper-pagination" style="position: relative;"></div>
		</div>
		<div class="col-12 swiper-container" id="sw-eduos1-swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.1</span>&nbsp;&nbsp;&nbsp;Нислэгийн үйлчлэгч / Гадаадын агаарын тээврийн компаниудыг ойлгох</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-01-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">OverSeas Airline Company</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Онгоцны үйлчлэгч сүүлийн үеийн чиг хандлагын талаар ярилцлага өгөх</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Гадаадын агаарын тээврийн компаниудын гол цэгүүдийг улсаар нь тодорхойл</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Агаарын тээврийн компани бүрийн компанийн философи, авъяас чадварыг тодорхойлох</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.2</span>&nbsp;&nbsp;&nbsp;Image Making / Voice Training</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/01junior_02.png" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Personal Image Making</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Interview Manner</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Анхны сэтгэгдэл, зургийн ач холбогдол</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Онгоцны үйлчлэгчийн нүүрний хувирлын сургалт</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Агаарын тээврийн компани бүрийн дуудлага/дуу хоолой/амьсгалын сургалт, компанийн философи, авъяас чадварыг тодорхойлох</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.3</span>&nbsp;&nbsp;&nbsp;Hair / Makeup</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-03-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Өөрт тохирсон үсийг бүтээгээрэй</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Миний арьсны өнгөнд тохирсон нүүр будалт<br>(Personal Color)</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Гадаадын агаарын тээврийн компаниуд илүүд үздэг Appearence, Grooming Check</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.4</span>&nbsp;&nbsp;&nbsp;Resume / Cover letter &amp; CV</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-04-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Writing Resume / Cover Letter Check</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Амжилттай англи хэлний анкет болон нүүр хуудас бөглөсөн</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Төгсгөлийн шатанд CV шалгах нь чухал</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.5</span>&nbsp;&nbsp;&nbsp;Video Interview</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-05-001.jpg" width="100%" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Practice for video Interview</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Suitable voice tone</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Eye-contact and Effective expressions</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid py-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-40 font-bold my-2 mobile-100-percent"><span class="font-pink">02&nbsp;&nbsp;Senior Class</span></li>
			<li class="col-12 font-14 font-gray">Гадаадын агаарын тээврийн онгоцны үйлчлэгч Ажилд орох өргөдөл гаргах бэлтгэл үйл явц</li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 py-4">
			<div class="swiper-pagination text-left" id="sw-eduos2-swiper-pagination" style="position: relative;"></div>
		</div>
		<div class="col-12 swiper-container" id="sw-eduos2-swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.1</span>&nbsp;&nbsp;&nbsp;Ярилцлагын төрөл бүрийн гол санааг тодорхойл</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-06-001.jpg" class="rad-div" width="100%">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Assesment Day / Open Day</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">CV-Drop / Small Talk</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">What if / Role play</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Overseas Experience / Culture Shock</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.2</span>&nbsp;&nbsp;&nbsp;Group Activities</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-07-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Бусдаас ялгарах миний өөрийн ярилцлага</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Group Discussion / Debate</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Зөв дүгнэлт гаргах, уур амьсгал, багаар ажиллах сургалт</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.3</span>&nbsp;&nbsp;&nbsp;Миний өөрийн түүх ярих санаа</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-08-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Sentence or Word Shooting</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Public Speech</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.4</span>&nbsp;&nbsp;&nbsp;Resume / Cover letter &amp; CV</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-09-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Writing Resume / Cover Letter Check</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Амжилттай англи хэлний анкет болон нүүр хуудас бөглөсөн</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Төгсгөлийн шатанд CV шалгах нь чухал</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid py-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-40 font-bold my-2 mobile-100-percent"><span class="font-pink">03&nbsp;&nbsp;Top Senior Class</span></li>
			<li class="col-12 font-14 font-gray">Эцсийн хүлээн зөвшөөрөх Ажилд авах бэлтгэлийн үйл явц</li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 py-4">
			<div class="swiper-pagination text-left" id="sw-eduos3-swiper-pagination" style="position: relative;"></div>
		</div>
		<div class="col-12 swiper-container" id="sw-eduos3-swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.1</span>&nbsp;&nbsp;&nbsp;Амжилтанд хүрсэн оюутнуудад зориулсан уулзалт</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-10-001.jpg" class="rad-div" width="100%">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Саяхан элссэн оюутны хэлсэнчлэн ярилцлагын өрөөний уур амьсгалыг ойлго</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Ярилцлагын сүүлийн үеийн чиг хандлага, онцлох үйл явдлуудыг тодорхойл</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.2</span>&nbsp;&nbsp;&nbsp;Таны CV болон эцсийн хариултыг засварлаж байна</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-11-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Захирал нь CV-г засдаг</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Бүтэн өдрийн эрчимт эмчилгээ "CV Day"</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="card">
						<div class="card-body">
							<div class="col-12 mx-2 my-2">
								<p class="font-20 font-bold py-2"><span class="font-pink">Part.3</span>&nbsp;&nbsp;&nbsp;Ажилд авах бэлтгэлийн анги</p>
								<div class="col-6 mt-4 mb-2 mobile-100-percent">
									<img src="/img/edu-os-part-12-001.jpg" class="rad-div">
								</div>
								<div class="col-6 px-3 mt-4 mobile-100-percent">
									<ul>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Гадаадын агаарын тээврийн компаниудыг ажилд авахдаа ажилд бэлтгэх тусдаа бүлгийг бий болгодог</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Баримт бичгээс эхлээд эцсийн шат хүртэл төгс бэлтгэл</li>
										<li class="font-18 ml-4 my-2 font-gray list-disc">Улс орон болон агаарын тээврийн компани бүрийн гол цэгүүд / Бодит дадлага хийх хуурамч ярилцлага</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid pt-5"></div>
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



<script>
<!-- Initialize Swiper -->
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

	var edu1swiper = new Swiper('#sw-eduos1-swiper', {
		pagination : {
			el : '#sw-eduos1-swiper-pagination',
			clickable : true,
			renderBullet : function(index, className) {
				return '<span class="' + className + '">0' + (index + 1)
						+ '</span>';
			},
		},
	});

	var edu2swiper = new Swiper('#sw-eduos2-swiper', {
		pagination : {
			el : '#sw-eduos2-swiper-pagination',
			clickable : true,
			renderBullet : function(index, className) {
				return '<span class="' + className + '">0' + (index + 1)
						+ '</span>';
			},
		},
	});

	var edu3swiper = new Swiper('#sw-eduos3-swiper', {
		pagination : {
			el : '#sw-eduos3-swiper-pagination',
			clickable : true,
			renderBullet : function(index, className) {
				return '<span class="' + className + '">0' + (index + 1)
						+ '</span>';
			},
		},
	});
</script>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>



<script>
if ($(window).width() > 768) {
	var main_office_swiper = new Swiper('#edu-section-container', {
		slidesPerView : 3,
		coverflowEffect : {
			rotate : 50,
			stretch : 0,
			depth : 100,
			modifier : 1,
			slideShadows : true,
		}
	});
} else {
	var main_office_swiper = new Swiper('#edu-section-container', {
		slidesPerView : 1.5,
		coverflowEffect : {
			rotate : 50,
			stretch : 0,
			depth : 100,
			modifier : 1,
			slideShadows : true,
		}
	});
}
			
</script>