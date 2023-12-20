<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<%@ include file = "./include/header.jsp" %>

<body style="background-color: gray; background-size: cover;">
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper" style="background-color: ;">
      <div class="content-wrapper d-flex align-items-center auth px-0" style="background:rgba(255, 255, 255, 0.0);">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="https://www.crew-factory.com/img/logo.png">
              </div>
              <h6 class="font-weight-light text-danger" id="login-msg"></h6>
              <form class="pt-3" name="login" method="POST" action="/manager/login.do" data-toggle="validator" id="login">
                <input type="hidden" name="login-value" id="login-value" value="${ msg }" />
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="userid" name="userid" data-error="아이디를 입력하세요" placeholder="Username" required>
                  <div class="help-block with-errors text-danger"></div>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="userpw" name="userpw" data-error="비밀번호를 입력하세요" placeholder="Password" required>
                  <div class="help-block with-errors text-danger"></div>
                </div>
                <div class="mt-3">
                  <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">로그인</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

<script> 
 
 	$(document).ready(function() {
	 	$("#login").validator();	//폼발리데이터
	});
 	
 	$(document).ready(function() {
	 	var data = "<c:out value='${msg}'/>";

 		if(data == "false"){
 			alert("아이디&비밀번호가 틀립니다.");
 			$("#login-msg").text("아이디&비밀번호가 틀립니다.");
 			return false;
 		}else if (data == "true"){
 			alert("로그인에 성공했습니다.");
 			location.href = "/manager/index.do";
 		}else{
 			return false;
 		}	 	
	});
 	
</script>

</html>
