<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<%@ include file = "./include/header.jsp" %>
<%
	String conn_auth = "disabled";
	String domain = request.getServerName();
	if(domain.indexOf("crew-factory.com") > -1 || domain.indexOf("localhost") > -1 ){
		conn_auth = "";
	}else{
		conn_auth = "";
	}
%>
<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0" style="background:url('/img/admin-login-bg.jpg') no-repeat center; background-size:100% 100%;">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="/img/anc-mongolia.png">
              </div>
              <h6 class="font-weight-light text-danger" id="login-msg"></h6>
              <form class="pt-3" method="POST" action="/manager/login.do" data-toggle="validator" id="login">
                <input type="hidden" name="login-value" id="login-value" value="${ msg }" />
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="userid" name="userid" data-error="아이디를 입력하세요" placeholder="Username" <%=conn_auth%> required>
                  <div class="help-block with-errors text-danger"></div>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="userpw" name="userpw" data-error="비밀번호를 입력하세요" placeholder="Password" <%=conn_auth%> required>
                  <div class="help-block with-errors text-danger"></div>
                </div>
                <div class="mt-3">
                  <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">LOG IN</button>
                </div>
                <div class="mt-4 my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <!-- label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      Keep me signed in
                    </label-->
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- endinject -->
</body>

<script> 
 
 	$(document).ready(function() {
	 	$("#login").validator();	//폼발리데이터
	});
 	
 	$(document).ready(function() {
	 	var data = $("#login-value").val();
	 	
 		if(data == "false"){
 			//alert("아이디&비밀번호가 틀립니다.");
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
