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
			<div class="font-26 mb-1" id="mobile-100-percent">Програмын статусыг шалгана уу</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
		<div class="col-12 py-4 text-center"><p class="font-20 font-gray">Та өргөдлийн статусыг шалгах боломжтой бөгөөд хэрэв та өргөдлөө өөрчлөх шаардлагатай бол эцсийн хугацаанаас өмнө өргөдлөө цуцалж, дахин илгээх боломжтой.</p></div>
	</div>
</div>
<form role="form" name="search" id="search" method="post" action="/ehr/result.do">
<div class="container-fluid">
	<div class="row sm2-row my-5">
		<div class="col-12">
			<div class="card bg-light-gray">
				<div class="card-body">
					<label for="input-gender">Таны өргөдөл гаргасан ажлын зар</label>
					<div class="form-group">
						<select class="form-control" name="srhcatenum" id="srhcatenum" style="height:3.75rem;" required>
							<option value="">Өргөдөл гаргасан ажлаа сонго.</option>
							<c:forEach items="${recruit}" var="recruit">
	                  			<option value="${recruit.idx}">${recruit.title }</option>
	                  		</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="input-gender">Өргөдөл гаргагчийн нэр</label>
						<div class="input-group">
							<input type="text" class="form-control input-group-append" name="srhkorname" id="srhkorname" maxlength="20" placeholder="Өргөдөл гаргагчийн нэр" data-error="Өргөдөл гаргагчийн нэр." required>
						</div>
						<div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">Email</label>
						<div class="input-group">
							<input type="email" class="form-control" name="srhemail" id="srhemail" placeholder="Email" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<!-- <div class="form-group">
						<label for="input-gender">Төрсөн жил</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="srhbirthyear" id="srhbirthyear" maxlength="4" placeholder="Төрсөн он" required>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="srhbirthmonth" id="srhbirthmonth" maxlength="2" placeholder="Төрсөн сар" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="srhbirthday" id="srhbirthday" maxlength="2" placeholder="Төрсөн өдөр" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div> -->
					<div class="form-group">
						<label for="input-gender">Утасны дугаар</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="srhphoneagency" id="srhphoneagency" maxlength="4" placeholder="000" required>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="srhphonefirst" id="srhphonefirst" maxlength="4" placeholder="0000" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="srhphonesecond" id="srhphonesecond" maxlength="4" placeholder="0000" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<!-- button type="button" onclick="checkImsi()" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">확인</button-->
					<button type="submit" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">Шалгах</button>
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
		alert("Амжилттай өргөдөл гаргагчдыг зарлах ажил үргэлжилж байна.\nДараа дахин оролдож үзнэ үү.");
		return;
	}

$(document).ready(function() {
       

});

</script>

</body>
</html>