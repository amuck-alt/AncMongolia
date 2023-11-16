<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-특강신청</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


	<div class="container-fluid">
	<div class="row sub-row site-map-row mt-5 mb-4">
		<div class="col-12 ">
		  <div class="col-12 mb-1">
		    <h1>특강신청</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		  <div class="col-12 font-20 my-3">합격생간담회</div>
		</div>
	</div>
</div>





<div class="container-fluid my-5">
	<div class="row sub-row">
		<div class="col-12 text-center">
			<img src="/img/201231_01.jpg" class="mobile-100-percent">
			
			
		</div>
	</div>
</div>
<div class="container-fluid my-5">
	<div class="row sub-row">
		<div class="col-12 text-center">
			<img src="/img/201231_02.jpg" class="mobile-100-percent">
			
			
		</div>
	</div>
</div>
<div class="container-fluid my-5">
	<div class="row sub-row">
		<div class="col-12 text-center">
			<img src="/img/201231_03.jpg" class="mobile-100-percent">
			
			
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sub-row">
		<div class="col-12">
			<form role="form" name="specclass" method="post" action="/counsel/specclassok.do" data-toggle="validator">
			<input type="hidden" name="result" id="result" value="${ param.result }">
			<input type="hidden" name="phone" id="phone" value="">
			<input type="hidden" name="office" value="gangnam">
			<input type="hidden" name="stat" value="신규">
			<input type="hidden" name="gubun" value="특강신청">
			<input type="hidden" name="path" value="specclass.do">
			<input type="hidden" name="domain" value="<%= request.getServerName() %>">
			<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
			<input type="hidden" name="reurl" value="specclass.do"/>
			<div class="col-12 my-3 line-1"></div>
			<div class="col-12 row">
				<div class="col-md-6 mb-2">
					<div class="my-2 font-bold font-18">개인정보입력</div>
						<div class="card col-12 bg-light-gray">
						<div class="card-body">
							<div class="form-group">
		                      <label for="name" class="font-bold">이름/나이</label>
		                      <div class="input-group">
		                      <input type="text" class="form-control" name="name" id="name" maxlength="20" placeholder="이름" data-error="이름을 정확히 입력하세요" required>
		                      <input type="text" class="form-control input-group-append ml-2" name="age" id="age" placeholder="나이" maxlength="4" data-error="나이를 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
					        <div class="form-group">
		                      <label for="input-gender" class="font-bold">연락처</label>
		                      <div class="input-group">
		                        <select class="form-control mr-2" id="mobile-1" name="mobile-1" style="height:3.75rem;">
		                          <option value="010">010</option>
		                        </select>
			                    <input type="text" class="form-control input-group-append mr-2" name="mobile-2" id="mobile-2" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                    <input type="text" class="form-control input-group-append" name="mobile-3" id="mobile-3" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                  </div>
			                  <div class="help-block with-errors text-danger"></div>
			                </div>
			                <div class="">
		                    	<div class="custom-control custom-checkbox">
			                    	<input type="checkbox" name="agree" value="yes" id="agree" class="custom-control-input" checked>
			                        <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
			                	</div>
		                    </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 mb-2">
					<div class="my-2 font-bold font-18">신청내용</div>
					<div class="col-12 card">
						<div class="card-body">
							<div class="form-group">
								<label for="email" class="font-bold">이메일</label>
								<input type="email" class="form-control" name="email" id="email" maxlength="20" placeholder="이메일" data-error="이메일을 정확히 입력하세요" required>
								<div class="help-block with-errors text-danger"></div>
							</div>							
							<div class="form-group">
		               	<label for="memo" class="font-bold">신청내용</label>
		               	<textarea class="form-control" name="memo" id="memo" placeholder="신청할 특강에 대한 제목을 입력해주세요. ex) 합격생 간담회" rows="2"></textarea>
		                  <div class="help-block with-errors text-danger"></div>
		               </div>
               	</div>
               </div>
				</div>
				<div class="col-md-12 my-3">
				<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:3.75rem">특강신청</button>
				</div>
			</div>
			</form>
		</div>
	</div> 
</div>

<div class="containter-fluid mobile-hidden" style="margin-top:100px;"></div>

<script>

$(document).ready(function() {
 	$("#counsel").validator();	//폼발리데이터
});

$(document).ready(function() {
 	var data = $("#result").val();
 	if(data == "ok"){
 		alert("특강신청이 완료되었습니다.");
 		location.href="/";
 	}
});

$(document).on('click', '#gogo', function(){
	var mobile = $("#mobile-1").val() + $("#mobile-2").val() + $("#mobile-3").val();
	$("#phone").val(mobile);
	$("#specclass").submit();
});

</script>


<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>