<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-로그인</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
<%@ include file="../include/nav.jsp"%>
<%@ include file="../include/floating-left.jsp"%>

<div class="container-fluid">
	<div class="row member-row">
		<div class="col-12 mt-5 text-center">
			<p class="font-40 my-2">Welcome,</p>
			<p class="font-16 my-2 font-gray">크루팩토리 승무원아카데미에 오신것을 환영합니다.</p>
		</div>
<!-- 		<div class="col-12">
			<p class="font-14 mt-5 my-2 font-gray">회원가입을 위하여 아래 항목을 선택하여 주세요.</p>	
			<div class="card">
				<div class="card-body">
					<button class="col-12 text-left" style="background-color:#1dc800;">
						<img src="/img/ico-login-naver.png">
						<span class="mx-3 font-20 font-white">네이버아이디로 회원가입</span>
					</button>
					<button class="col-12 mt-2 text-left" style="background-color:#f5e901;">
						<img src="/img/ico-login-kakao.png">
						<span class="mx-3 font-20 font-white">카카오아이디로 회원가입</span>
					</button>
				</div>
			</div>
		</div> -->
		<div class="col-12">
			<p class="font-14 mt-4 my-2 font-gray">회원가입을 위하여 아래 항목을 입력하여 주세요.</p>	
			<form role="form" name="join" id="login" method="post" action="/member/joinCheck.do" data-toggle="validator">
			<input type="hidden" name="mobile" value="">
			<input type="hidden" name="domain" value="<%=request.getServerName()%>">
			<input type="hidden" name="regip" value="<%=request.getRemoteAddr()%>">
			<input type="hidden" name="status" value="신규">
			<input type="hidden" name="usercheck" id="usercheck" value="">
			<div class="card bg-light-gray">
				<div class="card-body">
					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control" name="userid" id="userid" maxlength="20" placeholder="아이디" data-error="아이디를 입력하세요." required>
							<button type="button" class="btn btn-warning" id="checkId">중복확인</button>
                  </div>
                  <div class="text-left pt-1 help-block with-errors text-danger"></div>                  
					</div>
					<div class="form-group">
						<div class="input-group">
							<input type="password" class="form-control" name="userpw" id="userpw" maxlength="20" placeholder="비밀번호" data-error="비밀번호를 입력하세요/" required>
                  </div>
                  <div class="text-left pt-1 help-block with-errors text-danger"></div>                  
					</div>
					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control" name="usernm" id="usernm" maxlength="10" onkeyup="onlyKorean('usernm')" placeholder="이름" data-error="이름과 나이을 입력하세요." required>
							<input type="number" class="ml-2 form-control input-group-append" name="age" id="age" maxlength="2" oninput="maxLengthCheck(this)" placeholder="나이" data-error="이름과 나이을 입력하세요." required>
                  </div>
                  <div class="text-left pt-1 help-block with-errors text-danger"></div>                  
					</div>
					<div class="form-group">
						<div class="input-group">
							<input type="email" class="form-control" name="email" id="email" maxlength="30" placeholder="이메일" data-error="이메일을 입력하세요." required>
                  </div>
                  <div class="text-left pt-1 help-block with-errors text-danger"></div>                  
					</div>
					<div class="form-group">
                  <div class="input-group">
                  	<select class="form-control mr-2" id="member-mobile1" name="member-mobile1" style="height:3.75rem;">
                        <option value="010">010</option>
                     </select>
                   	<input type="number" class="form-control input-group-append mr-2" name="member-mobile2" id="member-mobile2" oninput="maxLengthCheck(this)"  data-error="연락처를 정확히 입력하세요." maxlength="4"  required>
                   	<input type="number" class="form-control input-group-append" name="member-mobile3" id="member-mobile3" oninput="maxLengthCheck(this)" data-error="연락처를 정확히 입력하세요."  maxlength="4" required>
                 </div>
                 <div class="pt-1 text-left help-block with-errors text-danger"></div>
               </div>
               <div class="form-group">
	               <div class="input-group">
							<select class="form-control" id="hopse" name="hopse" style="height: 3.75rem;" data-error="관심분야를 선택하세요."  required>
								<option value="">관심분야</option>
								<option value="대한항공/아시아나항공">대한항공/아시아나항공</option>
								<option value="국내항공사">국내항공사</option>
								<option value="외국항공사">외국항공사</option>
								<option value="남자승무원(스튜어드)">남자승무원(스튜어드)</option>
								<option value="항공사지상직 승무원">항공사지상직승무원</option>
								<option value="합공운항과입시">항공운항과입시</option>
							</select>
						</div>
						<div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<div class="my-3 text-left custom-control custom-checkbox">
						<input type="checkbox" name="join_agree" value="yes" id="join_agree" class="custom-control-input" checked required><label for="join_agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
					</div>
					<button type="submit" id="doJoin" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">회원가입</button>
            </div>
			</div>			
			</form>
		</div>
		<!-- <div class="col-12 my-2 text-right">
			<span class="mx-3"><a href="/member/join.do">회원가입</a></span><span class="mx-3">아이디/비밀번호찾기</span>
		</div> -->
		<hr>
		<div class="col-12 mt-5">
			
		</div>
	</div>
</div>

<div class="containter-fluid" style="height:15rem;"></div>

<!-- 하단링크 -->
<%@ include file="../include/footlink.jsp"%>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

<script>
$(document).ready(function() {
	$("#join").validator();
});

$('#checkId').click(function(){
	var userid = $('input[name=userid]').val();
	if(userid == ''){
		alert("아이디를 입력하세요.");
		return;
	}if($('input[name=userid]').val().length < 5 ){
		alert("아이디는 5자이상이어야 합니다.")
		return;
	}else{
		$.ajax({
		    url: "/member/checkId.do",
		    type: "post",
		    data: JSON.stringify({
		    	"userid" : userid,
		    }),
		    contentType: "application/json",
		    success: function(data) {
		    	console.log(data.value);
		      if(data.value == false){
		        	alert("이미사용중인 아이디입니다.");
		        	$('input[name=userid]').val("");
		      }else{
		    		alert("사용가능한 아이디입니다.");
		    		$('input[name=usercheck]').val("checked");
		    		$('input[name=userid]').attr('readonly', true);
		      }
		    },
		    error: function(errorThrown) {
		        alert(errorThrown.statusText);
		    }
		});
	}
});

$('#doJoin').click(function(){
	var mobile = $("select[name=member-mobile1]").val() + $("input[name=member-mobile2]").val() + $("input[name=member-mobile3]").val();
	$('input[name="mobile"]').val(mobile);
	
	if($('input[name=usercheck]').val() != "checked"){
		alert("아이디에 대한 중복확인이 필요합니다.");
		return false;
	}
	
	if($('input[name=userpw]').val().length <= 3){
		alert("비밀번호는 4자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=usernm]').val().length < 2){
		alert("이름은 두글자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=age]').val().length <= 1){
		alert("나이는 두자리이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=member-mobile2]').val().length < 3){
		alert("휴대전화 앞자리는 세자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=member-mobile3]').val().length <= 3){
		alert("휴대전화 뒷자리는 네자이어야 합니다.");
		return false;
	}
	
	if(!$.isNumeric($("input[name=member-mobile2]").val()) || !$.isNumeric($("input[name=member-mobile3]").val()) || !$.isNumeric($("input[name=age]").val())){
		alert("연락처와 나이는 숫자만 입력가능 합니다.");
		return false;
	}
	
});

</script>

</body>
</html>