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

<div class="container-fluid edu-banner-keoz-container">
	<div class="row cf-row" style="padding-top: 6rem;">
		<div>
			<p class="font-bebas-light font-20 font-thin font-white my-3">DOMESTIC AIRLINES CABIN-CREW</p>
			<p class="font-white font-30 font-bold my-2">
				<span style="color: #fc229c">Дотоодын агаарын</span> Тээврийн онгоцны үйлчлэгчийн сургалт
			</p>
			<p class="font-white font-thin font-18 my-4">
				Хичээлийг агаарын тээврийн компани бүрийн стратегийг ойлгодог мэргэжлийн багш заана
			</p>
			<a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a>
		</div>
	</div>
</div>

<div class="container-fluid py-5">
	<div class="row cf-row">
		<div class="col-12 my-3">
			<ul>
				<li class="font-20 float-left mx-2" style="padding-top: 5px; list-style-type: disc;">Дотоодын агаарын тээврийн онгоцны үйлчлэгчийн сургалт</li>
			</ul>
		</div>
		<div class="col-12 line-2-black"></div>
		<div class="col-12 my-4 swiper-container" id="edu-section-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="card mx-1 bg-white">
						<div class="card-body">
							<div class="col-12">
								<div class="font-30 font-bold my-2">01&nbsp;&nbsp;Junior Class</div>
								<div class="line-1-gray"></div>
								<div class="font-16 font-gray py-3">Дотоодын агаарын тээврийн онгоцны үйлчлэгчийн ярилцлагад бэлтгэх үндсэн сургалт</div>
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
								<div class="font-16 font-gray py-3">Дотоодын агаарын тээврийн онгоцны үйлчлэгч aжилд орох өргөдөл гаргах бэлтгэл үйл явц</div>
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
								<div class="font-16 font-gray py-3">Эцсийн хүлээн авах ажилд элсүүлэх бэлтгэл үйл явц</div>
								<div class="font-16 py-1">→</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-40 font-bold my-2 mobile-100-percent"><span class="font-pink">01&nbsp;&nbsp;Junior Class</span></li>
			<li class="col-12 font-16 font-gray">Дотоодын агаарын тээврийн онгоцны үйлчлэгч aжилд орох өргөдөл гаргах бэлтгэл үйл явц</li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">Part.1</span>&nbsp;&nbsp;&nbsp;Онгоцны үйлчлэгч / Дотоодын агаарын тээврийн мэдээлэл</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-01-001.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Багийн үүрэг/даалгаврыг ойлгох</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Онгоцны үйлчлэгч сүүлийн үеийн чиг хандлагын талаар ярилцлага өгөх</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Хамгийн сүүлийн үеийн агаарын тээврийн мэдээ, агаарын тээврийн портал сайт зэрэг мэдээллийг хуваалцах</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Агаарын тээврийн компани бүрийн компанийн философи, авъяас чадварыг тодорхойлох</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">Part.2</span>&nbsp;&nbsp;&nbsp;1:1 Тохируулсан сургалтын VCR буудлага</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-01-002.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">1:1 Хувь хүний зургийн шинжилгээ, санал хүсэлт</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Өөрийн давуу болон сул талуудын дүн шинжилгээ</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Бичлэгийн файлыг тусад нь өгсөн</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">Part.3</span>&nbsp;&nbsp;&nbsp;Image Makeing I - Visual Image</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-01-003.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Анхны сэтгэгдэл, дүр төрхийн ач холбогдол Бие/Мэндлэх/Алхах</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Байгалийн, сэтгэл татам инээмсэглэлийг бий болго</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Онгоцны үйлчлэгчийн дүр төрхийг хүссэн агаарын тээврийн компанид тохируулан сургах</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">Part.4</span>&nbsp;&nbsp;&nbsp;Image Making II - Сонсголын дүрслэл</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-01-004.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Хэл яриаг ойлгох, сургах</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Дуут сургалтын дуудлага/дуу хоолой/амьсгал</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">Part.5</span>&nbsp;&nbsp;&nbsp;Hair / Makeup</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-01-005.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Өөрт тохирсон үсийг бүтээгээрэй</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Миний арьсны өнгөнд тохирсон будалт</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Мэргэжлийн үс, нүүр будалтын багш урьж байна</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-pink">Part.6</span>&nbsp;&nbsp;&nbsp;Баримт бичгийг шалгахад бэлтгэ</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-01-006.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Үргэлжлүүлэн бичих тойм, арга</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Дизайн сэдэл, өөрийгөө танилцуулах материал</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">STAR/STOARR техник/өргөжүүлэх арга/өгүүлбэрийг шахах</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/collaboration.jsp" %>

<div class="container-fluid my-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-40 font-bold my-2 mobile-100-percent"><span class="font-blue">02&nbsp;&nbsp;Senior Class</span></li>
			<li class="col-12 font-16 font-gray">Дотоодын агаарын тээврийн онгоцны үйлчлэгч aжилд орох өргөдөл гаргах бэлтгэл үйл явц</li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-blue">Part.1</span>&nbsp;&nbsp;&nbsp;Дотоодын агаарын тээврийн компаниудын онцлогийг тодорхойлох</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-02-001.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Ярилцлагын чиг хандлагын талаар мэдээлэлтэй байх</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Компанийн шинжилгээ/авъяас чадварын шинжилгээ</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Сүүлийн үеийн асуултуудын хариултыг бичнэ үү</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Хүлээгдэж буй асуултуудын хариултыг бичнэ үү</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-blue">Part.2</span>&nbsp;&nbsp;&nbsp;Ярилцлагын журам бүрийн гол санааг тодорхойл</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-02-002.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Ярилцлагын процедур бүрийн онцлогийг тодорхойл</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Нийтлэг болон хувь хүний ​​асуултууд дээр суурилсан практик ярилцлагын дадлага</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Агаарын тээврийн хэрэгслийн дүрэмт хувцас солих анги</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Гүйцэтгэх/эцсийн ярилцлагын үеэр хувцсаа сольсны дараа ярилцлага явагдана.</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Агаарын тээврийн компанийг ажилд авахдаа тусдаа тусгай лекц уншдаг</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-blue">Part.3</span>&nbsp;&nbsp;&nbsp;Өөрийгөө бусдаас ялгарах түүхийг бүтээх</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-02-003.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Агаарын тээврийн компани бүрийн хамгийн сүүлийн үеийн ярилцлагын асуултуудыг өгдөг</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Өөрийнхөө түүхийг зохиох</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Өөрийгөө бусдаас ялгарах чин сэтгэлийн хариултыг бэлтгэ</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-blue">Part.4</span>&nbsp;&nbsp;&nbsp;Англи хэл дээр ярилцлага хийсэн</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-02-004.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Англи хэл дээрх ярилцлага/нислэгийн үеэр зарлах</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Англи хэлний ярилцлагын ур чадвараа хүндрэлийн түвшинд нэмэгдүүлээрэй</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Хэрхэн зүгээр л үг хэлж өнгөрөх вэ</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row cf-row">
		<ul class="col-12">
			<li class="col-12 float-left font-40 font-bold my-2 mobile-100-percent"><span class="font-navy">03&nbsp;&nbsp;Top Senior Class</span></li>
			<li class="col-12 font-16 font-gray">Эцсийн хүлээн авах ажилд элсүүлэх бэлтгэл үйл явц</li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-navy">Part.1</span>&nbsp;&nbsp;&nbsp;Ажилд авах талаар мэдээлэл өгөх хурал</p>
			<div class="col-6 my-2 mobile-100-percent">
				<img src="/img/edu-ko-part-03-001.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Агаарын тээврийн компанийг ажилд авахдаа тусдаа товч танилцуулга хийдэг</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Ярилцлагын сүүлийн үеийн чиг хандлага, онцлох үйл явдлуудыг ойлгох</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Өөрчлөгдсөн өөрийгөө танилцуулах зүйл - Баримт бичиг бэлтгэх зөвлөмж</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-navy">Part.2</span>&nbsp;&nbsp;&nbsp;Өөрийгөө танилцуулах хэсгийг засварлах</p>
			<div class="col-6 my-2 mobile-100-persent">
				<img src="/img/edu-ko-part-03-002.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Найруулагч таныг өөрийгөө танилцуулга бичихэд чиглүүлдэг</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Бүтэн өдрийн эрчимт эмчилгээ "Анхны өдөр"</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Агаарын тээврийн хэрэгслийн дүрэмт хувцас солих анги</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-navy">Part.3</span>&nbsp;&nbsp;&nbsp;Ажилд авах бэлтгэл ангийн үйл ажиллагаа</p>
			<div class="col-6 my-2 mobile-100-persent">
				<img src="/img/edu-ko-part-03-003.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Агаарын тээврийн компанийг ажилд авахдаа тусад нь ажилд авах бэлтгэлийн бүлгийг бий болгодог</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Ажлын 1-р түвшний / 2-р гүйцэтгэх / эцсийн журмын хувьд тусдаа ахиц дэвшил</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Ярилцлагын журамд тохирсон хуурамч ярилцлага</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-3">
			<p class="font-20 font-bold py-2"><span class="font-navy">Part.4</span>&nbsp;&nbsp;&nbsp;Steward Class</p>
			<div class="col-6 my-2 mobile-100-persent">
				<img src="/img/edu-ko-part-03-004.png">
			</div>
			<div class="col-6 my-2 mobile-100-percent">
				<ul>
					<li class="font-18 ml-3 my-2 font-gray list-disc">"Нислэгийн үйлчлэгч бэлтгэх анги" нь зөвхөн эрэгтэйчүүдтэй хийсэн бодит ярилцлагад зориулагдсан/li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">Эрэгтэй өргөдөл гаргагчийн хүссэн элементүүдэд тохирсон няравын сургалт</li>
					<li class="font-18 ml-3 my-2 font-gray list-disc">"Даман менежер" байсан багш удирдан явууллаа.</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid pt-4"></div>

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
<div class="container-fluid pt-4"></div>

<%@ include file="../include/jobavailable.jsp" %>

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