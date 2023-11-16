<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="right-floating-bar mobile-hidden">
	<div class="col-12">
		<ul>
			<li class="border bg-ivory mb-2" style="height: 90px;">
				<div class="col-12 py-3">
					<div class="col-12 px-3 py-1 font-12 font-black float-left">대표번호</div>
					<div class="col-12 px-3 py-1 font-18 font-black float-left font-bold">02-2038-0064</div>
				</div>
			</li>
			<li class="border bg-white" style="height: 200px;">
				<div class="col-12 pt-4 align-middle text-center">
					<a href="/counsel/online.do?cost=y&imgchk="><img src="/img/ico-r-floating-counsel.jpg"></a>
					<p class="px-3 py-2 font-14 font-gray">
						나에게 맞는 <br> <span class="font-bold font-black">커리큘럼</span>과 <span class="font-bold font-black">수강료</span>를 <br>상담해보세요.
					</p>
				</div>
			</li>
			<li class="bg-os-red" style="height: 50px;"><a href="" data-toggle="modal" data-target="#counselingModal">
					<div class="col-12 align-middle text-center">
						<p class="px-3 py-3 font-16 font-bold font-white">빠른상담신청</p>
					</div>
			</a></li>
			<li>
				<div class="col-12 align-middle text-center py-3">
					<img src="/img/top-btn-mobile.png" style="width: 30%;" onclick="$('html').animate({scrollTop : 0}, 800)">
				</div>
			</li>
		</ul>
	</div>
</div>
<div class="container-fluid mobile-show" style="bottom:00px; right:10px; position:fixed; width:180px; height:140px; z-index:2020;"> 
	<div class="row">
		<div class="col-12 text-right">
			<div class="col-12" style="position:relative;"><a href="tel:02-2038-0064"><img src="/img/ico-tel.png" width="50%"></a></div>
		</div>
	</div>
</div>

<!-- 상담 -->
<a href="#counselingModal" data-toggle="modal" target="_blank">
<div class="bottom-floating-bar-mobile mobile-show bg-pink text-center">
	<p class="font-20 font-bold font-white" style="margin-top:12px;">빠른 취업 상담 문의</p>
</div>
</a>
<!-- <div class="right-floating-bar-mobile mobile-show">
	<div class="col-12 text-center" style="margin: 0 auto;">
		<a href="#counselingModal" data-toggle="modal" class="intro-banner-vdo-play-btn pinkBg" target="_blank"> <i class="glyphicon glyphicon-play whiteText" aria-hidden="true"><img src="/img/intro-sangdam.png" style="width: 70%"></i> <span class="ripple pinkBg"></span>         <span class="ripple pinkBg"></span>
        <span class="ripple pinkBg"></span>
		</a>
	</div>
</div>
<div class="right-floating-topbar-mobile hide">
	<div class="col-12 text-center" style="margin: 0 auto;">
		<a data-toggle="modal" class="intro-banner-vdo-play-btn" target="_blank"> <i class="glyphicon glyphicon-play whiteText" aria-hidden="true"><img src="/img/top-btn-mobile.png" style="width: 60%;" onclick="$('html').animate({scrollTop : 0}, 800)"></i></a>
	</div>
</div> -->



<!-- div class="right-floating-bar-mobile mobile-show">
  <div class="col-12">
   	<a href="#counselingModal" data-toggle="modal">
   	  <img src="/img/ico-r-floating-counsel-mobile.png">
   	</a>
  </div> 
</div -->



 <div class="container-fluid mobile-hidden" id="showland" style="bottom:40px; right:30px; position:fixed; width:300px; height:170px; z-index:2020;"> 
	<div class="row">
		<div class="col-12 ">
			<button onclick="hideObject('#showland')" style="position:absolute; z-index:999; top:30px; right:10px; width:18px; height:18px;"><img src="/img/ico-close.png" width="18px" height="18px"></button>
			<div class="col-12" style="position:relative;"><a href="/banner/classopen.do"><img src="/img/pop-img.png"></a></div>
		</div>
	</div>
</div> 






<!-- Modal -->
<form role="form" name="quick_counsel" data-toggle="validator">
<input type="hidden" name="domain" value="<%= request.getServerName() %>">
<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
	<div class="modal fade" id="counselingModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
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
					<div class="col-12 px-3">
						<p class="my-3">입력하신 전화번호는 상담목적이외의 어떠한 용도로도 사용되지 않습니다.</p>
						<div class="col-12 py-2">
							<div class="col-2 py-3">이름</div>
							<div class="col-10">
								<div class="input-group">
									<input type="text" class="form-control" name="quick_name" id="quick_name" onkeyup="onlyKorean('quick_name')" placeholder="이름" maxlength="10" data-error="이름을 정확히 입력하세요" required>
									<span class="py-3 input-group-append mx-4">나이</span> <input type="text" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="quick_age" id="quick_age" data-error="나이를 정확히 입력하세요"  maxlength="2" placeholder="나이" required>
									<div class="help-block with-errors text-danger"></div>
								</div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3">전화번호</div>
							<div class="col-10">
								<div class="input-group">
									<select class="form-control mr-2" id="quick_mobile-1" style="height: 3.75rem;">
										<option value="010">010</option>
									</select> 
									<input type="text" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="quick_mobile-2" id="quick_mobile-2" required maxlength="4" placeholder="앞번호" data-error="연락처를 정확히 입력하세요" > 
									<input type="text" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="quick_mobile-3" id="quick_mobile-3" required maxlength="4" placeholder="뒷번호" data-error="연락처를 정확히 입력하세요">
								</div>
								<div class="help-block with-errors text-danger"></div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3">관심분야</div>
							<div class="col-10">
								<div class="input-group">
									<select class="form-control mr-2" id="hopse" name="hopse" style="height: 3.75rem;">
										<option value="대한항공/아시아나항공">대한항공/아시아나항공 취업</option>
										<option value="국내LCC항공사">국내LCC항공사 취업</option>
										<option value="외국항공사지상직">외국항공사지상직 취업</option>
										<option value="GHA/GSA">GHA/GSA</option>
										<option value="일본항공사/공항지상직">일본항공사/공항지상직 취업</option>
										<option value="여행사취업">여행사취업</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3"></div>
							<div class="col-10">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" name="quick_agree" value="yes" id="quick_agree" class="custom-control-input" checked> <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-lg btn-block btn-primary font-white font-bold" id="btnCounsel">상담신청</button>
				</div>
			</div>
		</div>
	</div>
</form>



<script>

$(document).ready(function() {
 	$("#quick_counsel").validator();	//폼발리데이터
});

function goTop(){
	$('html').scrollTop(0);
}

$(document).on('click', '#btnCounsel', function(){
	var mobile = $("#quick_mobile-1").val() + $("#quick_mobile-2").val() + $("#quick_mobile-3").val();
	$("#quick_phone").val(mobile);
	
	if($("#quick_mobile-2").val() == '' || $("#quick_mobile-3").val() == '' || $('#quick_name').val() == '' || $('#quick_age').val() == ''){
		alert("성함과 연락처, 나이는 필수 입력항목입니다.");
		return false;
	}
	
	if($('input[name=quick_name]').val().length < 2){
		alert("이름은 두글자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=quick_age]').val().length <= 1){
		alert("나이는 두자리이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=quick_mobile-2]').val().length < 3){
		alert("휴대전화 앞자리는 세자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=quick_mobile-3]').val().length <= 3){
		alert("휴대전화 뒷자리는 네자이어야 합니다.");
		return false;
	}
	
	var obj = {
			"gubun" : "간편상담",
			"stat" : "신규",
			"name" : $('#quick_name').val(),
			"phone" : mobile,
			"age" : $('#quick_age').val(),
			"hopse" : $('#hopse').val(),
			"domain" : "<%= request.getServerName() %>",
			"regip" : "<%=request.getRemoteAddr()%>",
	}
	
	$.ajax({
	    url: "/quick/counsel.do",
	    type: "post",
	    data: JSON.stringify(obj),
	    contentType: "application/json",
	    success: function(data) {
	        alert("상담신청이 완료되었습니다.");
	        window.location.reload();
	    },
	    error: function(errorThrown) {
	        alert(errorThrown.statusText);
	    }
	});
	
});

</script>
<script>

	function hideObject(obj){
		$(obj).hide();
	}
</script>

