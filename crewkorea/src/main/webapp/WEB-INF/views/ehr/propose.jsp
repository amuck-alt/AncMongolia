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
<%--@ include file="../include/floating-left.jsp"--%>
<form role="form" name="propose" id="propose" method="post" enctype="multipart/form-data" action="/ehr/submit.do" onsubmit="return onFormSbmt()">
<input type="hidden" name="catenum" value="${param.catenum }"/>
<input type="hidden" name="weight" value=""/>
<div class="container-fluid">
	<div class="row sm-row site-map-row my-4">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">온라인채용지원</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row sm-row">
		<div class="col-12 card bg-ivory">
			<div class="card-body">
				<ul>
					<li class="float-left mt-1 font-18">채용제목<span class="font-18 mx-3">:</span>${param.title}</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm-row">
		<!-- div class="col-12 my-2 font-bold font-20">채용공고선택</div>
		<div class="input-group my-3">
			<c:choose>
				<c:when test="${param.catenum ne '' }">
					<select class="form-control mr-2" name="catenum" id="catenum" style="height:3.75rem;" <c:if test="${param.catenum ne ''}">disabled</c:if> required>
						<c:forEach items="${result}" var="recruit">
		          			<option value="${recruit.idx}" <c:if test="${param.catenum eq recruit.idx }">selected</c:if>>${recruit.title }</option>
		          		</c:forEach>
					</select>
				</c:when>
				<c:otherwise>
					<select class="form-control mr-2" name="catenum" id="catenum" style="height:3.75rem;" required>
						<c:forEach items="${result}" var="recruit">
		          			<option value="">채용공고를 선택하세요</option>
		          			<option value="${recruit.idx}">${recruit.title }</option>
		          		</c:forEach>
					</select>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="help-block with-errors text-danger"></div-->
		<!-- 개인프로필입력 시작 -->
		<div class="col-12 mt-4 mb-2 font-bold font-20">개인프로필</div>
		<div class="col-6 my-2" id="mobile-100-percent">
			<div class="card">
				<div class="card-body">
					<div class="form-group">
						<label for="photo" class="font-bold">사진첨부 (JPG 또는 PNG 파일만 가능합니다.)</label>
						<div class="text-center mx-5">
               				<img src="/admin/images/photo-sample.jpg" class="wrapper-tn" id="wrapper-tn" width="67%">
               			</div>
               			<div class="my-3 text-center">
               				<input type="file" name="photo" id="photo" style="display:none;">
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
							<input type="text" class="form-control" name="korname" id="korname" placeholder="국문이름" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">영문이름(대문자로입력)</label>
						<div class="input-group">
							<input type="text" class="form-control" name="engname" id="engname" placeholder="예 : KIM, YEO WON" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="phoneagency" class="font-bold">휴대폰번호</label>
						<div class="input-group">
							<select class="form-control mr-2" name="phoneagency" id="phoneagency" style="height:3.75rem;">
								<option value="010">010</option>
							</select>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="phonefirst" id="phonefirst" maxlength="4" placeholder="" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="phonesecond" id="phonesecond" maxlength="4" placeholder="" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">이메일</label>
						<div class="input-group">
							<input type="email" class="form-control" name="email" id="email" placeholder="이메일을 잘못기입시 합격여부를 이메일로 받을 수 없습니다" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
				</div>
			</div>
		</div>
		<c:choose>
		<c:when test="${param.resumeyn eq 'Y'}">
		<!-- 개인프로필입력 끝 -->
		<div class="col-12 my-2">
			<div class="col-12 my-2 font-bold font-20">지원서파일등록</div>
			<div class="card my-2 col-12 bg-ke">
				<div class="card-body">
					<div class="form-group">
						<label for="input-gender">첨부파일</label>
						<div class="input-group">
							<input type="file" class="form-control input-group-append" name="resume" id="resume" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
				</div>
			</div>
		</div>
		</c:when>
		<c:otherwise>
			<input type="file" name="resume" id="resume" value="" style="display:none;">
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
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthyear" id="birthyear" maxlength="4" placeholder="년도" required>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthmonth" id="birthmonth" maxlength="2" placeholder="월" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="birthday" id="birthday" maxlength="2" placeholder="일" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">키 / 나이(만)</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="height" id="height" maxlength="3" placeholder="cm" required>
							<!-- input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="weight" id="weight" maxlength="2" placeholder="kg" required -->
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="age" id="age" maxlength="2" placeholder="나이(만)" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="gender">성별 / 국적</label>
						<div class="input-group">
							<select class="form-control mr-2" id="gender" name="gender" style="height:3.75rem;" required>
								<option value="여">여</option>
								<option value="남">남</option>
							</select>
							<input type="text" class="form-control input-group-append" name="nation" id="nation" maxlength="30" placeholder="예 : 대한민국" required>
						</div>
					</div>
					<div class="form-group">
						<label for="edulv">지역</label>
						<div class="input-group">
						<input type="text" class="form-control" name="address" id="address" style="height:3.75rem;" placeholder="예 : 서울, 경기, 충남" required>
						</div>
					</div> 
					<div class="form-group">
						<label for="edulv">최종학력</label>
						<div class="input-group">
						<input type="text" class="form-control mr-2" name="edulv" id="edulv" style="height:3.75rem;" placeholder="학교명" required>
						<select class="form-control input-group-append mr-2" name="edugb" id="edugb" style="height:3.75rem;" required>
							<option value="고등학교">고등학교</option>
							<option value="2년제">2년제</option>
							<option value="3년제">3년제</option>
							<option value="4년제" selected>4년제</option>
							<option value="대학원">대학원</option>
						</select>
						<select class="form-control input-group-append" name="gradlv" id="gradlv" style="height:3.75rem;" required>
							<option value="졸업" selected>졸업</option>
							<option value="졸업예정" >졸업예정</option>
							<option value="휴학중" >휴학중</option>
							<option value="중퇴" >중퇴</option>
						</select>
						</div>
					</div>
					<div class="form-group">
						<label for="langlv">어학점수(영어)</label>                      
						<div class="input-group">
							<input type="text" class="form-control " name="langlv1" id="langlv1" maxlength="50"  placeholder="예 : TOEIC 850, TOEIC SPEAKING Level 6" required>  
						</div>
					</div>
					<div class="form-group">
						<label for="langlv">어학점수(기타외국어)</label>                      
						<div class="input-group">
							<input type="text" class="form-control " name="langlv2" id="langlv2" maxlength="50"  placeholder="예 : CHINESE HSK Level 6, JAPANESE JLPT Level 1" required>  
						</div>
					</div>
					<div class="form-group">
						<label for="introduce">서비스경력</label>                      
						<div class="input-group">
							<input type="text" class="form-control input-group-append col-md-4 mr-2" name="referyear" id="referyear" placeholder="기간" maxlength="20">
							<input type="text" class="form-control" name="reference" id="reference" maxlength="50"  placeholder="포지션(영문)">							
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div> 
					<!-- div class="form-group">
						<label for="introduce">자기소개</label>                      
						<div class="input-group">
							<textarea class="form-control" name="introduce" id="introduce" placeholder="100자이내로 작성하세요." rows="8" required></textarea>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div-->  
				</div>
			</div>
		</div>
		<!-- 상세정보입력 끝 -->
		<div class="col-12 mb-5 my-1 pb-5">
			<div class="form-group">
                <div class="custom-control custom-checkbox">
		    		<input type="checkbox" name="bt_agree" value="1" id="bt_agree" class="custom-control-input" checked>
		     		<label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
            	</div>
            </div>
			<div class="col-10 pr-2">
				<button type="submit" id="gopropose" class="btn btn-primary btn-lg btn-block" style="height:4.00rem;">제출하기</button>
				<p class="mt-1 ml-2 font-red">제출후 채용공고 마감전에만 수정이 가능합니다.</p>
			</div>
			<div class="col-2">
				<button type="button" id="goback" class="btn btn-danger btn-lg btn-block" style="height:4.00rem;">취소</button>
			</div>
		</div>
		<div class="col-12 py-4"></div>
	</div>
</div>
</form>

<div class="modal fade bd-example-modal-lg" id="personalInfo" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header bg-ivory">
				<p class="modal-title font-24 font-bold">
					<img src="/img/logo.png">
				</p>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="col-12 px-3" style="overflow: auto; width: 100%; height: 500px;">
					<p class="my-3">㈜ 에어라인네트워크센터 ANC승무원평생교육원(이하 ‘학원’이라 함) 개인정보처리방침은 다음과 같은 내용을 담고 있습니다.</p>
					<br> 1. 개인정보의 처리 목적<br>
					<p class="mx-2">
						- 학원은 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.<br> - 고객 가입의사 확인, 고객에 대한 서비스 제공에 따른 본인 식별.인증, 회원자격 유지,관리 물품 또는 서비스 공급에 따른 금액 결제, 물품 또는 서비스의 공급.배송 등
					</p>
					<br> 2. 개인정보의 처리 및 보유 기간<br>
					<p class="mx-2">
						- 학원은 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보 보유/이용기간 또는 법령에 따른 개인정보<br> - 보유/이용기간 내에서 개인정보를 처리.보유하며 구체적인 개인정보 처리 및 보유 기간은 다음과 같습니다.<br> 아래 예시를 참고하여 개인정보 처리업무와 개인정보 처리업무에 대한 보유기간 및 관련 법령, 근거 등을 기재합니다.<br> (예시)<br> - 고객 가입 및 관리 : 서비스 이용계약 또는 회원가입 해지시까지, 다만 채권.채무관계 잔존시 해당 채권.채무관계 정산까지<br>
						- 전자상거래에서의 계약.청약철회, 대금결제, 재화 등 공급기록 : 5년<br>
					</p>
					<br> 3. 개인정보 주체자의 권리와 의무<br>
					<p class="mx-2">
						정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.<br> 정보주체는 학원에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br> - 개인정보 열람요구<br> - 오류 등이 있을 경우 정정 요구<br> - 삭제요구<br> - 처리정지 요구<br>
					</p>
					<br> 4. 처리하는 개인정보의 항목 작성<br>
					<p class="mx-2">
						학원은 정보주체의 온라인상담 관련(상담신청, 이미지체크, 시간표조회, 1:1이력서무료상담, 지원가능한 항공사조회, 위탁교육문의)을 위해 개인정보를 아래와 같이 수집하고 있습니다.<br> - 성명, 전화번호, 나이, 성별, 키, 몸무게, 최종학력, 외국어능력<br>
					</p>
					<br> 5. 개인정보의 파기절차 및 기한<br>
					<p class="mx-2">
						개인정보의 파기('학원')은 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.<br> - 파기절차<br> 이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.<br> - 파기기한<br> 이용자의
						개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.<br>
					</p>
					<br> 6. 개인정보 자동 수집 장치의 설치.운영 및 거부에 관한 사항<br>
					<p class="mx-2">
						학원은 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br> 가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다. <br> 나. 쿠키의
						설치.운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다<br> 다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.<br>
					</p>
					<br> 7. 개인정보 보호책임자 작성<br>
					<p class="mx-2">
						학원은 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br> 개인정보 보호책임자<br> ·성명 : 최성희<br> ·직책 : 원장<br> ·직급 : 원장<br> ·연락처 : 02-547-7794, chois31@hanmail.net<br> <br> 개인정보 보호 담당부서<br> ·부서명 :온라인사업부<br>
						·담당자 : 최성희<br> ·연락처 : 02-547-7794, chois31@hanmail.net<br>·직업소개소등록번호 : F1200020220004<br> 정보주체께서는 학원의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 학원은 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.<br>
					</p>
					<br> 8. 개인정보 처리방침 변경<br>
					<p class="mx-2">
						이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.<br>
					</p>
					<br> 9. 개인정보의 안전성 확보 조치 ('㈜ 에어라인네트워크센터 ANC승무원평생교육원')은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.<br>
					<p class="mx-2">
						1. 개인정보 취급 직원의 최소화 및 교육<br> 개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br> 2. 개인정보에 대한 접근 제한<br> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br> 3. 비인가자에 대한 출입 통제<br> 개인정보를
						보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.<br>
					</p>
					<br>
					<p class="mx-2">
						원칙적으로 ㈜ 에어라인네트워크센터 ANC승무원평생교육원 이용자의 개인정보를 타인 또는 타기업, 기관에 공개하지 않습니다.<br> 다만 아래의 경우에는 예외로 합니다.<br> ㈜ 에어라인네트워크센터 ANC승무원평생교육원을 통해 교육 도중 작성된 저작물에 대한 저작권 및 초상권 또는 컨텐츠(사진,동영상)는 합리적인 차원에서 ㈜백아에 귀속하여 활용할 수 있다.<br> 본인은 본인의 개인정보(이름, 생년월일, 전화번호, 이메일 등)를 크루팩토리에 제공하여 취업관련 서비스의 마케팅 활동(전화 통화 방식, 이메일 발송 방식, SMS방식 포함) 목적으로 제공, 활용되도록 함에 동의
						합니다.<br>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

<script>

	$("#upload-tn").click(function (e) {
			e.preventDefault();
			$("#photo").click();
		});	
	
	$(document).ready(function(){
		$("#photo").on("change", handleImageFileSelect);
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
		$("#wrapper-tn").attr("src", "/images/photo-sample.jpg");
		$("#photo").val("");
	}
	
	function onFormSbmt() {
	
		if($('input[name=photo]').val() == "") {
			alert("프로필사진을 첨부하세요");
			return false;
		} else {
			return true;
		}
	}

</script>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</body>