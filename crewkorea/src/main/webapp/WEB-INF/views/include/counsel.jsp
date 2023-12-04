<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form role="form" name="counsel" id="counsel" method="post" data-toggle="validator">
<div class="container-fluid bg-light-gray">
	<div class="row sm-row">
		<div class="col-12 mt-5 mb-4">
		  <div class="col-12 font-24 mb-1 " id="mobile-100-percent">크루팩토리의 높은 합격률은 지금까지 <span class="font-red font-bold">소수정원 운영</span>을 원칙으로, 그룹과외 수업을 고집한 결과 입니다.</div>
		  <div class="col-12 py-2 line-2-black" style="width:100px; margin:0 auto; margin-bottom: 10px;"></div>
		  <div class="col-12 font-24 font-bold py-2">상담신청</div>
		</div>
		<div class="col-6 my-3" id="mobile-100-percent">
			<div class="card">
				<div class="card-body">
					<div class="form-group">
                      <label class="font-bold">관심분야</label>
                      <div class="custom-control custom-radio">
                        <input type="radio" name="bt_hopse" value="대한항공/아시아나항공" id="keoz" class="custom-control-input" checked>
                        <label for="keoz" class="custom-control-label">대한항공/아시아나항공</label>
                      </div>
					  <div class="custom-control custom-radio">	
						<input type="radio" name="bt_hopse" value="국내항공사" id="ko" class="custom-control-input">
						<label for="ko" class="custom-control-label">국내항공사</label>
					  </div>
					  <div class="custom-control custom-radio">	
						<input type="radio" name="bt_hopse" value="외국항공사" id="os" class="custom-control-input">
						<label for="os" class="custom-control-label">외국항공사</label>
					  </div>
					  <div class="custom-control custom-radio">	
						<input type="radio" name="bt_hopse" value="남자승무원(스튜어드)" id="steward" class="custom-control-input">
						<label for="steward" class="custom-control-label">남자승무원(스튜어드)</label>
					  </div>
					  <div class="custom-control custom-radio">	
						<input type="radio" name="bt_hopse" value="항공사지상직승무원" id="ground" class="custom-control-input">
						<label for="ground" class="custom-control-label">항공사지상직승무원</label>
					  </div>
					  <div class="custom-control custom-radio">	
						<input type="radio" name="bt_hopse" value="항공운항과대학입시" id="go3" class="custom-control-input">
						<label for="go3" class="custom-control-label">항공운항과대학입시</label>
					  </div>
						<!--<div class="custom-control custom-radio">	
						<input type="radio" name="hopse" value="여행사/관광통역사" id="agency" class="custom-control-input">
						<label for="agency" class="custom-control-label">여행사/관광통역사</label>
					  	</div> -->
	                </div>
				</div>
			</div>
		</div>
		
		<div class="col-6 col-padding my-3" id="mobile-100-percent">
			<div class="card col-md-12">
				<div class="card-body">
					<div class="form-group">
                   <label for="bt_name" class="font-bold">이름/나이</label>
                   <div class="input-group">
                   <input type="text" class="form-control" name="bt_name" id="bt_name" onkeyup="onlyKorean('bt_name')" placeholder="이름" required>
                   <input type="number" class="form-control input-group-append ml-2" oninput="maxLengthCheck(this)" name="bt_age" id="bt_age" placeholder="나이" maxlength="2" required>
                   </div>
                   <div class="help-block with-errors text-danger"></div>
                 </div>
			        <div class="form-group">
                      <label for="input-gender" class="font-bold">연락처</label>
                      <div class="input-group">
                        <select class="form-control mr-2" id="bt_mobile1" name="bt_mobile1" style="height:3.75rem;">
                          <option value="010">010</option>
                        </select>
	                    <input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="bt_mobile2" id="bt_mobile2" maxlength="4" required>
	                    <input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="bt_mobile3" id="bt_mobile3" maxlength="4" required>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
	                </div>
				</div>
				<div class="card-body">
					<div class="form-group">
                      <div class="custom-control custom-checkbox">
					    <input type="checkbox" name="bt_agree" value="1" id="bt_agree" class="custom-control-input" checked>
					     <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
                      </div>
	                </div>
			        <div class="mb-3"></div>
			        <button class="btn btn-primary btn-lg btn-block" id="reqcs" type="button">상담신청하기</button>
				</div>
			</div>
		</div>

		<div class="col-12 my-4 my-3"></div>
	</div>
</div>

</form>

<script>
	$("#reqcs").click(function(){
		var mobile = $("#bt_mobile1").val() + $("#bt_mobile2").val() + $("#bt_mobile3").val();
		var radioVal = $('input[name="bt_hopse"]:checked').val();		
		if($("#bt_name").val() == ""){
			alert("이름을 입력하세요.");
			return false;
		}
		if($("#bt_mobile2").val() == "" || $("#bt_mobile3").val() == ""){
			alert("전화번호를 입력하세요.");
			return false;
		}
		if($("#bt_age").val() == ""){
			alert("나이를 입력하세요.");
			return false;
		}
		
		if($("input:checkbox[id='bt_agree']").is(":checked") == false){
			alert("개인정보이용방침에 동의하셔야 합니다.");
			return false;
		}
		
		if($('input[name=bt_name]').val().length < 2){
			alert("이름은 두글자이상 이어야 합니다.");
			return false;
		}
		
		if($('input[name=bt_age]').val().length <= 1){
			alert("나이는 두자리이상 이어야 합니다.");
			return false;
		}
		
		if($('input[name=bt_mobile2]').val().length < 3){
			alert("휴대전화 앞자리는 세자이상 이어야 합니다.");
			return false;
		}
		
		if($('input[name=bt_mobile3]').val().length <= 3){
			alert("휴대전화 뒷자리는 네자이어야 합니다.");
			return false;
		}
		
		var obj = {
				"gubun" : "간편상담",
				"stat" : "신규",
				"name" : $("#bt_name").val(),
				"phone" : mobile,
				"age" : $("#bt_age").val(),
				"hopse" : radioVal,
				"domain" : "<%=request.getServerName()%>",
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

