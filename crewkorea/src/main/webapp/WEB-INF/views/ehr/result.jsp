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
<meta name="subject" content="항공사지상직채용정보"/>
<meta name="author" content="크루팩토리">
<meta name="keywords" content="항공사지상직채용정보"/>
<meta name="description" content="항공사지상직채용정보" />
<title>온라인채용지원</title>
<%@ include file = "../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/nav.jsp"%>

<script>
$(document).ready(function(){
	var result = "${result.idx}";
	if (result == null || result == '' || result == 'null') {
		alert("지원정보가 없습니다.");
		location.href = history.back();
	}
});
</script>

<div class="container-fluid">
	<div class="row sm-row site-map-row my-4">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">지원현황조회</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
	</div>
</div>
<!-- div class="container-fluid">
	<div class="row sm-row site-map-row mt-2 mb-4">
		<div class="col-12 line-2-black">
			<ul>
				<li class="mr-5 float-left" style="margin-bottom: -15px;"><button class="btn-danger" style="padding: 5px 20px; font-size: 14px; border-radius: 4px;">진행중</button></li>
				<li class="mr-5 float-left" style="margin-bottom: -15px;"><button class="btn-danger" style="padding: 5px 20px; font-size: 14px; border-radius: 4px;">마감(심사중)</button></li>
				<li class="mr-5 float-left" style="margin-bottom: -15px;"><button class="btn-danger" style="padding: 5px 20px; font-size: 14px; border-radius: 4px;">서류전형</button></li>
				<li class="mr-5 float-left" style="margin-bottom: -15px;"><button class="btn-danger" style="padding: 5px 20px; font-size: 14px; border-radius: 4px;">1차면접진행</button></li>
				<li class="mr-5 float-left" style="margin-bottom: -15px;"><button class="btn-danger" style="padding: 5px 20px; font-size: 14px; border-radius: 4px;">2차면접진행</button></li>
				<li class="mr-5 float-left" style="margin-bottom: -15px;"><button class="btn-danger" style="padding: 5px 20px; font-size: 14px; border-radius: 4px;">최종결과발표</button></li>
			</ul>
		</div>
	</div>
</div-->
<div class="container-fluid">
	<div class="row sm-row">
		<div class="col-12 mt-5 mb-3 font-22"><label class="mr-3 black-dot"></label>지원결과</div>
		<div class="col-12 card bg-ivory">
			<div class="card-body">
				<ul>					
					<li class="float-left mt-1"><label class="sm-label bg-pink mx-3 font-16">
						<c:set var="now" value="<%=new java.util.Date()%>" />
						<c:set var="thisDayTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH" /></c:set>
						<c:choose>
							<c:when test="${'합격' eq result.result1st}">서류합격 (1차 서류전형에 합격하였습니다.)</c:when>
							<c:when test="${'합격' eq result.result2nd}">>2차 합격</c:when>
							<c:when test="${'합격' eq result.result3rd}">>최종합격</c:when>
							<c:when test="${'불합격' eq result.result1st}">1차 불합격 (1차 서류전형에 안타깝게도 불합격 하셨습니다.)</c:when>
							<c:when test="${'불합격' eq result.result2nd}">>2차 불합격</c:when>
							<c:when test="${'불합격' eq result.result3rd}">>최종 불합격</c:when>
							<c:otherwise>진행중</c:otherwise>
						</c:choose></label></li>
					<%-- <li class="float-left mt-2"><span class="font-18">${result.title}</span></li> --%>
					<li class="float-left mt-1"><a href="javascript:openpop(${result.studentnum});"><label class="sm-label bg-navy mx-3 font-16">수험표출력</label></a></li>
					<li class="float-left mt-2"><span class="font-18">수험번호 : ${result.studentnum}&nbsp;번</span></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<c:if test="${result.result1st eq '합격'}">
<div class="container-fluid">
	<div class="row sm-row">
		<div class="col-12 mt-4 mb-3 font-22"><label class="mr-3 black-dot"></label>1차면접일자선택 <span class="font-14 ml-3 font-gray">한번 선택한 면접일자는 수정이 불가능합니다.</span></div>
		<div class="col-12 card bg-ivory">
			<div class="card-body">
				<ul class="col-12 py-2 line-1-gray-t line-1-gray bg-light-gray">
					<li class="float-left text-center mx-2" style="width:10%;">면접일자</li>
					<li class="float-left text-center mx-2" style="width:10%;">면접일시</li>
					<li class="float-left mx-2" style="width:10%;">면접장소</li>
					<!-- <li class="float-left text-center mx-2" style="width:10%;">지원자 / 인원</li> -->
					<li class="float-left text-center mx-2" style="width:50%;">전달사항</li>
					<li class="float-left text-center mx-2" style="width:10%;">선택</li>
				</ul>
				<c:forEach items="${interview1}" var="interview1">
				<c:url value="/ehr/choice1st.do" var="url">
					<c:param name="idx" value="${result.idx }"/>
					<c:param name="catenum" value="${result.catenum }"/>
					<c:param name="title" value="${result.title }"/>
					<c:param name="hopeintv1" value="${interview1.idx }"/>
					<c:param name="intvday" value="${interview1.itvday }"/>
					<c:param name="intvtime" value="${interview1.itvtime }"/>
					<c:param name="intvloc" value="${interview1.itvlocation }"/>
					<c:param name="limitcount" value="${interview1.limitcount }"/>
				</c:url>
				<ul class="col-12 py-2 line-1-gray" <c:choose><c:when test="${result.hopeintv1 eq interview1.idx}">style="background-color:#EBEBEB;"</c:when><c:otherwise>style="background-color:white;"</c:otherwise></c:choose>>
					<li class="float-left text-center mx-2" style="width:10%;">${interview1.itvday }</li>
					<li class="float-left text-center mx-2" style="width:10%;">${interview1.itvtime }&nbsp;시</li>
					<li class="float-left mx-2" style="width:10%;">${interview1.itvlocation }</li>
					<%-- <li class="float-left text-center mx-2" style="width:10%;">${interview1.intvcount}&nbsp;/&nbsp;${interview1.limitcount }</li> --%>
					<li class="float-left text-center mx-2" style="width:50%;">${interview1.mngmemo }</li>
					<li class="float-left text-center mx-2" style="width:10%;">
						<c:choose>
							<c:when test="${result.hopeintv1 eq interview1.idx}">
								<span class="font-red">선택완료</span>
							</c:when>
							<c:when test="${'' eq result.hopeintv1 || null eq result.hopeintv1}">
								<c:choose>
									<c:when test="${interview1.intvcount < interview1.limitcount}">
										<button class="btn-danger" onclick="selectIntvDay('${url }', '${result.idx}', '${interview1.idx}', '${interview1.itvday }', '${interview1.itvtime }', '${interview1.itvlocation }', '${result.title }');" style="padding: 4px 10px; font-size: 10px; border-radius: 3px;">선택</button>
									</c:when>
									<c:otherwise>마감</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
					</li>
				</ul>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
</c:if>
<c:if test="${result.result2nd eq '합격'}">
<div class="container-fluid">
	<div class="row sm-row">
		<div class="col-12 mt-4 mb-3 font-22"><label class="mr-3 black-dot"></label>2차면접일자선택 <span class="font-14 ml-3 font-gray">한번 선택한 면접일자는 수정이 불가능합니다.</span></div>
		<div class="col-12 card bg-ivory">
			<div class="card-body">
				<ul class="col-12 py-2 line-1-gray-t line-1-gray bg-light-gray">
					<li class="float-left text-center mx-2" style="width:10%;">면접일자</li>
					<li class="float-left text-center mx-2" style="width:10%;">면접일시</li>
					<li class="float-left mx-2" style="width:10%;">면접장소</li>
					<!-- <li class="float-left text-center mx-2" style="width:10%;">지원자 / 인원</li> -->
					<li class="float-left text-center mx-2" style="width:50%;">전달사항</li>
					<li class="float-left text-center mx-2" style="width:10%;">선택</li>
				</ul>
				<c:forEach items="${interview2}" var="interview2">
				<c:url value="/ehr/choice2nd.do" var="url">
					<c:param name="idx" value="${result.idx }"/>
					<c:param name="catenum" value="${result.catenum }"/>
					<c:param name="title" value="${result.title }"/>
					<c:param name="hopeintv2" value="${interview2.idx }"/>
					<c:param name="intvday" value="${interview2.itvday }"/>
					<c:param name="intvtime" value="${interview2.itvtime }"/>
					<c:param name="intvloc" value="${interview2.itvlocation }"/>
					<c:param name="limitcount" value="${interview2.limitcount }"/>
				</c:url>
				<ul class="col-12 py-2 line-1-gray" <c:choose><c:when test="${result.hopeintv2 eq interview2.idx}">style="background-color:#EBEBEB;"</c:when><c:otherwise>style="background-color:white;"</c:otherwise></c:choose>>
					<li class="float-left text-center mx-2" style="width:10%;">${interview2.itvday }</li>
					<li class="float-left text-center mx-2" style="width:10%;">${interview2.itvtime }&nbsp;시</li>
					<li class="float-left mx-2" style="width:10%;">${interview2.itvlocation }</li>
					<%-- <li class="float-left text-center mx-2" style="width:10%;">${interview2.intvcount}&nbsp;/&nbsp;${interview2.limitcount }</li> --%>
					<li class="float-left text-center mx-2" style="width:50%;">${interview2.mngmemo }</li>
					<li class="float-left text-center mx-2" style="width:10%;">
						<c:choose>
							<c:when test="${result.hopeintv2 eq interview2.idx}">
								<span class="font-red">선택완료</span>
							</c:when>
							<c:when test="${'' eq result.hopeintv2 || null eq result.hopeintv2}">
								<c:choose>
									<c:when test="${interview2.intvcount < interview2.limitcount}">
										<button class="btn-danger" onclick="selectIntvDay('${url }', '${result.idx}', '${interview2.idx}', '${interview2.itvday }', '${interview2.itvtime }', '${interview2.itvlocation }', '${result.title }');" style="padding: 4px 10px; font-size: 10px; border-radius: 3px;">선택</button>
									</c:when>
									<c:otherwise>마감</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
					</li>
				</ul>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
</c:if>

<form role="form" name="propose" id="propose" method="post" enctype="multipart/form-data" action="/ehr/update.do" onsubmit="return onFormSbmt()">

<input type="hidden" name="idx" value="${result.idx }"/>
<input type="hidden" name="catenum" value="${result.catenum }"/>
<input type="hidden" name="photo" value="${result.photo }"/>
<input type="hidden" name="resume" value="${result.resume }"/>
<input type="hidden" name="resumename" value="${result.resumename }"/>
<input type="hidden" name="weight" value=""/>

<div class="container-fluid">
	<div class="row sm-row">
		<!-- 개인프로필입력 시작 -->
		<div class="col-12 mt-4 mb-3 font-22"><label class="mr-3 black-dot"></label>개인프로필 <span class="font-14 ml-3 font-gray">지원한 이력서는 마감후에는 수정이 불가합니다. 지원서 마감전에만 프로필수정이 가능합니다.</span></div>
		<div class="col-6 my-2" id="mobile-100-percent">
			<div class="card">
				<div class="card-body">
					<div class="form-group">
						<label for="editphoto" class="font-bold">사진첨부 (JPG 또는 PNG 파일만 가능합니다.)</label>
						<div class="text-center mx-5">
               				<img src="${result.photo }" class="wrapper-tn" id="wrapper-tn" width="67%">
               			</div>
               			<div class="my-3 text-center">
               				<input type="file" name="editphoto" id="editphoto" style="display:none;">
               				<button type="button" class="btn mx-2 btn-primary" id="upload-tn">업로드</button>
               				<button type="button" class="btn mx-2 btn-danger" id="init-tn" onclick="deleteImageAction()">지우기</button>
               			</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-6 col-padding my-2" id="mobile-100-percent">
			<div class="card col-md-12 bg-ke">
				<div class="card-body">
					<div class="form-group">
						<label for="korname" class="form-label font-bold">국문이름</label>
						<div class="input-group">
							<input type="text" class="form-control" name="korname" id="korname" value="${result.korname }" placeholder="국문이름" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">영문이름(대문자로입력)</label>
						<div class="input-group">
							<input type="text" class="form-control" name="engname" id="engname" value="${result.engname }" placeholder="예 : KIM, YEO WON" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="phoneagency" class="font-bold">휴대폰번호</label>
						<div class="input-group">
							<select class="form-control mr-2" name="phoneagency" id="phoneagency" style="height:3.75rem;">
								<option value="010" selected>010</option>
							</select>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="phonefirst" id="phonefirst" value="${result.phonefirst }" maxlength="4" placeholder="" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="phonesecond" id="phonesecond" value="${result.phonesecond }" maxlength="4" placeholder="" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">이메일</label>
						<div class="input-group">
							<input type="email" class="form-control" name="email" id="email" value="${result.email }" placeholder="이메일을 잘못기입시 합격여부를 이메일로 받을 수 없습니다" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- 개인프로필입력 끝 -->
		<c:choose>
		<c:when test="${result.resumeyn eq 'Y'}">
		<!-- <input type="file" class="form-control input-group-append" name="editresume" id="editresume" style="display:none;"> -->
		<div class="col-12 my-2">
			<div class="col-12 my-2 font-bold font-20">지원서파일등록</div>
			<div class="card my-2 col-12 bg-ke">
				<div class="card-body">
					<div class="form-group">
						<label for="input-gender">이력서첨부</label>
						<!-- <label class="mx-2 font-red">(유니스카이 지정 서식 업로드)</label> -->
						<label class="font-red"><a href="/data/download.do?filepath=${result.resume}&filename=${result.resumename}">${result.resumename }</a></label>
						<div class="input-group">
							<input type="file" class="form-control input-group-append" name="editresume" id="editresume" onchange="return filechk(this);">
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
				</div>
			</div>
		</div>
		</c:when>
		<c:otherwise>
			<input type="file" name="editresume" id="editresume" value="" style="display:none;">
		</c:otherwise>
		</c:choose>
		<!-- 상세정보입력 시작 -->
		<div class="col-12 my-2">
			<div class="col-12 my-2 font-bold font-20">상세정보</div>
			<div class="card my-2 col-12 bg-ke">
				<div class="card-body">
					<div class="form-group">
						<label for="input-gender">생년월일</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthyear" id="birthyear" value="${result.birthyear }" maxlength="4" placeholder="년도" required>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthmonth" id="birthmonth" value="${result.birthmonth }" maxlength="2" placeholder="월" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="birthday" id="birthday" value="${result.birthday }" maxlength="2" placeholder="일" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">키 / 나이</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="height" id="height" value="${result.height }" maxlength="3" placeholder="cm" required>
							<!-- input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="weight" id="weight" value="${result.weight }" maxlength="2" placeholder="kg" required -->
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="age" id="age" value="${result.age }" maxlength="2" placeholder="나이" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="gender">성별 / 국적</label>
						<div class="input-group">
							<select class="form-control mr-2" id="gender" name="gender" style="height:3.75rem;" required>
								<option value="여" <c:if test="${result.gender eq '여' }">selected</c:if>>여</option>
								<option value="남" <c:if test="${result.gender eq '남' }">selected</c:if>>남</option>
							</select>
							<input type="text" class="form-control input-group-append" name="nation" id="nation" value="${result.nation }" maxlength="30" placeholder="예 : 대한민국" required>
						</div>
					</div>
					<div class="form-group">
						<label for="edulv">지역</label>
						<div class="input-group">
						<input type="text" class="form-control" name="address" id="address" value="${result.address }" style="height:3.75rem;" placeholder="예 : 서울, 경기, 충남" required>
						</div>
					</div> 
					<div class="form-group">
						<label for="edulv">최종학력</label>
						<div class="input-group">
						<input type="text" class="form-control mr-2" name="edulv" id="edulv" value="${result.edulv }" style="height:3.75rem;" placeholder="학교명" required>
						<select class="form-control input-group-append mr-2" name="edugb" id="edugb" style="height:3.75rem;" required>
							<option value="고등학교" <c:if test="${result.edugb eq '고등학교' }">selected</c:if>>고등학교</option>
							<option value="2년제" <c:if test="${result.edugb eq '2년제' }">selected</c:if>>2년제</option>
							<option value="3년제" <c:if test="${result.edugb eq '3년제' }">selected</c:if>>3년제</option>
							<option value="4년제" <c:if test="${result.edugb eq '4년제' }">selected</c:if>>4년제</option>
							<option value="대학원" <c:if test="${result.edugb eq '대학원' }">selected</c:if>>대학원</option>
						</select>
						<select class="form-control input-group-append" name="gradlv" id="gradlv" style="height:3.75rem;" required>
							<option value="졸업" <c:if test="${result.gradlv eq '졸업' }">selected</c:if>>졸업</option>
							<option value="졸업예정" <c:if test="${result.gradlv eq '졸업예정' }">selected</c:if>>졸업예정</option>
							<option value="휴학중" <c:if test="${result.gradlv eq '휴학중' }">selected</c:if>>휴학중</option>
							<option value="중퇴" <c:if test="${result.gradlv eq '중퇴' }">selected</c:if>>중퇴</option>
						</select>
						</div>
					</div>
					<div class="form-group">
						<label for="langlv">어학점수(영어)</label>                      
						<div class="input-group">
							<input type="text" class="form-control " name="langlv1" id="langlv1" value="${result.langlv1 }" maxlength="50"  placeholder="예 : TOEIC 850, TOEIC SPEAKING Level 6" required>  
						</div>
					</div>
					<div class="form-group">
						<label for="langlv">어학점수(기타외국어)</label>                      
						<div class="input-group">
							<input type="text" class="form-control " name="langlv2" id="langlv2" value="${result.langlv2 }" maxlength="50"  placeholder="예 : CHINESE HSK Level 6, JAPANESE JLPT Level 1" required>  
						</div>
					</div>
					<div class="form-group">
						<label for="introduce">서비스경력</label>                      
						<div class="input-group">
							<input type="text" class="form-control input-group-append col-md-2 mr-2" value="${result.referyear }" name="referyear" id="referyear" placeholder="기간" maxlength="20">
							<input type="text" class="form-control" name="reference" id="reference" value="${result.reference }" maxlength="50"  placeholder="포지션(영문)" required>							
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div> 
				</div>
			</div>
		</div>
		<!-- 상세정보입력 끝 -->
		<c:if test="${thisDayTime < result.enddaytime}">
		<div class="col-12 mb-5 my-1 pb-5">
			<div class="col-10 pr-2">
				<button type="submit" id="gopropose" class="btn btn-primary btn-lg btn-block" style="height:4.00rem;">수정하기</button>
				<p class="mt-1 ml-2 font-red">제출후 채용공고 마감전에만 수정이 가능합니다.</p>
			</div>
			<div class="col-2">
				<button type="button" id="goback" class="btn btn-danger btn-lg btn-block" style="height:4.00rem;">취소</button>
			</div>
		</div>
		</c:if>
		<div class="col-12 py-4"></div>
	</div>
</div>
</form>

<script>

	function selectIntvDay(url, idx, hopeintv1, intvday, intvtime, intvloc, title) {
		var msg = "면접일자는 " + intvday + "일 " + intvtime + "시이며\n면접장소는 " + intvloc + "입니다.\n\n선택하시겠습니까?";
		if(confirm(msg) == true){
			location.href = url;
		}else{
			return;
		}		
	}
	
	$("#upload-tn").click(function (e) {
			e.preventDefault();
			$("#editphoto").click();
		});	
	
	$(document).ready(function(){
		$("#editphoto").on("change", handleImageFileSelect);
	});
	
	function handleImageFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#wrapper-tn").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction() {
		$("#wrapper-tn").attr("src", "/admin/images/photo-sample.jpg");
		$("#editphoto").val("");
	}
	
	function onFormSbmt() {
	
		if($('input[name=editphoto]').val() == "" && $('#photo').val() == "" ) {
			alert("프로필사진을 첨부하세요");
			return false;
		} else {
			return true;
		}
	}
	
	function openpop(num) {
		var url = "/ehr/print.do?studentnum="+num;
        var name = "print";
        var option = "width=1024, height=768, top=100, left=200, location=no, scrollbars=no"
        window.open(url, name, option);
	}
	
	function filechk(obj){
		var fileSize = obj.files[0].size;
		var maxSize = 3 * 1024 * 1024; //100mb
		var ext = $(obj).val().split(".").pop().toLowerCase();       
		
		//파일명에 특수문자 검사 (정규 표현식 사용)
		var fileName = $(obj).val().split("\\").pop(); // 파일 경로에서 파일명 추출
		var specialChars = /[*|\":<>[\]{}`\\()';@&$]/; // 특수문자를 나타내는 정규 표현식

		//파일용량 체크
		if(fileSize > maxSize){ 
			alert("파일 크기가 너무 큽니다. 최대 크기는 3MB입니다.");
			$(obj).val('');
			return false;
		}

		//파일명에 특수문자 체크
		if (specialChars.test(fileName)) {
			alert("파일명에 특수문자가 포함되어 있습니다. 특수문자를 제거해주세요.");
			$(obj).val(''); // 파일 선택 필드 초기화
			return false;
		}
	}

</script>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</body>