<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>

<script type="text/javascript">
	
function inputYMDNumber(obj) {
	if(event.keyCode != 8) {
		if(obj.value.replace(/[0-9 \-]/g, "").length == 0) {
			let number = obj.value.replace(/[^0-9]/g,"");
			let ymd = "";
			if(number.length < 4) {
				return number;
			} else if(number.length < 6){
				ymd += number.substr(0, 4);
				ymd += "-";
				ymd += number.substr(4);
			} else {
				ymd += number.substr(0, 4);
				ymd += "-";
				ymd += number.substr(4, 2);
				ymd += "-";
				ymd += number.substr(6);
			}
			obj.value = ymd;
		} else {
			alert("숫자 이외의 값은 입력하실 수 없습니다.");
			obj.value = obj.value.replace(/[^0-9 ^\-]/g,"");
			return false;
		}
	} else {
		return false;
	}
}

</script>

<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form action="/manager/ehr/insert.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <div class="row">
            <div class="col-md-7 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="section">채용기간 / 지원서첨부여부</label>
                      <div class="input-group">
                      	<!-- span class="mr-2 mt-2">채용시작일자</span -->
                        <input type="text" class="form-control mr-2" value="" name="stday" id="stday" placeholder="YYYY-MM-DD" onKeyup="inputYMDNumber(this)" maxlength="10" data-error="시작일을 입력하세요" required>
                        <select class="form-control" name="sttime" id="sttime">
                        	<option value="01">01시</option>
                        	<option value="02">02시</option>
                        	<option value="03">03시</option>
                        	<option value="04">04시</option>
                        	<option value="05">05시</option>
                        	<option value="06">06시</option>
                        	<option value="07">07시</option>
                        	<option value="08">08시</option>
                        	<option value="09" selected>09시</option>
                        	<option value="10">10시</option>
                        	<option value="11">11시</option>
                        	<option value="12">12시</option>
                        	<option value="13">13시</option>
                        	<option value="14">14시</option>
                        	<option value="15">15시</option>
                        	<option value="16">16시</option>
                        	<option value="17">17시</option>
                        	<option value="18">18시</option>
                        	<option value="19">19시</option>
                        	<option value="20">20시</option>
                        	<option value="21">21시</option>
                        	<option value="22">22시</option>
                        	<option value="23">23시</option>
                        	<option value="24">24시</option>
                        </select>
                        <span class="mx-3 mt-2">~</span>
                        <!-- span class="mr-2 mt-2">채용종료일자</span -->
                        <input type="text" class="form-control mr-2" value="" name="endday" id="endday" onKeyup="inputYMDNumber(this)" maxlength="10" placeholder="YYYY-MM-DD" data-error="종료일을 입력하세요" required>
                        <select class="form-control" name="endtime" id="endtime">
                        	<option value="01">01시</option>
                        	<option value="02">02시</option>
                        	<option value="03">03시</option>
                        	<option value="04">04시</option>
                        	<option value="05">05시</option>
                        	<option value="06">06시</option>
                        	<option value="07">07시</option>
                        	<option value="08">08시</option>
                        	<option value="09">09시</option>
                        	<option value="10">10시</option>
                        	<option value="11">11시</option>
                        	<option value="12">12시</option>
                        	<option value="13">13시</option>
                        	<option value="14">14시</option>
                        	<option value="15">15시</option>
                        	<option value="16">16시</option>
                        	<option value="17">17시</option>
                        	<option value="18" selected>18시</option>
                        	<option value="19">19시</option>
                        	<option value="20">20시</option>
                        	<option value="21">21시</option>
                        	<option value="22">22시</option>
                        	<option value="23">23시</option>
                        	<option value="24">24시</option>
                        </select>
                        <select class="form-control ml-2" name="resumeyn" id="resumeyn">
                        	<option value="Y">지원서첨부있음</option>
                        	<option value="N" selected>지원서첨부없음</option>
                        </select>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div> 
                    <div class="form-group">
               			<label for="userid" class="control-label">썸네일 (가로 : 900px, 세로 : 400px)</label>
               			<div>
               				<img src="/images/twayair.png" class="wrapper-tn" id="wrapper-tn" width="100%">
               			</div>
               			<div class="my-2 mb-3 text-center">
               				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
               				<button type="button" class="btn btn-primary" id="upload-tn">업로드</button>
               				<button type="button" class="btn btn-danger" id="init-tn" onclick="deleteImageAction()">지우기</button>
               			</div>
               		</div>
                    <div class="form-group">
                      <label for="title" class="control-label">제목</label>
                      <input type="text" class="form-control" value="" name="title" id="title" placeholder="제목" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">설명</label>
                      <textarea class="form-control" name="description" id="description" rows="5"></textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">지원서류양식</label>
                      <input type="file" class="form-control" name="resume" id="resume" placeholder="지원서양식첨부" data-error="지원서양식을 첨부하세요.">
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">내용</label>
	                  	<textarea class="form-control" name="content" id="editor" data-error="내용을 입력하세요." required></textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="javascript:history.back();" class="btn btn-light">취소</a>
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
		$("#wrapper-tn").attr("src", "/images/twayair.png");
		$("#thumbnail").val("");
	}
	
</script>

</body>  
</html>


  


