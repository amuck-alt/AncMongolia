<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>크루코리아-관리자페이지</title>

<link rel="stylesheet" href="/admin/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="/admin/vendors/base/vendor.bundle.base.css">
<link rel="stylesheet" href="/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<link rel="stylesheet" href="/admin/css/style.css">
<link rel="stylesheet" href="/admin/css/custom.css">
<link rel="stylesheet" href="/admin/vendors/hover/hover.css">
<script src="/admin/vendors/base/vendor.bundle.base.js"></script>
<script src="/admin/vendors/chart.js/Chart.min.js"></script>
<script src="/admin/vendors/datatables.net/jquery.dataTables.js"></script>
<script src="/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
<script src="/admin/js/off-canvas.js"></script>
<script src="/admin/js/hoverable-collapse.js"></script>
<script src="/admin/js/template.js"></script>
<script src="/admin/js/dashboard.js"></script>
<script src="/admin/js/data-table.js"></script>
<script src="/admin/js/jquery.dataTables.js"></script>
<script src="/admin/js/dataTables.bootstrap4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>

</head>
<body style="background:url('/admin/images/crewkorea-bg.jpg'); background-color: gray; background-size: cover;">
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper" style="background-color: ;">
      <div class="content-wrapper d-flex align-items-center auth px-0" style="background:rgba(255, 255, 255, 0.0);">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="https://www.crew-factory.com/img/logo.png">
                <h5 class="">크루코리아 취업정보사이트</h5>
              </div>
              <h6 class="font-weight-light text-danger" id="login-msg"></h6>
              <form class="pt-3" method="POST" action="/manager/login.do" data-toggle="validator" id="login">
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
