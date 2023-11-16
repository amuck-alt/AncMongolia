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

<div class="container-fluid">
	<div class="row member-row">
		<div class="col-12 mt-5 text-center">
			<p class="font-40 my-2">Welcome,</p>
			<p class="font-16 my-2 font-gray">ANC Нислэгийн үйлчлэгчийн академид тавтай морил.</p>
			<p class="font-14 mt-5 my-2 font-gray">Нэвтрэхийн тулд ID/нууц үгээ оруулна уу.</p>
			<form role="form" name="login" id="login" method="post" action="loginCheck.do" data-toggle="validator">
 			<input type="hidden" name="reurl" value="">
 			<div class="card bg-light-gray">
				<div class="card-body">
					<div class="form-group">
						<div class="input-group">
							<!-- <img src="/img/ico-login-id.png" class="mx-2"> -->
							<input type="text" class="form-control input-group-append" name="userid" id="userid" maxlength="20" placeholder="ID" data-error="ID-аа оруулна уу." required>
                  </div>
                  <div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<!-- <img src="/img/ico-login-pw.png" class="mx-2"> -->
							<input type="password" class="form-control input-group-append" name="userpw" id="userpw" maxlength="20" placeholder="Нууц үг" data-error="Нууц үг оруулна уу." required>
                  </div>
                  <div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<button type="submit" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">LogIn</button>
            </div>
			</div>			
			</form>
		</div>
		<div class="col-12 my-2 text-right">
			<span class="mx-3"><a href="/member/join.do">Гишүүнчлэлд элсээрэй</a></span><span class="mx-3"><a href="/member/find.do">Find your Id/Password</a></span>
		</div>
	</div>
</div>

<div class="containter-fluid" style="height:15rem;"></div>


<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

<script>
$(document).ready(function() {
 	$("#login").validator();	//폼발리데이터 	
});

$(document).ready(function() {
 	var join = "${join_result}";
 	if(join == "succeed"){
 		alert("회원가입이 완료되었습니다. 로그인해 주시기 바랍니다.")
 	}
});

$(document).ready(function() {
 	var resultmsg = "${result}";
 	console.log(resultmsg)
 	if(resultmsg == "succeed"){
 		location.href = "/";
 	}else if(resultmsg == "failed"){
 		alert("아이디/비밀번호가 일치하지 않습니다.")
 	}
});
</script>

</body>
</html>