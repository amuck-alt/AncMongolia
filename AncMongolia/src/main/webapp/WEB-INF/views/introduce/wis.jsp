<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-특별한이유</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>

	<div class="container-fluid intro-banner-was-container">
		<div class="row intro-row pad-top-150">
			<div class="col-md-6">
				<img src="../img/intro-was-ban-img-01.png">
			</div>
			<div class="col-md-6">
				<img src="../img/intro-was-ban-img-02.png">
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row intro-row site-map-row">
			<ul>
				<li class="font-12 font-gray">Home</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-gray">크루팩토리소개</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-bold">크루팩토리가 특별한 이유</li>
			</ul>
		</div>
	</div>

	<div class="container-fluid bg-dark-navy">
		<div class="row intro-row">
			<div class="col-md-12 text-center">
				<div class="d-height-100 text-center align-middle">
					<h1 class="font-white font-bold ">크루팩토리는 이렇게 다릅니다</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="d-height-100"></div>
	<div class="container-fluid">
		<div class="row intro-row">
			<div class="col-md-6">
				<img src="../img/intro-was-ct-img-01.png">
			</div>
			<div class="col-md-6">
				<img src="../img/intro-was-ct-img-02.png">
			</div>
		</div>
		<div class="d-height-100"></div>
		<div class="row intro-row">
			<div class="col-md-3">
				<div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<!-- label class="sm-label bg-danger font-white font-20 font-bold mb-2"></label -->
						<h4 class="mb-2">
							크루팩토리는 <span class="font-bold font-black">함께</span> 합니다
						</h4>
						<p class="card-text mb-2 font-gray">수강생들의 실력향상을 위해 교수부(원장, 부원장)와 관리팀이 매일 상주하며, 취업지원팀의 별도 면담을 상시 진행하고 있습니다.</p>
						<img src="../img/intro-was-01-img.png">
					</div>
					<div class="col-auto d-none d-lg-block"></div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<!-- label class="sm-label bg-danger font-white font-20 font-bold mb-2"></label -->
						<h4 class="mb-2">
							크루팩토리는 <span class="font-bold font-black">엄격</span> 합니다
						</h4>
						<p class="card-text mb-2 font-gray">대학교 강의식의 대규모 정원제, 수강신청제가 아닌 소수정원, 최대8명으로 엄격하게 제한을 두며 교육합니다. 따라서, 개별첨삭을 고집하며 1:1트레이닝위주로 커리큘럼을 진행하고 있습니다.</p>
						<img src="../img/intro-was-02-img.png">
					</div>
					<div class="col-auto d-none d-lg-block"></div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<!--  label class="sm-label bg-danger font-white font-20 font-bold mb-2"></label-->
						<h4 class="mb-2">
							크루팩토리는 수강생들의 <br>
							<span class="font-bold font-black">말</span>에 귀기울 입니다
						</h4>
						<p class="card-text mb-2 font-gray">매월 "강의평가"를 진행하며 수강생들이 희망하는 방향과 학원의 부족한 부분을 파악하여 함께 발전하기 위해 노력합니다.</p>
						<img src="../img/intro-was-03-img.png">
					</div>
					<div class="col-auto d-none d-lg-block"></div>
				</div>
			</div>



		</div>
		<!-- edu-row end -->
	</div>
	<!-- container end -->

	<div class="d-height-100"></div>
	<%@ include file="../include/counsel.jsp"%>

	<footer> </footer>

</body>
</html>