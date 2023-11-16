<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="mn">
<head>
<title>Anc Mongolia - Зөвлөгөө авах хүсэлт гаргах</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="항공사지상직, 여행사취업">
<meta name="author" content="Anc Mongolia">
<meta name="keywords" content="대한항공채용, 스튜어디스, 승무원, 승무원학원, 대한항공승무원, 승무원되는법, 승무원과외, 승무원학원수강료, 승무원연봉, 스튜어디스연봉, 아시아나승무원, 아시아나항공승무원, 승무원메이크업, 스튜어드, 스튜어디스되는법, 남자승무원, 대한항공스튜어디스, 승무원준비, 크루팩토리, 항공사채용, 강남승무원학원, 승무원채용, 승무원자격요건, 스튜어디스자격조건, 승무원학원추천, 국내항공사, 승무원준비, 승무원면접, 스튜어디스학원, 승무원학원비용, 진에어채용, 에어부산채용, 이스타항공채용, 티웨이항공채용, 에어서울채용, 승무원학원비용, 승무원면접학원, 승무원합격"/>
<meta name="classification" content="크루팩토리항공사지상직, 여행사취업" />
<meta name="description" content="" />
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>

<div class="container-fluid counsel-banner-container">
	<div class="row cf-row" style="padding-top: 6rem;">
		<div>
			<p class="font-bebas-light font-20 font-thin font-white my-3">REQUEST FOR CONSULTATION</p>
			<p class="font-white font-40 font-bold my-2">
				<span style="color: #fc229c">XXX-XXXX-XXXX</span>
			</p>
			<p class="font-white font-20 my-4">
				Амралтын/амралтын өдрүүдэд ч зөвлөгөө авах, өргөдөл гаргах боломжтой.
			</p>
		</div>
	</div>
</div>

<form role="form" name="counsel" method="post" action="/counsel.do" data-toggle="validator">
<input type="hidden" name="result" id="result" value="${ param.result }">
<input type="hidden" name="phone" id="phone" value="">
<input type="hidden" name="office" value="mongolia">
<input type="hidden" name="stat" value="NEW">
<input type="hidden" name="path" value="counsel/online.do">
<input type="hidden" name="domain" value="<%= request.getServerName() %>">
<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
<input type="hidden" name="reurl" value="counsel/online.do"/>

<div class="container-fluid py-5">
	<div class="row gs-row">
		<div class="col-12 my-3">	
			<div class="col-12 py-2" id="mobile-100-percent">
				<div class="font-24 my-3 font-pink font-bold">Шаардлагатай мэдээлэл</div>
				<div class="card">
					<div class="card-body mt-3">
						<div class="col-12 font-18">
							<div class="col-6 mt-3 px-2 mobile-100-percent">
								<label for="bt_name" class="font-bold">Нэр</label>
								<input type="text" class="form-control" name="bt_name" id="bt_name" placeholder="Нэр" required>
								<div class="help-block with-errors text-danger"></div>
							</div>
							<div class="col-6 mt-3 px-2 mobile-100-percent">
								<label for="bt_name" class="font-bold">Утасны дугаар</label>
								<div class="input-group">
			                        <input type="number" class="form-control mr-2" id="mobile-1" name="mobile-1" oninput="maxLengthCheck(this)" maxlength="4" data-error="Холбоо барих мэдээллээ үнэн зөв оруулна уу." required>
				                    <input type="number" class="form-control input-group-append mr-2" name="mobile-2" id="mobile-2" oninput="maxLengthCheck(this)" maxlength="4" data-error="Холбоо барих мэдээллээ үнэн зөв оруулна уу." required>
				                    <input type="number" class="form-control input-group-append" name="mobile-3" id="mobile-3" oninput="maxLengthCheck(this)" maxlength="4" data-error="Холбоо барих мэдээллээ үнэн зөв оруулна уу." required>
				                </div>
								<div class="help-block with-errors text-danger"></div>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="col-12 px-2 mt-2 form-group">
                    		<label class="font-bold font-18">Зөвлөгөө өгөх талбар</label>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Domestic" id="ko" class="custom-control-input">
								<label for="ko" class="custom-control-label">Дотоодын агаарын тээврийн онгоцны үйлчлэгч</label>
					  		</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Overseas" id="os" class="custom-control-input">
								<label for="os" class="custom-control-label">Гадаадын агаарын тээврийн онгоцны үйлчлэгч</label>
							</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Ground" id="steward" class="custom-control-input">
								<label for="steward" class="custom-control-label">Нисэх онгоцны буудлын газрын ажилтнууд</label>
							</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Personal lesson" id="ground" class="custom-control-input">
								<label for="ground" class="custom-control-label">Онгоцны үйлчлэгчийн хувийн хичээл</label>
							</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Steward" id="tour" class="custom-control-input">
								<label for="tour" class="custom-control-label">Эрэгтэй онгоцны үйлчлэгч</label>
							</div>						  
		            	</div>
					</div>
					<div class="card-body">
						<div class="col-12 px-2 mt-2 form-group">
							<label class="font-bold font-18">Миний сонирхож байгаа зүйл</label>
							<textarea class="form-control" name="memo" id="memo" placeholder="Input here your questions.." rows="4"></textarea>
		                    <div class="help-block with-errors text-danger"></div>
	                    </div>
					</div>
				</div>
			</div>		
		</div>
		<!-- 이미지체크 -->
		<div class="col-12 mb-2 my-2">
			<div class="my-3 font-24 font-bold">Онгоцны үйлчлэгч Image Check&nbsp;(Нэмэлт оролт)</div>
				<div class="card col-12">
				<div class="card-body mx-2">
					<div class="form-group">
                      <label for="input-gender">Хүйс / Өндөр / Жин</label>
                      <div class="input-group">
                        <select class="form-control mr-2" id="gender" name="gender" style="height:3.75rem;">
                          <option value="female">Эмэгтэй</option>
                          <option value="male">Эрэгтэй</option>
                        </select>
	                    <input type="text" class="form-control input-group-append mr-2" name="height" id="height" maxlength="3" placeholder="Өндөр">
	                    <input type="text" class="form-control input-group-append" name="weight" id="weight" maxlength="3" placeholder="Жин">
	                  </div>
                    </div> 
                    <div class="form-group">
                      <label for="m_edulv">Боловсролын дээд түвшин</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="edulv" id="edulv" style="height:3.75rem;">
                          <option value="01">Ахлах сургууль</option>
                          <option value="02">Их сургууль</option>
                          <option value="03">Төгсөлтийн сургууль</option>
                        </select>
                        <select class="form-control input-group-append" name="gradlv" id="gradlv" style="height:3.75rem;">
                          <option value="01" selected>Төгссөн</option>
                          <option value="02">Төгсөх төлөвтэй байна</option>
                          <option value="03">Ажлын чөлөөнд</option>
                          <option value="04">Сургууль завсардах</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="m_seclan">Гадаад хэлний ур чадвар</label>                      
                      <div class="input-group">
                      <input type="text" class="form-control mr-2" name="lang" id="lang" maxlength="10"  placeholder="ex : English, Korean">  
                      <select class="col-3 form-control input-group-append" name="langlv" id="langlv" style="height:3.75rem;">
                        <option value="hi" >Өндөр</option>
                        <option value="no" >дундаж</option>
                        <option value="li" >Бага</option>
                      </select>
                      </div>
                    </div>  
				</div>
			</div>
		</div>
		<div class="col-12 my-4">
			<button class="btn btn-primary btn-lg btn-block" id="reqcs" type="button" style="height:4rem;">Зөвлөгөө авах хүсэлт</button>
		</div>
	</div>
</div>

</form>



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
 		location.href="/counsel/online.do";
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
		alert("이름은 두글자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=age]').val().length <= 1){
		alert("나이는 두자리이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=mobile-2]').val().length < 3){
		alert("휴대전화 앞자리는 세자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=mobile-3]').val().length <= 3){
		alert("휴대전화 뒷자리는 네자이어야 합니다.");
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