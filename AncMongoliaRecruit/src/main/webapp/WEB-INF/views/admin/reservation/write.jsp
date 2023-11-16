<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>

<script type="text/javascript" src="/admin/js/anc.js"></script>

<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">          
		  <form action="/manager/reservation/insert.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <input type="hidden" name="cons_status" value="상담예약">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card" style="background-color:#CCFFFF;">
                <div class="card-body">
                    <div class="form-group">
                      <label for="title" class="control-label">이름 / 나이</label>
                      <div class="input-group">
                      	<input type="text" class="form-control mr-2" name="cus_name" id="cus_name" placeholder="이름" data-error="이름을 입력하세요." required>
                      	<input type="text" class="form-control" name="cus_age" id="cus_age" placeholder="나이" data-error="나이를 입력하세요." required>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">연락처</label>
                      <input type="text" class="form-control" name="cus_mobile" id="cus_mobile" placeholder="연락처" data-error="연락처을 입력하세요." oninput="autoHyphen(this)" maxlength="13" required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담예약일자 / 상담시간</label>
                      	<div class="input-group">
                      		<input type="text" class="form-control col-8 mr-2" name="cons_day" maxlength="10" id="cons_day" placeholder="YYYY-MM-DD" data-error="상담예약일자를 입력하세요." onKeyup="inputYMDNumber(this)" required>
                      		<input type="text" class="form-control col-4" name="cons_time" id="cons_time" maxlength="5" placeholder="HH:MM" data-error="상담시간을 입력하세요." onKeyup="inputTimeColon(this);" required>
                      	</div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담접수자</label>
                      <input type="text" class="form-control" value="" name="rec_manager" id="rec_manager" placeholder="상담접수자" data-error="상담접수자를 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">담당팀</label>
                      <input type="text" class="form-control" value="" name="cons_team" id="cons_team" placeholder="담당팀" data-error="담당팀을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>        
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="/manager/reservation/list.do" class="btn btn-light">취소</a>
                </div>
              </div>
            </div>
          </div>	
		</form>          
        </div>
        <!-- content-wrapper ends -->
		<%@ include file="../include/footer.jsp" %>
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

<script src="/editor/build/ckeditor.js"></script>
<script src="/editor/src/cke-config.js"></script>

<script> 

 	$(document).ready(function() {
	 	$("#form").validator();	//폼발리데이터
	}); 	

</script>

<script>
	
	$("#upload-tn").click(function (e) {
  		e.preventDefault();
 		$("#thumbnail").click();
 	});	
	
	$(document).ready(function(){
		$("#thumbnail").on("change", handleImageFileSelect);
	});
	
	function handleImageFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#wrapper-tn").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction(){
		$("#wrapper-tn").attr("src", "/admin/images/no-image.png");
		$("#thumbnail").val("");
	}
	
</script>

<script>
 	
 	$(document).ready(function() {
    	$('#notice').DataTable({
    		"order": [[0, 'desc']],
    		"ordering":false
    	});
	});
 	
 	
 </script>

</body>  
</html>


  


