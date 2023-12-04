<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="에어마카오, 핀에어, 베트남항공, 걸프항공, 피치항공 외국항공사 승무원 채용대행사"/>
<meta name="author" content="크루팩토리">
<meta name="keywords" content="에어마카오, 핀에어, 베트남항공, 걸프항공, 피치항공 외국항공사 승무원 채용대행사"/>
<meta name="description" content="에어마카오, 핀에어, 베트남항공, 걸프항공, 피치항공 외국항공사 승무원 채용대행사" />
<title>크루코리아 - 외국항공사 승무원 채용 에이전시</title>
<%@ include file = "include/header.jsp" %>
</head>

<header><%@ include file="include/nav.jsp"%></header>
<body>
<!-- PC용 메인비쥬얼 -->
<div class="container-fluid main-visual mobile-hidden" style="background-color:green; position:relative;">
	<div class="row">
		<div class="swiper-container">
			<div class="swiper-wrapper" >
				<div class="swiper-slide"><img src="/images/230417_main_banner.jpg"></div>
			</div>
		</div>
	</div>
</div>
<!-- 모바일용 메인비쥬얼 -->
<div class="container-fluid main-visual-mobile mobile-show" id="sw-main-visual-mobile">
	<div class="row">
		<div class="swiper-container">
			<div class="swiper-wrapper" >
				<div class="swiper-slide"><img src="/images/mobile/230417_main_banner_mo.png"></div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid py-5 bg-gray">
	<div class="row">
		<div class="sm-row">
			<div class="col-12 text-center">
				<div class="font-26 mb-1 font-white" id="mobile-100-percent">항공사채용정보</div>
				<div class="py-2 line-2-white" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
			</div>
			<div class="col-mx-12 text-center">
				<div class="col-12 my-4">
					<c:set var="now" value="<%=new java.util.Date()%>" />
                	<c:set var="thisDayTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH" /></c:set>
					<c:forEach items="${recruit}" var="recruit">
						<c:choose>
							<c:when test="${recruit.num eq '1' }">
								<ul class="col-12">
									<li class="col-12 my-3 float-left">
										<div class="col-12 px-3">
											<a href="/recruit/view.do?idx=${recruit.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><img src="${recruit.thumbnail }" alt="${recruit.title }" width="100%" class="rad-div-10"></a>
										</div>
										<div class="col-12 px-3 my-4">
											<div class="col-12 text-left">
												<div class="col-12 py-1">
													<label style="top-margin:10px;">
														<a href="/recruit/view.do?idx=${recruit.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><span class="font-20 font-white">${recruit.title }</span></a>
													</label>
													<c:choose>
														<c:when test="${thisDayTime <= recruit.stdaytime}"><label class="ml-3 bg-pink font-white main-label">진행중</label></c:when>
								                        <c:when test="${thisDayTime >= recruit.enddaytime}"><label class="ml-3 bg-navy font-white main-label">종료</label></c:when>
								                        <c:otherwise><label class="ml-3 bg-pink font-white main-label">진행중</label></c:otherwise>
								                    </c:choose>
												</div>
												<div class="col-12 py-1">
													<span class="font-16 font-gray">${recruit.stdaytime }시 ~ ${recruit.enddaytime }시</span>
												</div>
											</div>
										</div>
									</li>
								</ul>		
							</c:when>
							<c:otherwise>
								<li class="col-12 my-3 float-left">
									<div class="col-12 px-3">
										<a href="/recruit/view.do?idx=${recruit.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><img src="${recruit.thumbnail }" alt="${recruit.title }" width="100%" class="rad-div-10"></a>
									</div>
									<div class="col-12 px-3 my-4">
										<div class="col-12 text-left">
											<div class="col-12 py-1">
												<label style="top-margin:10px;">
													<a href="/recruit/view.do?idx=${recruit.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><span class="font-20 font-white">${recruit.title }</span></a>
												</label>
												<c:choose>
													<c:when test="${thisDayTime < recruit.stdaytime}"><label class="ml-3 bg-pink font-white main-label">진행중</label></c:when>
								                    <c:when test="${thisDayTime > recruit.enddaytime}"><label class="ml-3 bg-navy font-white main-label">종료</label></c:when>
								                    <c:otherwise><label class="ml-3 bg-pink font-white main-label">진행중</label></c:otherwise>
								                </c:choose>
											</div>
											<div class="col-12 py-1">
												<span class="font-16 font-gray">${recruit.stdaytime }시 ~ ${recruit.enddaytime }시</span>
											</div>
										</div>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>
			<div class="col-12 text-center mt-5 mb-3">
	    		<button class="btn bg-navy font-white" style="width:120px;" onclick="javascrpt:location.href='/recruit/list.do?startPage=&visiblePages=&searchText='">더보기</button>
	    	</div>
    	</div>
	</div>
</div>

<div class="container-fluid py-5 bg-ivory">
	<div class="row sm2-row">
		<div class="col-12 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">공지사항</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
		<div class="col-12 mt-5">
			<ul>
				<c:forEach items="${announce}" var="announce"  varStatus="status">
					<li class="col-12 line-1-gray py-3">
						<div class="col-1 pt-1"><span class="main-label font-white bg-navy">공지</span></div>
						<div class="col-11 pl-1">
						<span class="font-20 mr-3"><a href="/news/view.do?idx=${announce.idx}&startPage=&visiblePages=&searchText=&section=">${fn:substring(announce.title, 0, 30)}</a></span>
						<span class="font-16 float-right font-gray mobile-hidden"><fmt:formatDate value="${announce.regdate}" pattern="yyyy-MM-dd"/></span>
						<div class="font-16 font-gray mobile-show"><fmt:formatDate value="${announce.regdate}" pattern="yyyy-MM-dd"/></div>
						</div>
					</li>				
				</c:forEach>
			</ul>
		</div>
		<div class="col-12 text-center mt-5 mb-3">
    		<button class="btn bg-navy font-white" style="width:120px;" onclick="javascrpt:location.href='/news/list.do?startPage=&visiblePages=&searchText='">더보기</button>
    	</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row sm-row">
		<div class="col-12 py-5 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">채용대행 항공사 정보</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
		<div class="col-12">
			<ul>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/salamair.jpg" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">SalamAir</li>
							<li class="font-18 my-3">살람에어 객실승무원 채용(대행) </li>
							<li class="font-16 my-2 font-gray">2022_04</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/scoot.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Scoot</li>
							<li class="font-18 my-3">스쿠트항공 객실승무원 채용(대행) </li>
							<li class="font-16 my-2 font-gray">2022_02</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/finnair.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">FinnAir</li>
							<li class="font-18 my-3">핀에어 객실승무원 채용(대행) </li>
							<li class="font-16 my-2 font-gray">2019_10</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/ethiopian.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Ethiopian</li>
							<li class="font-18 my-3">에티오피아항공 객실승무원 채용(대행) </li>
							<li class="font-16 my-2 font-gray">2019_10</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/gulfair.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">GulfAir</li>
							<li class="font-18 my-3">걸프에어 객실승무원 채용(특채) </li>
							<li class="font-16 my-2 font-gray">2019_05, 2019_03</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/philippineair.jpg" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Philippine Airline</li>
							<li class="font-18 my-3">필리핀항공 객실승무원 채용(추천) </li>
							<li class="font-16 my-2 font-gray">2018_07</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/airmacau.jpg" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">AirMacau</li>
							<li class="font-18 my-3">에어마카오 객실승무원 채용(대행) </li>
							<li class="font-16 my-2 font-gray">2018_05</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/emirates.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Emirates, Qatar, Etihad</li>
							<li class="font-18 my-3">중동항공사 객실승무원 채용(대행) </li>
							<li class="font-16 my-2 font-gray">2017_04</li>
						</ul>
					</div>
				</li>
				<li class="col-6 line-1-gray py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/peachair.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Peach</li>
							<li class="font-18 my-3">피치항공 객실승무원 채용(대행) </li>
							<li class="font-16 my-2 font-gray">2016_11</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>

<div class="container-fluid py-5 bg-ivory">
	<div class="row sm-row site-map-row my-3">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">상담신청</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
			<div class="pt-2 font-22" style="line-height:3rem;">크루팩토리의  높은합격률은<br>지금까지 <span class="font-blue font-bold">소수정원</span> 인원제한을 원칙으로 <span class="font-blue font-bold">그룹과외수업</span>을 고집한 결과 입니다.</div>
		</div>
		<div class="col-12 mt-3">
			<form role="form" name="counsel" method="post" action="/counsel/request.do" data-toggle="validator">
			<input type="hidden" name="result" id="result" value="${ param.result }">
			<input type="hidden" name="phone" id="phone" value="">
			<input type="hidden" name="office" value="gangnam">
			<input type="hidden" name="stat" value="신규">
			<input type="hidden" name="path" value="counsel/online.do">
			<input type="hidden" name="domain" value="<%= request.getServerName() %>">
			<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
			<input type="hidden" name="reurl" value="counsel/online.do"/>
			<div class="col-12 text-center font-24">상담정보입력</div>
			<div class="col-12 my-3 line-2-black"></div>
			<div class="col-12 ">
				<div class="col-12 mb-2 mobile-100-percent">
					<div class="my-2 font-bold font-20">개인정보입력</div>
						<div class="card col-12 bg-light-gray">
						<div class="card-body">
							<div class="form-group">
		                      <label for="name" class="font-bold">이름/나이</label>
		                      <div class="input-group">
		                      <input type="text" class="form-control" name="name" id="name" onkeyup="onlyKorean('name')" maxlength="10" placeholder="이름" data-error="이름을 정확히 입력하세요" required>
		                      <input type="number" class="form-control input-group-append ml-2" name="age" id="age" oninput="maxLengthCheck(this)" placeholder="나이" maxlength="2" data-error="나이를 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
					        <div class="form-group">
		                      <label for="input-gender" class="font-bold">연락처</label>
		                      <div class="input-group">
		                        <select class="form-control mr-2" id="mobile-1" name="mobile-1" style="height:3.75rem;">
		                          <option value="010">010</option>
		                        </select>
			                    <input type="number" class="form-control input-group-append mr-2" name="mobile-2" id="mobile-2" oninput="maxLengthCheck(this)" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                    <input type="number" class="form-control input-group-append" name="mobile-3" id="mobile-3" oninput="maxLengthCheck(this)" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                  </div>
			                  <div class="help-block with-errors text-danger"></div>
			                </div>
			                <div class="form-group">
		                      <label for="name" class="font-bold">이메일</label>
		                      <div class="input-group">
		                      <input type="email" class="form-control" name="email" id="email" maxlength="20" placeholder="이메일" data-error="이메일을 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
			                <div class="">
		                    	<div class="custom-control custom-checkbox">
			                    	<input type="checkbox" name="agree" value="yes" id="agree" class="custom-control-input" checked>
			                        <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
			                	</div>
		                    </div>
						</div>
					</div>
				</div>				
				<div class="col-12 mt-2 mb-2">
					<div class="my-2 font-bold font-20">궁금한내용</div>
					<div class="form-group">
                      <textarea class="form-control" name="memo" id="memo" placeholder="궁금한 것들을 여기에 기재하세요" rows="4"></textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
				</div>
				<div class="col-12 mb-5 my-1 pb-5 mobile-hidden">
					<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:4.75rem; width: 400px; margin:0 auto;">상담신청</button>
				</div>
				<div class="col-12 mb-5 my-1 pb-5 mobile-show">
					<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:4.75rem;  margin:0 auto;">상담신청</button>
				</div>	
			</div>
			</form>
		</div>
	</div> 
</div>


<footer><%@ include file="include/footer.jsp"%></footer>

</body>
