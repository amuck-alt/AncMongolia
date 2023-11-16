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
<title>AncMongolia - Ажилд авах мэдээлэл</title>
<%@ include file = "include/header.jsp" %>
</head>

<header><%@ include file="include/nav.jsp"%></header>
<body>

<%@ include file="index_banner.jsp" %>


<div class="container-fluid py-5">
	<div class="row">
		<div class="sm-row">
			<div class="col-12 text-center">
				<div class="font-30 pt-5" id="mobile-100-percent">Агаарын тээврийн компанид ажилд авах мэдээлэл</div>
				<div class="pt-4 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 40px;"></div>
			</div>
			<div class="col-mx-12 text-center">
				<div class="col-12 line-1-gray"></div>
				<div class="col-12 my-1">
					<c:set var="now" value="<%=new java.util.Date()%>" />
                	<c:set var="thisDayTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH" /></c:set>
					<c:forEach items="${recruit}" var="list">
						<ul class="col-12 align-middle line-1-gray">
							<li class="col-4 px-2 py-3 mobile-100-percent">
								<a href="/recruit/view.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><img src="${list.thumbnail}" class="align-middle rad-div-10" width="100%"></a>
							</li>
							<li class="col-8 px-3 py-3 mobile-100-percent">
								<div class="font-20 py-4 text-left">
									<a href="/recruit/view.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}">${ list.title }</a>
								</div>
								<%-- <div class="col-12 px-3 py-3 font-gray font-16">${list.description}</div> --%>
								<div class="col-12 my-2 font-16 font-gray text-left">
									<span class="">${list.stdaytime } ~ ${list.enddaytime }</span>
									<c:choose>
										<c:when test="${thisDayTime <= list.stdaytime}"><span class="ml-2 tiny-label px-3 pt-1 pb-2 bg-navy">waiting</span></c:when>
										<c:when test="${thisDayTime >= list.enddaytime}"><span class="ml-2 tiny-labe pt-1 pb-2 bg-gray">end</span></c:when>
										<c:otherwise><span class="ml-4 tiny-label pt-1 pb-2 bg-pink">in progress</span></c:otherwise>
									</c:choose>
								</div>
							</li>
						</ul>
					</c:forEach>
				</div>
			</div>
			<div class="col-12 text-center mt-5 mb-3">
	    		<button class="btn bg-navy font-white" style="width:120px;" onclick="javascrpt:location.href='/recruit/list.do?startPage=&visiblePages=&searchText='">илүү үзнэ үү</button>
	    	</div>
    	</div>
	</div>
</div>

<div class="container-fluid py-5 bg-ivory">
	<div class="row sm-row">
		<div class="col-12 text-center">
			<div class="font-30 pt-5" id="mobile-100-percent">ANC NEWS</div>
			<div class="pt-4 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 40px;"></div>
		</div>
		<div class="col-12 mt-3">
			<ul>
				<c:forEach items="${announce}" var="announce"  varStatus="status">
					<li class="col-12 line-1-gray py-3">
						<div class="pt-1" style="width:50px; position:relative; float:left;"><span class="tiny-label px-2 font-white bg-navy">NEWS</span></div>
						<div class="col-11 pl-1">
							<span class="font-20 mr-3"><a href="/news/view.do?idx=${announce.idx}&startPage=&visiblePages=&searchText=&section=">${fn:substring(announce.title, 0, 75)}...</a></span>
							<span class="font-16 mt-1 float-right font-gray mobile-hidden"><fmt:formatDate value="${announce.regdate}" pattern="yyyy-MM-dd"/></span>
							<div class="font-16 font-gray mobile-show"><fmt:formatDate value="${announce.regdate}" pattern="yyyy-MM-dd"/></div>
						</div>
					</li>				
				</c:forEach>
			</ul>
		</div>
		<div class="col-12 text-center mt-5 mb-3">
    		<button class="btn bg-navy font-white" style="width:120px;" onclick="javascrpt:location.href='/news/list.do?startPage=&visiblePages=&searchText='">илүү үзнэ үү</button>
    	</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row sm-row">
		<div class="col-12 text-center">
			<div class="font-30 pt-5" id="mobile-100-percent">ANC-аас ажилд авах агентлагийн агаарын тээврийн мэдээлэл</div>
			<div class="pt-4 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 40px;"></div>
		</div>
		<div class="col-12 line-1-gray"></div>
		<div class="col-12">
			<ul class="col-12 line-1-gray">
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/emirates.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Emirates</li>
							<li class="font-18 my-3">Ойрхи Дорнодын агаарын тээврийн бүхээгийн багийн ажилд авах (агентлаг)</li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2017_04</li>
						</ul>
					</div>
				</li>
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/peachair.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Peach</li>
							<li class="font-18 my-3">Peach Airlines-ийн бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2016_11</li>
						</ul>
					</div>
				</li>
			</ul>
			<ul class="col-12 line-1-gray">
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/salamair.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">SalamAir</li>
							<li class="font-18 my-3">Salam Air-ийн бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2022_04</li>
						</ul>
					</div>
				</li>
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/scoot.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Scoot</li>
							<li class="font-18 my-3">Скутын бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2022_02</li>
						</ul>
					</div>
				</li>
			</ul>
			<ul class="col-12 line-1-gray">
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/finnair.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">FinnAir</li>
							<li class="font-18 my-3">Finnair бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2019_10</li>
						</ul>
					</div>
				</li>
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/ethiopian.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Ethiopian</li>
							<li class="font-18 my-3">Ethiopian Airlines бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">2019_10</li>
						</ul>
					</div>
				</li>
			</ul>
			<ul class="col-12 line-1-gray">
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/gulfair.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">GulfAir</li>
							<li class="font-18 my-3">Gulf Air бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2019_03</li>
						</ul>
					</div>
				</li>
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/philippinairline.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Philippine Airline</li>
							<li class="font-18 my-3">Филиппиний агаарын тээврийн бүхээгийн багийн ажилд авна(Санал) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2018_07</li>
						</ul>
					</div>
				</li>
			</ul>
			<ul class="col-12 line-1-gray">
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/airmacau.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">AirMacau</li>
							<li class="font-18 my-3">Air Macau бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2018_05</li>
						</ul>
					</div>
				</li>
				<li class="col-6 py-4 px-2" id="mobile-100-percent">
					<div class="col-4"><img src="/images/qatar.png" width="100%" class="rad-div-10 border"></div>
					<div class="col-8">
						<ul class="py-3 px-3">
							<li class="font-24 font-bold my-1">Qatar, Etihad</li>
							<li class="font-18 my-3">Ойрхи Дорнодын агаарын тээврийн бүхээгийн багийн ажилд авна(агентлаг) </li>
							<li class="font-16 my-2 font-gray">Гэрээ : 2017_04</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm-row py-5">
		<div class="col-12 py-4 text-center">
			<div class="font-26 pb-1" id="mobile-100-percent">Зөвлөгөө авах хүсэлт гаргах</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto;"></div>
			<!-- <div class="pt-4 font-22" style="line-height:3rem;">크루팩토리의  높은합격률은<br>지금까지 <span class="font-blue font-bold">소수정원</span> 인원제한을 원칙으로 <span class="font-blue font-bold">그룹과외수업</span>을 고집한 결과 입니다.</div> -->
		</div>
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
					<div class="py-2 font-bold font-20">Хувийн мэдээллийг оруулна уу</div>
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


<footer><%@ include file="include/footer.jsp"%></footer>

</body>
