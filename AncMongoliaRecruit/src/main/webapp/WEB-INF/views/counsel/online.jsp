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
<title>Зөвлөгөө авах хүсэлт гаргах</title>
<%@ include file = "../include/header.jsp" %>
</head>

<header><%@ include file="../include/nav.jsp"%></header>
<body>

<div class="container-fluid">
	<div class="row sm-row site-map-row my-5">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">Зөвлөгөө авах хүсэлт гаргах</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
			<!-- <div class="pt-4 font-22" style="line-height:3rem;">크루팩토리의  높은합격률은<br>지금까지 <span class="font-blue font-bold">소수정원</span> 인원제한을 원칙으로 <span class="font-blue font-bold">그룹과외수업</span>을 고집한 결과 입니다.</div> -->
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm-row">
		<div class="col-12">
			<form role="form" name="counsel" method="post" action="/counsel/request.do" data-toggle="validator">
			<input type="hidden" name="result" id="result" value="${ param.result }">
			<input type="hidden" name="phone" id="phone" value="">
			<input type="hidden" name="office" value="gangnam">
			<input type="hidden" name="stat" value="신규">
			<input type="hidden" name="path" value="counsel/online.do">
			<input type="hidden" name="domain" value="<%= request.getServerName() %>">
			<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
			<input type="hidden" name="reurl" value="counsel/online.do"/>
			<!-- <div class="col-12 text-center font-24">Зөвлөгөө өгөх мэдээллийг оруулна уу</div>
			<div class="col-12 my-3 line-2-black"></div> -->
			<div class="col-12 ">
				<div class="col-12 mb-2 mobile-100-percent">
					<div class="my-2 font-bold font-20">Хувийн мэдээллийг оруулна уу</div>
						<div class="card col-12 bg-light-gray">
						<div class="card-body">
							<div class="form-group">
		                      <label for="name" class="font-bold">Нэр / Нас</label>
		                      <div class="input-group">
		                      <input type="text" class="form-control" name="name" id="name" onkeyup="onlyKorean('name')" maxlength="10" placeholder="Нэр" data-error="이름을 정확히 입력하세요" required>
		                      <input type="number" class="form-control input-group-append ml-2" name="age" id="age" oninput="maxLengthCheck(this)" placeholder="Нас" maxlength="2" data-error="나이를 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
					        <div class="form-group">
		                      <label for="input-gender" class="font-bold">Утасны дугаар</label>
		                      <div class="input-group">
		                        <input type="number" class="form-control input-group-append mr-2" name="mobile-1" id="mobile-1" oninput="maxLengthCheck(this)" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                    <input type="number" class="form-control input-group-append mr-2" name="mobile-2" id="mobile-2" oninput="maxLengthCheck(this)" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                    <input type="number" class="form-control input-group-append" name="mobile-3" id="mobile-3" oninput="maxLengthCheck(this)" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                  </div>
			                  <div class="help-block with-errors text-danger"></div>
			                </div>
			                <div class="form-group">
		                      <label for="name" class="font-bold">Email</label>
		                      <div class="input-group">
		                      <input type="email" class="form-control" name="email" id="email" maxlength="20" placeholder="Email" data-error="이메일을 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
			                <div class="">
		                    	<div class="custom-control custom-checkbox">
			                    	<input type="checkbox" name="agree" value="yes" id="agree" class="custom-control-input" checked>
			                        <label for="agree" class="custom-control-label">Би нууцлалын бодлогыг зөвшөөрч байна.</label>
			                	</div>
		                    </div>
						</div>
					</div>
				</div>				
				<div class="col-12 mt-2 mb-2">
					<div class="my-2 font-bold font-20">Миний сонирхож байгаа зүйл</div>
					<div class="form-group">
                      <textarea class="form-control" name="memo" id="memo" placeholder="Миний сонирхож байгаа зүйл" rows="4"></textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
				</div>
				<div class="col-12 mb-5 my-1 pb-5">
					<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:4.75rem; margin:0 auto;">Зөвлөгөө авах хүсэлт гаргах</button>
				</div>
			</div>
			</form>
		</div>
		<!--div class="col-md-3">
			<div class="col-md-12">
				<div class="my-9"></div>
				<div class=""><a href="" class="hvr-shadow"><img src="../img/sub-left-tel-btn.png"></a></div>
				<div class="my-2"></div>
				<div class="left-ban">
					<ul>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-faq-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-nation-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-map-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-check-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
					</ul>
				</div>
			</div>
		</div-->
	</div> 
</div>

<div class="containter-fluid mobile-hidden" style="margin-top:100px;"></div>

<script>

$(document).ready(function() {
 	$("#counsel").validator();	//폼발리데이터
});

$(document).ready(function() {
 	var cost = "${param.cost}";
 	var imgchk = "${param.imgchk}";
	if(imgchk == 'y'){
		chkImgVal();
	}else if(cost == 'y'){
		costVal();
	}else{
		chkDefaultVal();
	}
});

$(document).ready(function() {
 	var data = $("#result").val();
 	if(data == "ok"){
 		alert("상담신청이 완료되었습니다.");
 		location.href="/";
 	}
});

$(document).on('click', '#default', function(e){
	e.preventDefault();
	$("#CostRow").hide();
	$("#ImgchkRow").hide();
	$("#cost").removeClass("btn-danger");
	$("#imgchk").removeClass("btn-danger");
	$("#cost").addClass("btn-secondary");
	$("#imgchk").addClass("btn-secondary");
	$("input:checkbox[id=chkImgchk]").prop("checked", false);
	$("input:checkbox[id=chkCost]").prop("checked", false);
	$("input:checkbox[id=chkQuick]").prop("checked", true);
});

$(document).on('click', '#cost', function(e){
	costVal();
});

$(document).on('click', '#imgchk', function(e){
	chkImgVal();
});

function chkDefaultVal(){	
	$("input:checkbox[id=chkQuick]").is(":checked") == true;
}

function chkImgVal(){	
	if($("input:checkbox[id=chkImgchk]").is(":checked") == true){
		$("#ImgchkRow").hide();
		$("#imgchk").removeClass("btn-danger");
		$("#imgchk").addClass("btn-secondary");
		$("input:checkbox[id=chkImgchk]").prop("checked", false);
	}else{
		$("#ImgchkRow").show();
		$("#imgchk").removeClass("btn-secondary");
		$("#imgchk").addClass("btn-danger");
		$("input:checkbox[id=chkImgchk]").prop("checked", true);
	}
}

function costVal(){	
	if($("input:checkbox[id=chkCost]").is(":checked") == true){
		$("#CostRow").hide();
		$("#cost").removeClass("btn-danger");
		$("#cost").addClass("btn-secondary");
		$("input:checkbox[id=chkCost]").prop("checked", false);
	}else{
		$("#CostRow").show();
		$("#cost").removeClass("btn-secondary");
		$("#cost").addClass("btn-danger");
		$("input:checkbox[id=chkCost]").prop("checked", true);
	}
}

$(document).on('click', '#gogo', function(){
	var mobile = $("#mobile-1").val() + $("#mobile-2").val() + $("#mobile-3").val();
	
	if($('input[name=name]').val().length < 2){
		alert("Нэр нь дор хаяж хоёр үсэгтэй байх ёстой.");
		return false;
	}
	
	if($('input[name=age]').val().length <= 1){
		alert("Нас хоёр ба түүнээс дээш оронтой байх ёстой.");
		return false;
	}
	
	if($('input[name=mobile-2]').val().length < 3){
		alert("Таны гар утасны эхний орон дор хаяж гурван тэмдэгт байх ёстой.");
		return false;
	}
	
	if($('input[name=mobile-3]').val().length <= 3){
		alert("Таны утасны ард дөрвөн тэмдэгт байх ёстой.");
		return false;
	}
	
	$("#phone").val(mobile);
	$("#counsel").submit();
});

</script>


<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>