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

<div class="container-fluid mt-5">
	<div class="row gs-row">
	  <div class="col-12">
	    <div class="col-3 mb-1 font-30 font-bold mobile-100-percent">국민내일배움카드</div>
   <!-- <div class="col-9 py-2 mobile-100-percent font-16 font-gray">크루팩토리에서 국민내일배움카드의 혜택을 받아보세요.</div> -->
	    <div class="col-12 py-2 line-2-black"></div>
	  </div>
	</div>
</div>

<div class="container-fluid my-4">
	<div class="row gs-row">
		<div class="col-12">
			<ul>
				<li class="float-left pr-2"><label class="rad-div-20 bg-navy font-white px-4 py-2"># 지원내용</label></li>
				<li class="float-left pr-2"><label class="rad-div-20 bg-navy font-white px-4 py-2"># 훈련과정</label></li>
				<li class="float-left pr-2"><label class="rad-div-20 bg-navy font-white px-4 py-2"># 크루팩토리 교습비</label></li>
			</ul>
		</div>
	</div>
</div>


<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12 mb-4 rad-div-20 off-hide" style="background:url('/img/trcs-bg-img-000.jpg') no-repeat center;">
			<div class="col-6 mobile-100-percent">
				<p class="font-14 font-white pt-5 px-5"><!-- Tomorrow's Learning Card System --></p>
				<p class="font-40 font-bold font-white py-3 px-5">국민내일배움카드란?</p>
				<p class="font-16 font-white py-3 px-5" style="line-height:1.6rem;">2021년 통합으로 재직에 관계없이 배움을 제공받을 수 있으며, 일정금액을 지원해주는 프로그램입니다.
				고용노동부가 실시한 훈련기관 인증평가를 거쳐 인증받은 기관이 과정승인을 받고 수업을 진행할 수 있습니다.</p>
				<div class="px-5 pb-5"><a href="/counsel/online.do?cost=y&imgchk="><button class="banner-button mt-5">지원금상담신청</button></a></div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<p class="font-24 font-bold">지원대상</p>
			<table class="col-12 my-4 table-ground">
				<thead>
					<tr class="bg-navy font-white">
						<th class="py-3 px-2" colspan="2">지원대상</th>
						<th class="py-3 px-2">훈련비 지원율</th>
						<th class="py-3 px-2">지원기간</th>
					</tr>					
				</thead>
				<tbody>
					<tr>
						<td class="py-3 px-2" colspan="2">국민내일배움카드 소지자</td>
						<td class="py-3 px-2">1인당 최대 300만원 한도로 훈련비 45~85% 지원(한도를 초과한 금액은 자비부담)</td>
						<td class="py-3 px-2" rowspan="3">실직,재직 상관없이 5년</td>
					</tr>
					<tr>
						<td class="py-3 px-2" rowspan="2">취업성공패키지 참여자</td>
						<td class="py-3 px-2 text-center">2유형</td>
						<td class="py-3 px-2" >1인당 최대 300만원 한도로 훈련비 50~85% 지원(한도를 초과한 금액은 자비부담)</td>
					</tr>
					<tr>
						<td class="py-3 px-2 text-center">1유형</td>
						<td class="py-3 px-2" >1인당 최대 300만원 한도로 훈련비 80~100% 지원(한도를 초과한 금액은 자비부담)</td>
					</tr>
				</tbody>
			</table>
		</div>		
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<p class="font-24 font-bold">지원한도 <span class="mx-3 font-12 font-gray font-normal">실업 재직 등 경제활동에 관계없이 5년간 300만원 지원되며 아래 유형에 해당하는 경우 계좌한도가 소진된 이후 최대 200만원까지 추가로 지원받을 수 있음.</span></p>
			<table class="col-12 my-4 table-ground">
				<thead>
					<tr class="bg-light-gray">
						<th class="py-3 px-2 border">구분</th>
						<th class="py-3 px-2 border">계좌한도의 추가액</th>
					</tr>					
				</thead>
				<tbody>
					<tr>
						<td class="py-3 px-2">1. 비정규직 근로자</td>
						<td class="py-3 px-2" rowspan="4">100만원</td>
					</tr>
					<tr>
						<td class="py-3 px-2">2. 우선지원대상기업 종사자</td>
					</tr>
					<tr>
						<td class="py-3 px-2">3. 고용위기지역 및 특별고용지원업종 대상자</td>
					</tr>
					<tr>
						<td class="py-3 px-2">4. 연소득이 20년 기준 중위소득 50% 이상 60%미만인 자</td>
					</tr>
					<tr>
						<td class="py-3 px-2">5. 연소득이 20년 기준 중위소득이 50%미만인 자</td>
						<td class="py-3 px-2">200만원</td>
					</tr>
				</tbody>
			</table>
			<div class="col-12">
				<p class="font-14">* 중도 탈락할 경우, 1회 이상 20만원, 2회 이상 패널티시 50만원 차감, 3회 이상 달성시 100만원 차감 (현재 계좌의 잔액이 부족한 경우에는 '차기' 갱신되는 계좌(300~500에서 차감됨))</p>
			</div>
		</div>		
	</div>
</div>


<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12 my-3">
			<p class="font-24 font-bold">훈련과정</p>
		</div>
		<div class="col-12">
			<img src="/img/trcs-img-0004.jpg" class="mobile-hidden">
			<img src="/img/trcs-img-0004-m.jpg" class="mobile-show">
		</div>
		<div class="col-12 py-3 text-center">
			<p class="font-14">*140시간 이상의 훈련과정은 고용센터 상담을 통해 신청이 가능하며, 140시간 미만 훈련과정은 HRD-Net로 신청이 가능합니다.</p>
		</div>
	</div>
</div>



<div class="container-fluid my-5">
	<div class="row sub-row">
		<div class="col-12 text-center">
			<img src="/img/detail_210107_01.jpg" class="mobile-100-percent">
			<img src="/img/detail_210107_02.jpg" class="mobile-100-percent">
			<img src="/img/detail_210107_03.jpg" class="mobile-100-percent">
			<!-- <img src="/img/detail_210107_04.jpg" class="mobile-100-percent"> -->
			
			
		</div>
	</div>
</div>

<!-- <div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<p class="font-24 font-bold">크루팩토리 교습비</p>
		</div>
		<table class="col-12 my-4 table-ground">
			<tbody>
				<tr>
					<td class="py-3 px-3 bg-skyblue">학원</td>
					<td class="py-3 px-3">항공사지상직</td>
					<td class="py-3 px-3 bg-skyblue">학원</td>
					<td class="py-3 px-3">여행사취업/해외취업</td>
				</tr>
				<tr>
					<td class="py-3 px-3 bg-skyblue">국비수강료</td>
					<td class="py-3 px-3">780,120원</td>
					<td class="py-3 px-3 bg-skyblue">금액</td>
					<td class="py-3 px-3">1,040,160원</td>
				</tr>
				<tr>
					<td class="py-3 px-3 bg-skyblue">총시간</td>
					<td class="py-3 px-3">120시간</td>
					<td class="py-3 px-3 bg-skyblue">총시간</td>
					<td class="py-3 px-3">160시간</td>
				</tr>
				<tr>
					<td class="py-3 px-3 bg-skyblue">취업성공패키지1</td>
					<td class="py-3 px-3">0</td>
					<td class="py-3 px-3 bg-skyblue">취업성공패키지1</td>
					<td class="py-3 px-3">0</td>
				</tr>
				<tr>
					<td class="py-3 px-3 bg-skyblue">취업성공패키지2</td>
					<td class="py-3 px-3">117,020원</td>
					<td class="py-3 px-3 bg-skyblue">취업성공패키지2</td>
					<td class="py-3 px-3">312,050원</td>
				</tr>
				<tr>
					<td class="py-3 px-3 bg-skyblue">일반훈련생</td>
					<td class="py-3 px-3">156,030원</td>
					<td class="py-3 px-3 bg-skyblue">일반훈련생</td>
					<td class="py-3 px-3">364,060원</td>
				</tr>
			</tbody>
		</table>
	</div>
</div> -->



<!-- 하단링크 -->
<%@ include file="../include/footlink.jsp"%>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>














