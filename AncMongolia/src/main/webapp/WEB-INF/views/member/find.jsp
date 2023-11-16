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
			<p class="font-40 my-2">아이디/비밀번호찾기,</p>
			<p class="font-16 my-2 font-gray">크루팩토리 승무원아카데미에 오신것을 환영합니다.</p>
			<p class="font-14 mt-5 my-2 font-gray">아이디/비밀번호를 찾기 위해서 가입하실때 입력한 정보를 입력 해주세요.</p>
			<form role="form" name="find" id="find" method="post" action="/member/findIdpw.do" data-toggle="validator">
 			<input type="hidden" name="mobile" value="">
 			<input type="hidden" name="reurl" value="">
 			<div class="card bg-light-gray">
				<div class="card-body">
					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control input-group-append" name="usernm" id="usernm" maxlength="20" placeholder="이름" data-error="이름을 입력하세요." required>
                  </div>
                  <div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<input type="email" class="form-control input-group-append" name="email" id="email" maxlength="20" placeholder="이메일" data-error="이메일을 입력하세요." required>
                  </div>
                  <div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
                  <div class="input-group">
                  	<select class="form-control mr-2" id="member-mobile1" name="member-mobile1" style="height:3.75rem;">
                        <option value="010">010</option>
                     </select>
                   	<input type="text" class="form-control input-group-append mr-2" name="member-mobile2" id="member-mobile2" placeholder="앞자리"  data-error="연락처를 정확히 입력하세요."  required>
                   	<input type="text" class="form-control input-group-append" name="member-mobile3" id="member-mobile3" placeholder="뒷자리"  data-error="연락처를 정확히 입력하세요."  required>
                 </div>
                 <div class="pt-1 text-left help-block with-errors text-danger"></div>
               </div>
					<button type="submit" id="doCheck" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">아이디/비밀번호찾기</button>
            </div>
			</div>			
			</form>
		</div>
<!-- 		<div class="col-12">
			<button class="font-20 col-12 text-center" style="height:81px; background:url('/img/ico-login-naver.png') no-repeat left; background-color:#1dc800;">
				네이버아이디로 로그인
			</button>
			<button class="font-20 mt-2 col-12 text-center" style="height:81px; background:url('/img/ico-login-kakao.png') no-repeat left; background-color:#f5e901;">
				카카오아이디로 로그인
			</button>
		</div> -->
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
 	$("#find").validator();	//폼발리데이터
});

$('#doCheck').click(function(){
	var mobile = $("select[name=member-mobile1]").val() + $("input[name=member-mobile2]").val() + $("input[name=member-mobile3]").val();
	$('input[name="mobile"]').val(mobile);
});

</script>

</body>
</html>