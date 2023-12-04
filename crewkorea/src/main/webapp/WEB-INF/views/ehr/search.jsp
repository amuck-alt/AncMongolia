<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="항공사지상직채용정보"/>
<meta name="author" content="크루팩토리">
<meta name="keywords" content="항공사지상직채용정보"/>
<title>지원현황조회</title>
<%@ include file = "../include/header.jsp" %>
</head>
<body>

<header><%@ include file = "../include/nav.jsp" %></header>


<div class="container-fluid">
	<div class="row sm-row site-map-row my-5">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">지원현황조회</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
		<div class="col-12 py-4 text-center"><p class="font-20 font-gray">지원현황을 확인 할 수 있으며, 지원서의 수정이 필요한 경우 마감전 지원취소후 다시 제출하시면 됩니다..</p></div>
	</div>
</div>
<form role="form" name="search" id="search" method="post" action="/ehr/result.do">
<div class="container-fluid">
	<div class="row sm2-row my-5">
		<div class="col-12">
			<div class="card bg-light-gray">
				<div class="card-body">
					<label for="input-gender">지원한 채용공고</label>
					<div class="form-group">
						<select class="form-control" name="srhcatenum" id="srhcatenum" style="height:3.75rem;" required>
							<option value="">지원하신 채용공고를 선택하세요.</option>
							<c:forEach items="${recruit}" var="recruit">
	                  			<option value="${recruit.idx}">${recruit.title }</option>
	                  		</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="input-gender">지원자이름</label>
						<div class="input-group">
							<input type="text" class="form-control input-group-append" name="srhkorname" id="srhkorname" maxlength="20" placeholder="이름" data-error="이름을 입력하세요." required>
						</div>
						<div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">이메일</label>
						<div class="input-group">
							<input type="email" class="form-control" name="srhemail" id="srhemail" placeholder="이메일" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">생년월일</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="srhbirthyear" id="srhbirthyear" maxlength="4" placeholder="년도" required>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="srhbirthmonth" id="srhbirthmonth" maxlength="2" placeholder="월" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="srhbirthday" id="srhbirthday" maxlength="2" placeholder="일" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">휴대전화번호</label>
						<div class="input-group">
							<select class="form-control mr-2" name="srhphoneagency" id="srhphoneagency" style="height:3.75rem;">
								<option class="ml-2" value="010">010</option>
							</select>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="srhphonefirst" id="srhphonefirst" maxlength="4" placeholder="휴대폰 앞자리" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="srhphonesecond" id="srhphonesecond" maxlength="4" placeholder="휴대폰 뒷자리" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<!-- button type="button" onclick="checkImsi()" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">확인</button-->
					<button type="submit" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">확인</button>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
<div class="container-fluid" style="height:400px;"></div>


<footer><%@ include file = "../include/footer.jsp" %></footer>


<script>

	function checkImsi() {
		alert("합격자발표 진행중입니다. 잠시후 다시 시도하여 주시기 바랍니다.");
		return;
	}

$(document).ready(function() {
       

});

</script>

</body>
</html>