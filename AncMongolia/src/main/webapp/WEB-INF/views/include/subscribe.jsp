<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<style>
	@media only screen and (max-width: 767px) {
		.subscribe-img { max-height:300px; }
		.subscribe-title { width:300px; }
	}
</style>

<!-- 중간배너/이미지체크 Mobile-->
<div class="containter-fluid mobile-hidden" style="background:url('/img/img-main-recruit-magazine-back.png') repeat center;">
	<div class="row sub-row pt-5">
		<div class="col-11" style="margin:0 auto;">
			<div class="col-6 mobile-100-percent off-hide subscribe-img"><img src="/img/img-main-recruit-magazine001.png" class="mobile-100-percent"></div>
			<div class="col-6 mobile-100-percent mt-2">
				<div class="col-12 px-3 pb-3 mobile-100-percent">
					<img src="/img/img-main-recruit-magazine002.png" class="subscribe-title">
				</div>
				<div class="col-8 mobile-100-percent px-3">
					<div class="col-12 py-1">
						<div class="col-12 mobile-100-percent">
							<div class="input-group">
								<input type="text" class="form-control mr-2" name="subsname" id="subsname" placeholder="이름" maxlength="10">
								<input type="text" class="form-control input-group-append" name="subsage" id="subsage" placeholder="나이" maxlength="2">
							</div>
						</div>
					</div>
					<div class="col-12 py-1">
						<div class="col-12 mobile-100-percent">
							<div class="input-group">
								<select class="form-control px-2 mr-2" id="subsmobile1" style="height:3.75rem;">
									<option value="010">010</option>
								</select>
								<input type="text" class="form-control input-group-append mr-2" id="subsmobile2" required maxlength="4" placeholder="앞번호">
								<input type="text" class="form-control input-group-append" id="subsmobile3" required maxlength="4" placeholder="뒷번호">
							</div>
						</div>
					</div>
					<div class="col-12 py-1">
						<div class="col-12 mobile-100-percent">
							<div class="input-group">
								<input type="text" class="form-control" name="subsemail" id="subsemail" placeholder="이메일" maxlength="40">
							</div>
						</div>
					</div>
					<div class="col-12 py-1"><button type="button" class="col-12 btn" style="height:3.5rem;background-color:red;color:#fff;" onclick="goSubscribe();">구독하기</button></div>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	function goSubscribe(){
		
		var mobile = $("#subsmobile1").val() + $("#subsmobile2").val() + $("#subsmobile3").val();
		
		if($("#subsmobile2").val() == '' || $("#subsmobile3").val() == '' || $('#subsname').val() == '' || $('#subsage').val() == '' || $('#subsemail').val() == ''){
			alert("이름, 나이, 연락처, 이메일은 필수 입력항목입니다.");
			return false;
		}
		
		var obj = {
				"gubun": "구독신청",
				"stat": "신규",
				"name": $('#subsname').val(),
				"email": $('#subsemail').val(),
				"phone": mobile,
				"age": $('#subsage').val(),
				"hopse": "",
				"domain": "<%= request.getServerName() %>",
				"regip": "<%=request.getRemoteAddr()%>"
		}
		
		$.ajax({
		    url: "/quick/subscribe.do",
		    type: "post",
		    data: JSON.stringify(obj),
		    contentType: "application/json",
		    success: function(data) {
		        alert("구독신청이 완료되었습니다.");
		        window.location.reload();
		    },
		    error: function(errorThrown) {
		        alert(errorThrown.statusText);
		    }
		});
		
	}
	
</script>

<div class="container-fluid mobile-show">
	<div class="row">
		<div class="col-12">
			<a href="#subscribeModal" data-toggle="modal" target="_blank"><img src="/img/img-main-recruit-magazine-m.png" width="100%"></a>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="subscribeModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header bg-ivory">
				<p class="modal-title font-24 font-bold">
					구독신청
				</p>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="col-12 px-3">
					<div class="col-12 py-2">
						<div class="col-12">
							<div class="input-group">
								<input type="text" class="form-control mr-2" name="msubsname" id="msubsname" placeholder="이름" maxlength="10">
								<input type="number" class="form-control input-group-append" name="msubsage" id="msubsage" placeholder="나이" maxlength="2">
							</div>
						</div>
					</div>
					<div class="col-12 py-2">
						<div class="col-12">
							<div class="input-group">
								<select class="form-control mr-2" id="msubsmobile1" style="height: 3.75rem;">
									<option value="010">010</option>
								</select>
								<input type="text" class="form-control input-group-append mr-2" id="msubsmobile2" maxlength="4" placeholder="앞번호">
								<input type="text" class="form-control input-group-append" id="msubsmobile3" maxlength="4" placeholder="뒷번호">
							</div>
						</div>
					</div>
					<div class="col-12 py-2">
						<div class="col-12">
							<div class="input-group">
								<input type="text" class="form-control" name="msubsemail" id="msubsemail" placeholder="이메일" maxlength="40">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-lg btn-block btn-primary font-white font-bold" onclick="goSubscribeM();">구독신청</button>
			</div>
		</div>
	</div>
</div>

<script>
	function goSubscribeM(){
		
		var mobile = $("#msubsmobile1").val() + $("#msubsmobile2").val() + $("#msubsmobile3").val();
		
		if($("#msubsmobile2").val() == '' || $("#msubsmobile3").val() == '' || $('#msubsname').val() == '' || $('#msubsage').val() == '' || $('#msubsemail').val() == ''){
			alert("이름, 나이, 연락처, 이메일은 필수 입력항목입니다.");
			return false;
		}
		
		var obj = {
				"gubun": "구독신청",
				"stat": "신규",
				"name": $('#msubsname').val(),
				"email": $('#msubsemail').val(),
				"phone": mobile,
				"age": $('#msubsage').val(),
				"hopse": "",
				"domain": "<%= request.getServerName() %>",
				"regip": "<%=request.getRemoteAddr()%>"
		}
		
		$.ajax({
		    url: "/quick/subscribe.do",
		    type: "post",
		    data: JSON.stringify(obj),
		    contentType: "application/json",
		    success: function(data) {
		        alert("구독신청이 완료되었습니다.");
		        window.location.reload();
		    },
		    error: function(errorThrown) {
		        alert(errorThrown.statusText);
		    }
		});
		
	}
	
</script>
