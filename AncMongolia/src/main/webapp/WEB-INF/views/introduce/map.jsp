<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-찾아오시는길</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>

	<%@ include file="../include/nav.jsp"%>

	<div class="container-fluid intro-banner-map-container">
		<div class="row sub-row pad-top-100">
			<div class="col-md-12">
				<div class="col-12">
					<h4 class="font-white">Academy location</h4>
					<div class="line-2-white my-3" style="width:200px;"></div>
					<h1 class="font-white">Байршил</h1>
					<h5 class="font-yellow mt-3">Tel : XXX-XXX-XXXX, ------------------------------------------------</h5>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid my-5" id="page1">
		<div class="row sub-row">
			<div class="col-12">
				<p class="font-gray font-18">
					크루팩토리승무원학원 <b class="font-black">강남캠퍼스</b>
				</p>
				<div class="col-12 line-2 my-2" style="width: 100px;"></div>
			</div>
			<div class="col-12">
				<div id="map1" style="width: 100%; height: 500px;"></div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4">
				<p class="font-gray font-18-m ">주소</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m ">서울특별시 강남구 논현동 18-4 성일빌딩 1F~2F</p>
			</div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4" style="height:100%;">
				<p class="font-gray font-18-m">교통편 (지하철)</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m my-1">신사역 3번 출구 <span class="font-14-m">(3번 출구 이용 도보 3분)</span></p>
				<p class="font-gray font-18-m my-1">논현역 9번 출구 <span class="font-14-m">(9번 출구 이용 도보 3분)</span></p>
			</div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4" style="height:100%;">
				<p class="font-gray font-18-m">교통편 (버스)</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m my-1">간선 <span class="font-14-m">(140, 144, 145, 241, 400, 402, 420, 421, 440, 441, 470, 542, 741)</span></p>
				<p class="font-gray font-18-m my-1">직행 <span class="font-14-m">(1100, 3030, 3100, 6900, 9700, G746)</span></p>
				<p class="font-gray font-18-m my-1">급행 <span class="font-14-m">(8001)</span></p>
				<p class="font-gray font-18-m my-1">광역 <span class="font-14-m">(9404, 9711A, M7412)</span></p>
				<p class="font-gray font-18-m my-1">공항 <span class="font-14-m">(6009)</span></p>
			</div>
			</div>
		</div>
		<!-- edu-row end -->
	</div>
	<!-- container end -->

	<div class="container-fluid my-5" id="page2">
		<div class="row sub-row">
			<div class="col-12">
				<p class="font-gray font-18">
					크루팩토리승무원학원 <b class="font-black">강남캠퍼스 제2관</b>
				</p>
				<div class="col-12 line-2 my-3" style="width: 100px;"></div>
			</div>
			<div class="col-12">
				<div id="map2" style="width: 100%; height: 500px;"></div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4">
				<p class="font-gray font-18-m ">주소</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m ">서울특별시 강남구 논현동 17-5 극동빌딩 7층</p>
			</div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4" style="height:100%;">
				<p class="font-gray font-18-m">교통편 (지하철)</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m my-1">신사역 3번 출구 <span class="font-14-m">(3번 출구 이용 도보 3분)</span></p>
				<p class="font-gray font-18-m my-1">논현역 9번 출구 <span class="font-14-m">(9번 출구 이용 도보 3분)</span></p>
			</div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4" style="height:100%;">
				<p class="font-gray font-18-m">교통편 (버스)</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m my-1">간선 <span class="font-14-m">(145, 148, 240, 440, 441)</span></p>
				<p class="font-gray font-18-m my-1">직행 <span class="font-14-m">(1100, 9202)</span></p>
				<p class="font-gray font-18-m my-1">급행 <span class="font-14-m">(8001)</span></p>
				<p class="font-gray font-18-m my-1">지선 <span class="font-14-m">(4212, 4412)</span></p>
			</div>
			</div>
		</div>
		<!-- edu-row end -->
	</div>
	<!-- container end -->

	<div class="container-fluid my-5" id="page3">
		<div class="row sub-row">
			<div class="col-12">
				<p class="font-gray font-18">
					크루팩토리승무원학원 <b class="font-black">인천캠퍼스</b>
				</p>
				<div class="col-12 line-2 my-3" style="width: 100px;"></div>
			</div>
			<div class="col-12">
				<div id="map3" style="width: 100%; height: 500px;"></div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4">
				<p class="font-gray font-18-m ">주소</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m ">인천광역시 부평구 경원대로 1382 대한빌딩 5층</p>
			</div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4" style="height:100%;">
				<p class="font-gray font-18-m">교통편 (지하철)</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m my-1">부평역 14번 출구 <span class="font-14-m">(14번 출구 이용 도보 1분)</span></p>
				<p class="font-gray font-18-m my-1">부평역 6번 출구 <span class="font-14-m">(6번 출구 이용 도보 3분)</span></p>
			</div>
			</div>
			<div class="border-map-gray my-3" style="width:100%;" id="mobile-100-percent">
			<div class="col-3 bg-gray-3 px-3 py-4" style="height:100%;">
				<p class="font-gray font-18-m">교통편 (버스)</p>
			</div>
			<div class="col-9 px-3 py-4">
				<p class="font-gray font-18-m my-1">간선 <span class="font-14-m">(10, 23, 24, 35, 24-1, 30, 34, 2, 111-2, 103-1)</span></p>
				<p class="font-gray font-18-m my-1">좌석 <span class="font-14-m">(103, 111, 780)</span></p>
				<p class="font-gray font-18-m my-1">지선 <span class="font-14-m">(552, 562, 574, 557, 560, 570, 554, 555, 561, 583)</span></p>
				<p class="font-gray font-18-m my-1">일반 <span class="font-14-m">(81, 90, 88)</span></p>
				<p class="font-gray font-18-m my-1">광역 <span class="font-14-m">(1400, 9500)</span></p>
				<p class="font-gray font-18-m my-1">급행 <span class="font-14-m">(904)</span></p>
			</div>
			</div>
		</div>
		<!-- edu-row end -->
	</div>
	<!-- container end -->

	<div class="container-fluid mobile-hidden" style="height: 100px"></div>

	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=94scwakr1d"></script>

	<script>
		function fnMove(seq) {
			var offset = $("#page" + seq).offset();
			$('html, body').animate({
				scrollTop : offset.top
			}, 400);
		}

		var HOME_PATH = window.HOME_PATH || '.';

		var crewfactory = new naver.maps.LatLng(37.513968, 127.020540), map = new naver.maps.Map(
				'map1', {
					center : crewfactory.destinationPoint(100, -200),
					zoom : 17
				}), marker = new naver.maps.Marker({
			map : map,
			position : crewfactory
		});

		var contentString = [
			'<div class="mx-2 my-2" style="width:300px;">',
			'   <div class="col-12 px-3 mb-3"><img src="/img/logo.png" width="100%"></div>',
			'   <p class="px-3 py-2 font-20 font-bold">크루팩토리승무원학원</p>',
			'   <p class="px-3 py-2 font-12 font-gray">서울특별시 강남구 논현동 18-4 성일빌딩 1F, 2F <br> 크루팩토리 승무원학원 백아(주)<br>',
			'   <p class="px-3 py-2 font-14 font-black font-bold">T. 02-2038-0065</p><br><br>',
			'</div>' ].join('');


		var infowindow = new naver.maps.InfoWindow({
			content : contentString
		});

		naver.maps.Event.addListener(marker, "click", function(e) {
			if (infowindow.getMap()) {
				infowindow.close();
			} else {
				infowindow.open(map, marker);
			}
		});

		infowindow.open(map, marker);

		var crewfactory = new naver.maps.LatLng(37.514981, 127.020288), map = new naver.maps.Map(
				'map2', {
					center : crewfactory.destinationPoint(100, -100),
					zoom : 18
				}), marker = new naver.maps.Marker({
			map : map,
			position : crewfactory
		});

		var contentString = [
				'<div class="mx-2 my-2" style="width:300px;">',
				'   <div class="col-12 px-3 mb-3"><img src="/img/logo.png" width="100%"></div>',
				'   <p class="px-3 py-2 font-20 font-bold">크루팩토리지상직,여행사학원</p>',
				'   <p class="px-3 py-2 font-12 font-gray">서울특별시 강남구 논현동 17-5 극동빌딩 7층<br>',
				'   <p class="px-3 py-2 font-14 font-black font-bold">T. 02-2038-0064</p><br><br>',
				'</div>' ].join('');

		var infowindow = new naver.maps.InfoWindow({
			content : contentString
		});

		naver.maps.Event.addListener(marker, "click", function(e) {
			if (infowindow.getMap()) {
				infowindow.close();
			} else {
				infowindow.open(map, marker);
			}
		});

		infowindow.open(map, marker);

		var crewfactory = new naver.maps.LatLng(37.491048, 126.722276), map = new naver.maps.Map(
				'map3', {
					center : crewfactory.destinationPoint(100, -100),
					zoom : 18
				}), marker = new naver.maps.Marker({
			map : map,
			position : crewfactory
		});

		var contentString = [
			'<div class="mx-2 my-2" style="width:350px;">',
			'   <div class="col-12 px-3 mb-3"><img src="/img/logo.png" width="100%"></div>',
			'   <p class="px-3 py-2 font-20 font-bold">크루팩토리승무원학원 - 인천캠퍼스</p>',
			'   <p class="px-3 py-2 font-12 font-gray">인천광역시 부평구 경원대로 1382 대한빌딩 5층<br>',
			'   <p class="px-3 py-2 font-14 font-black font-bold">T. 032-502-3356</p><br><br>',
			'</div>' ].join('');

		var infowindow = new naver.maps.InfoWindow({
			content : contentString
		});

		naver.maps.Event.addListener(marker, "click", function(e) {
			if (infowindow.getMap()) {
				infowindow.close();
			} else {
				infowindow.open(map, marker);
			}
		});

		infowindow.open(map, marker);
	</script>




</body>
</html>