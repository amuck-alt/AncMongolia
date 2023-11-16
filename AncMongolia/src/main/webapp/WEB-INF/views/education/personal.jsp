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

<div class="container-fluid" style="background:url('/img/edu-banner-pv-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-14 mb-4 font-pink">Flight Attendant Personal Lesson</p>
				<p class="font-40 mb-4">Онгоцны үйлчлэгч<br>Хувийн хичээлүүд</p>
				<p class="font-14 mb-4 font-gray">Үүний зэрэгцээ энэ нь хувь хүний ​​чиг хандлагын дагуу хамгийн сайн үр дүнд хүрэх боломжийг олгодог. Тогтвортой ярилцлага, ур чадвар хөгжүүлэхэд дэмжлэг үзүүлэх боловсролын хөтөлбөр</p>
				<div class="mt-4">
					<a href="/counsel/online.do"><label class="sm-label my-2">Online Зөвлөгөө авах хүсэлт</label></a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- <div class="container-fluid">
	<div class="row cf-row">
		<ul class="col-12" style="background:url('/img/edu-pv-img-001.jpg') no-repeat right;">
			<li class="col-12 float-left font-30 font-bold my-2 mobile-100-percent"><span class="">What is Airport Ground Staff?</span></li>
			<li class="col-12 my-2"><div class="line-1-gray"></div></li>
		</ul>
		<div class="col-12 my-4">
			<p class="font-18 font-gray">Агаарын тээврийн газрын ажилтнууд нь нисэх онгоцны буудал дээр үйлчлүүлэгчидтэй харьцдаг онгоцны үйлчлэгч юм. Бүхээгийн багийнхан гэдэг нь нярав, няраваас бусад бүх хэлтэст хамаарна. Нислэгийн төлөвлөгөө гаргахаас эхлээд онгоцонд суух хүртэлх бүх үйлчилгээг газрын багийнхан хариуцдаг.</p>
			<img src="/img/edu-class-img-002.jpg" width="100%" class="my-4">
		</div>
	</div>
</div> -->

<div class="container-fluid py-5">
	<div class="row sm-row">
		<div class="col-12 mx-1 my-1">
			<div class="card py-5 rad-div-20" style="background:url('/img/edu-pv-img-002.png') no-repeat right;">
				<div class="card-body">
					<div class="col-12 px-5 py-5">
						<ul>
							<li class="font-30 font-pink font-bold">ANC-ийн санал болгосон 1,200 минутыг давах</li>
							<li class="my-4 text-center">
								<div class="line-2-black" style="width:300px;"></div>
							</li>
							<li class="font-20 font-gray">Нислэгийн үйлчлэгч нарт зориулсан хувийн<br>сургалт нь татгалзсан хариуг хүлээн авах явдал юм</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid pt-5">
	<div class="row">
		<div class="col-12 bg-ivory">
			<div class="col-8 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold">Ярилцлагын чиглэлийг өөрчлөхөд <span class="font-pink">1,200</span> минут</li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Та хэтэрхий оройтсон гэж бодож байна уу?<br>Тодорхой хугацаанд хувь хүний ​​хандлагыг тодорхойлох Нисэхийн салбарт тохирсон системчилсэн онол/практикийн боловсрол Онгоцны үйлчлэгч багш, мэргэжлийн багш нар Мэргэжлийн болон практик сургалт Хувь хүний ​​хэрэгцээнд тохирсон бүхээгийн багийн сургалт 1200 минут маш их зүйлийг өөрчилж чадна.</li>
					</ul>
				</div>
			</div>
			<div class="col-4 mobile-100-percent text-right">
				<img src="/img/edu-pv-img-02.png">
			</div>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="col-4 mobile-100-percent">
				<img src="/img/edu-pv-img-03.png" width="100%">
			</div>
			<div class="col-6 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold">Үр дүнд өөрчлөлт оруулах <span class="font-pink">1,200</span> минут</li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Оюутан бүрийн хувийн онцлогт тохируулсан 1:1 хувийн боловсрол Дамжуулахын үр дүн нь яаж байгаагаас хамаарна Тэд маш олон янзын загвараар ирдэг.<br>1200 хүн маш их туршлагатай болно.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-12 bg-ivory">
			<div class="col-8 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold"><span class="font-pink">ANC</span>-ийн өөрийнх Сургалтын зөв шийдэл</li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Ярилцлагын үндсэн ойлголтыг бий болгохоос эхлээд гүнзгийрүүлсэн ярилцлагын практик хүртэлх боловсрол.<br>Богино хугацаанд бичиг баримт бүрдүүлэхээс эхлээд эцсийн шатны шалгаруулалт хүртэл хүргэдэг ANC-ийн зөв сургалтын шийдэл</li>
					</ul>
				</div>
			</div>
			<div class="col-4 mobile-100-percent text-right">
				<img src="/img/edu-pv-img-04.png">
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="col-4 mobile-100-percent">
				<img src="/img/edu-pv-img-05.png" width="100%">
			</div>
			<div class="col-6 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold"><span class="font-pink">Нарийвчилсан</span> ярилцлагын арга техниктэй холбоотой ярилцлагын сургалт</li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Ярилцлагад, дүр төрх эсвэл даван туулах чадвар/хариулт гэх мэт.<br>Ганцаарчилсан ярилцлагын аргууд хүчгүй байдаг.<br>Үндсэн ойлголтууд болон системчилсэн үндсэн процессууд хоорондоо холбоотой байх үед Энэ нь ярилцлагын бат бөх суурийг бий болгож, эцсийн хүлээн авалтад хүргэдэг.<br>Онгоцны үйлчлэгчийн сургалтын үеэр та анхны сэтгэлгээ, чиглэлээ хэрхэн тохируулах вэ?<br>Би хэрхэн эхэлж байгаагаас хамаарч, ярилцлага хийх ойлголтуудын урсгалаас би суралцдаг Өмнө нь сурсан үндсэн хичээлүүдийн хамаарал болон таны ирээдүйд суралцах ярилцлагын практик Та нарийвчилсан үйл явцыг зөв ойлгож чадна.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-12 bg-ivory">
			<div class="col-8 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold"><span class="font-pink">Хувь</span> хүний сургалтын хөтөлбөр</li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Тухайн хүний ​​давуу болон сул талуудыг тодорхойлсны дараа дутуу байгаа хэсгийг нөхөх сургалтыг явуулдаг.<br>Системчилсэн сургалтын хөтөлбөрөөр дамжуулан та богино хугацаанд эцсийн үр дүнд хүрэх боломжтой. Боломжуудыг гаргаж ирдэг</li>
					</ul>
				</div>
			</div>
			<div class="col-4 mobile-100-percent text-right">
				<img src="/img/edu-pv-img-06.png">
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="col-4 mobile-100-percent">
				<img src="/img/edu-pv-new-img-007.png" width="100%">
			</div>
			<div class="col-6 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold">Богино хугацаанд хийж<br><span class="font-pink">болох ярилцлага + имиж бүтээх</span></li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Зураг бүтээх (харааны + сонсголын) + онгоцны үйлчлэгч нарт зориулсан үндсэн мэргэшлийн сургалт.<br>Захирал/дэд захирал нь 15-аас дээш жил нисэх туршлагатай ба 5-аас доошгүй жил багшлах туршлагатай байх Онгоцны үйлчлэгчийн дүр бүтээхээс эхлээд ярилцлага өгөх хүртэл сургалт</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row">
		<div class="col-12 bg-ivory">
			<div class="col-8 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold">Дамжуулах догол мөрийг тодорхойлдог <span class="font-pink">Story Telling</span></li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Агаарын тээврийн компанид дүн шинжилгээ хийх, ажилд авах талаар ойлгох нь өгөгдсөн зүйл юм!<br>Өөрийгөө танилцуулах зүйлс цаг тутамд өөрчлөгддөг Ингэснээр би бусдаас ялгарах өөрийн хариултыг өгөх болно.<br>Хувь хүний ​​санал хүсэлт, ярилцлага байнга явагддаг</li>
					</ul>
				</div>
			</div>
			<div class="col-4 mobile-100-percent text-right">
				<img src="/img/edu-pv-new-img-009.png">
			</div>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="col-4 mobile-100-percent">
				<img src="/img/edu-pv-new-img-010.png" width="100%">
			</div>
			<div class="col-6 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold"><span class="font-pink">Ярилцлагын</span> үйл явц бүрийн ялгааг тодорхойлох сургалт</li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Оюутнуудад нэг бүрчлэн дүн шинжилгээ хийхгүйгээр шууд хариу өгөх гэж яарахын оронд 1:1 харьцаатай тогтмол ярилцлагаар дамжуулан нарийвчилсан дүн шинжилгээ хийсний дараа бодит ярилцлагад чадвараа тохируулах боломжийг олгодог практик сургалт</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-12 bg-ivory">
			<div class="col-8 mobile-100-percent">
				<div class="col-12 px-5 py-5">
					<ul>
						<li class="font-40 font-black font-bold"><span class="font-pink">Ялгарсан</span>, онцгой менежмент</li>
						<li class="my-4 text-center">
							<div class="line-2-black" style="width:300px;"></div>
						</li>
						<li class="font-18 font-gray">Хичээл удирдаж буй багш нарын хувь хүний ​​санал хүсэлт<br>Танд 1:1 харьцаатай тусгай зөвлөгч томилогдох болно<br>Оюутны менежментэд чиглэсэн удирдлагын багаар дамжуулан системчилсэн удирдлага</li>
					</ul>
				</div>
			</div>
			<div class="col-4 mobile-100-percent text-right">
				<img src="/img/edu-pv-new-img-004.png">
			</div>
		</div>
	</div>
</div>


<!-- 특별프로그램 -->
<div class="container-fluid pb-5" style="background-image: url('/img/edu-banner-ko-sub2-bg.png');">
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


