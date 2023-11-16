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
                      	<input type="text" class="form-control mr-2" value="${result.cus_name }" name="cus_name" id="cus_name" placeholder="이름" data-error="이름을 입력하세요." disabled>
                      	<input type="text" class="form-control" value="${result.cus_age }" name="cus_age" id="cus_age" placeholder="나이" data-error="나이를 입력하세요." disabled>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">연락처</label>
                      <input type="text" class="form-control" value="${result.cus_mobile}" name="cus_mobile" id="cus_mobile" placeholder="연락처" data-error="연락처을 입력하세요." oninput="autoHyphen(this)" maxlength="13" disabled>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담예약일자 / 상담시간</label>
                      	<div class="input-group">
                      		<input type="text" class="form-control col-8 mr-2" value="${result.cons_day }" name="cons_day" maxlength="10" id="cons_day" placeholder="YYYY-MM-DD" data-error="상담예약일자를 입력하세요." onKeyup="inputYMDNumber(this)" disabled>
                      		<input type="text" class="form-control col-4" value="${result.cons_time }" name="cons_time" id="cons_time" maxlength="5" placeholder="HH:MM" data-error="상담시간을 입력하세요." onKeyup="inputTimeColon(this);" disabled>
                      	</div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담접수자</label>
                      <input type="text" class="form-control" value="${result.rec_manager}" name="rec_manager" id="rec_manager" placeholder="상담접수자" data-error="상담접수자를 입력하세요." disabled>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담담당팀</label>
                      <input type="text" class="form-control" value="" name="cons_team" id="cons_team" placeholder="담당팀" data-error="담당팀을 입력하세요." disabled>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담담당자</label>
                      <input type="text" class="form-control" value="" name="cons_manager" id="cons_manager" placeholder="상담담당자" data-error="상담담당자를 입력하세요." disabled>
                      <div class="help-block with-errors text-danger"></div>
                    </div>          
                </div>
              </div>
            </div>
            
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card" style="background-color:#CCFFFF;">
                <div class="card-body">
                  <div class="ml-1 mb-2" style="color:blue;"><b>@ 상담이력</b></div>
                  <div class="table-responsive">
                    <table id="notice" class="table table-striped table-bordered table-sm">
                      <thead>
                        <tr>
                            <th width="15%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#fff;">구분</th>
                            <th width="*%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#fff;">메모</th>
                            <th width="12%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#fff;">작성자</th>
                            <th width="15%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#fff;">작성일</th>
                        </tr>
                      </thead>
                      <tbody>

                      </tbody>
                    </table>
                    
                    <div class="mt-5 ml-1 mb-2" style="color:blue;"><b>@ 상담이력등록</b></div>
	                    <div class="form-group">
	                      	<div class="input-group">
	                      		<select class="form-control col-2 mr-2" data-error="구분을 입력하세요." onchange="javascript:editInformation(this.value)" required>
	                      			<option value="">구분</option>
	                      			<option value="01">상담일자변경</option>
	                      			<option value="02">담당자변경</option>
	                      			<option value="03">메모</option>
	                      			<option value="99">상담종료</option>
	                      		</select>
	                      		<input type="text" class="form-control col-10" name="cons_day" maxlength="10" id="cons_day" placeholder="메모" data-error="메모를 입력하세요." required>
	                      	</div>
	                      <div class="help-block with-errors text-danger"></div>
	                    </div>                    
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="/manager/reservation/list.do" class="btn btn-light">취소</a>
                    
                  </div>
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
	
	function editInformation(obj){
		if(obj == "01"){
			$("#cons_day").attr("disabled", false);
			$("#cons_time").attr("disabled", false);
			$("#cons_team").attr("disabled", true);
			$("#cons_manager").attr("disabled", true);
		}else if(obj == "02"){
			$("#cons_team").attr("disabled", false);
			$("#cons_manager").attr("disabled", false);
			$("#cons_day").attr("disabled", true);
			$("#cons_time").attr("disabled", true);
		}else{
			$("#cons_day").attr("disabled", true);
			$("#cons_time").attr("disabled", true);
			$("#cons_team").attr("disabled", true);
			$("#cons_manager").attr("disabled", true);
		}
	}
	
</script>


</body>  
</html>


  


