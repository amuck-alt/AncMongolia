<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			<form role="form" name="find" id="find" method="post" action="findIdPw.do" data-toggle="validator">
 			<input type="hidden" name="reurl" value="">
 			<div class="card bg-light-gray text-left">
				<div class="card-body">
					<p class="font-14 font-bold" id="">조회결과가 아래와 같습니다.</p>
					<div class="col-12 my-4 pt-3 px-3">
						<div class="col-4 font-20">아이디</div>
						<div class="col-8 font-20">
							<c:set var="userid" value="${result.userid}"/>
						   <c:set var="length" value="${fn:length(userid)}"/>
						   <c:set var="substruserid" value="${fn:substring(userid, 0, length-2)}**" />
						   ${substruserid}
						</div>
					</div>
					<div class="col-12 my-4 px-3">
						<div class="col-4 font-20">비밀번호</div>
						<div class="col-8 font-20">
							<c:set var="userpw" value="${result.userpw}"/>
						   <c:set var="length" value="${fn:length(userpw)}"/>
						   <c:set var="substruserpw" value="${fn:substring(userpw, 0, length-2)}**" />
						   ${substruserpw}
						</div>
					</div>
					<div class="font-14 mb-3" id="">* 위의 힌트로도 아이디/비밀번호를 찾으실수 없다면 관리자에게 문의하십시오.</div>
					<div class="form-group">
						<div class="input-group">
							<button type="button" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;" onclick="javascript:location.href='/member/login.do'">로그인하기</button>
							<button type="button" class="mr-2 btn btn-warning btn-lg btn-block" style="height:60px;" onclick="javascript:location.href='/'">메인페이지로이동</button>
						</div>					
					</div>
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
 	$("#login").validator();	//폼발리데이터
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