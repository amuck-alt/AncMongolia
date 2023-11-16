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
		  <form action="/manager/ehr/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">
		  <input type="hidden" name="idx" value="${result.idx }">          
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="thumb" value="${ result.thumbnail }"/>
          <div class="row">
            <div class="col-md-7 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="section">Period</label>
                      <div class="input-group">
                      	<!-- span class="mr-2 mt-2">채용시작일자</span -->
                        <input type="text" class="form-control mr-2" value="${result.stday}" name="stday" id="stday" placeholder="YYYY-MM-DD" onKeyup="inputYMDNumber(this)" maxlength="10" data-error="시작일을 입력하세요" required>
                        <select class="form-control" name="sttime" id="sttime">
                        	<option value="01" <c:if test="${result.sttime eq '01'}">selected</c:if>>01시</option>
                        	<option value="02" <c:if test="${result.sttime eq '02'}">selected</c:if>>02시</option>
                        	<option value="03" <c:if test="${result.sttime eq '03'}">selected</c:if>>03시</option>
                        	<option value="04" <c:if test="${result.sttime eq '04'}">selected</c:if>>04시</option>
                        	<option value="05" <c:if test="${result.sttime eq '05'}">selected</c:if>>05시</option>
                        	<option value="06" <c:if test="${result.sttime eq '06'}">selected</c:if>>06시</option>
                        	<option value="07" <c:if test="${result.sttime eq '07'}">selected</c:if>>07시</option>
                        	<option value="08" <c:if test="${result.sttime eq '08'}">selected</c:if>>08시</option>
                        	<option value="09" <c:if test="${result.sttime eq '09'}">selected</c:if>>09시</option>
                        	<option value="10" <c:if test="${result.sttime eq '10'}">selected</c:if>>10시</option>
                        	<option value="11" <c:if test="${result.sttime eq '11'}">selected</c:if>>11시</option>
                        	<option value="12" <c:if test="${result.sttime eq '12'}">selected</c:if>>12시</option>
                        	<option value="13" <c:if test="${result.sttime eq '13'}">selected</c:if>>13시</option>
                        	<option value="14" <c:if test="${result.sttime eq '14'}">selected</c:if>>14시</option>
                        	<option value="15" <c:if test="${result.sttime eq '15'}">selected</c:if>>15시</option>
                        	<option value="16" <c:if test="${result.sttime eq '16'}">selected</c:if>>16시</option>
                        	<option value="17" <c:if test="${result.sttime eq '17'}">selected</c:if>>17시</option>
                        	<option value="18" <c:if test="${result.sttime eq '18'}">selected</c:if>>18시</option>
                        	<option value="19" <c:if test="${result.sttime eq '19'}">selected</c:if>>19시</option>
                        	<option value="20" <c:if test="${result.sttime eq '20'}">selected</c:if>>20시</option>
                        	<option value="21" <c:if test="${result.sttime eq '21'}">selected</c:if>>21시</option>
                        	<option value="22" <c:if test="${result.sttime eq '22'}">selected</c:if>>22시</option>
                        	<option value="23" <c:if test="${result.sttime eq '23'}">selected</c:if>>23시</option>
                        	<option value="24" <c:if test="${result.sttime eq '24'}">selected</c:if>>24시</option>
                        </select>
                        <span class="mx-3 mt-2">~</span>
                        <!-- span class="mr-2 mt-2">채용종료일자</span -->
                        <input type="text" class="form-control mr-2" value="${result.endday}" name="endday" id="endday" onKeyup="inputYMDNumber(this)" maxlength="10" placeholder="YYYY-MM-DD" data-error="종료일을 입력하세요" required>
                        <select class="form-control" name="endtime" id="endtime">
                        	<option value="01" <c:if test="${result.endtime eq '01'}">selected</c:if>>01시</option>
                        	<option value="02" <c:if test="${result.endtime eq '02'}">selected</c:if>>02시</option>
                        	<option value="03" <c:if test="${result.endtime eq '03'}">selected</c:if>>03시</option>
                        	<option value="04" <c:if test="${result.endtime eq '04'}">selected</c:if>>04시</option>
                        	<option value="05" <c:if test="${result.endtime eq '05'}">selected</c:if>>05시</option>
                        	<option value="06" <c:if test="${result.endtime eq '06'}">selected</c:if>>06시</option>
                        	<option value="07" <c:if test="${result.endtime eq '07'}">selected</c:if>>07시</option>
                        	<option value="08" <c:if test="${result.endtime eq '08'}">selected</c:if>>08시</option>
                        	<option value="09" <c:if test="${result.endtime eq '09'}">selected</c:if>>09시</option>
                        	<option value="10" <c:if test="${result.endtime eq '10'}">selected</c:if>>10시</option>
                        	<option value="11" <c:if test="${result.endtime eq '11'}">selected</c:if>>11시</option>
                        	<option value="12" <c:if test="${result.endtime eq '12'}">selected</c:if>>12시</option>
                        	<option value="13" <c:if test="${result.endtime eq '13'}">selected</c:if>>13시</option>
                        	<option value="14" <c:if test="${result.endtime eq '14'}">selected</c:if>>14시</option>
                        	<option value="15" <c:if test="${result.endtime eq '15'}">selected</c:if>>15시</option>
                        	<option value="16" <c:if test="${result.endtime eq '16'}">selected</c:if>>16시</option>
                        	<option value="17" <c:if test="${result.endtime eq '17'}">selected</c:if>>17시</option>
                        	<option value="18" <c:if test="${result.endtime eq '18'}">selected</c:if>>18시</option>
                        	<option value="19" <c:if test="${result.endtime eq '19'}">selected</c:if>>19시</option>
                        	<option value="20" <c:if test="${result.endtime eq '20'}">selected</c:if>>20시</option>
                        	<option value="21" <c:if test="${result.endtime eq '21'}">selected</c:if>>21시</option>
                        	<option value="22" <c:if test="${result.endtime eq '22'}">selected</c:if>>22시</option>
                        	<option value="23" <c:if test="${result.endtime eq '23'}">selected</c:if>>23시</option>
                        	<option value="24" <c:if test="${result.endtime eq '24'}">selected</c:if>>24시</option>
                        </select>
                        <select class="form-control ml-2" name="resumeyn" id="resumeyn">
                        	<option value="Y" <c:if test="${result.resumeyn eq 'Y'}">selected</c:if>>지원서첨부있음</option>
                        	<option value="N" <c:if test="${result.resumeyn eq 'N'}">selected</c:if>>지원서첨부없음</option>
                        </select>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div> 
                    <div class="form-group">
               			<label for="userid" class="control-label">Thumbnail (Width : 400px, Height : 400px)</label>
               			<div>
               				<img src="${result.thumbnail}" class="wrapper-tn" id="wrapper-tn" width="100%">
               			</div>
               			<div class="my-3 mb-3 text-center">
               				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
               				<button type="button" class="btn btn-primary" id="upload-tn">Upload</button>
               				<button type="button" class="btn btn-danger" id="init-tn" onclick="deleteImageAction()">Delete</button>
               			</div>
               		</div>
                    <div class="form-group">
                      <label for="title" class="control-label">Title</label>
                      <input type="text" class="form-control" value="${result.title }" name="title" id="title" placeholder="Title" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">Description</label>
                      <textarea class="form-control" name="description" id="description" rows="5">${result.description }</textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">Resume Form</label>
                      <div class="input-group">
	                      <div class="mb-2">
	               			<span>Now&nbsp;:&nbsp;</span><a href="/data/download.do?filepath=${result.filepath}&filename=${result.filename}">${result.filename}</a>
	               		  </div>
	               	  </div>
	               	  <div class="input-group">
	                      <span class="">Edit&nbsp;:&nbsp;</span><input type="file" class="form-control" name="resume" id="resume" placeholder="지원서양식첨부">
	                      <div class="help-block with-errors text-danger"></div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">Content</label>
	                  	<textarea class="form-control" name="content" id="editor" data-error="내용을 입력하세요." required>${result.content }</textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Save</button>
                    <button type="button" onclick="deleteRow('${result.idx}')" class="btn btn-danger mr-2">Delete</button>
                    <a href="/manager/recruit/list.do" class="btn btn-light">Cancel</a>
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
		$("#wrapper-tn").attr("src", "/admin/img/no-image.png");
		$("#thumbnail").val("");
	}
	
	function deleteRow(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href="/manager/recruit/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}
	
</script>

</body>  
</html>


  


