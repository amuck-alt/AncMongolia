<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>
<!-- <style>
	.ck.ck-editor{
		max-width: 100%;
	}
	.ck-editor__editable{
		min-height: 800px;
	}
</style> -->
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form action="/manager/intv/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${result.idx}">
          <input type="hidden" name="recruitidx" value="${result.recruitidx}">
          <div class="row">
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card" style="background-color:#D2F8F7;">
                <div class="card-body">
                    <div class="form-group">
                      <label for="title" class="control-label">면접구분/면접제한인원</label>
                      <div class="input-group">	
                     	<select class="col-2 form-control mr-2" name="itvcode" required>
	                      	<option value="1차" <c:if test="${result.itvcode eq '1차' }">selected</c:if>>1차</option>
	                    	<option value="2차" <c:if test="${result.itvcode eq '2차' }">selected</c:if>>2차</option>
	                  	</select>
	                  	<input type="number" class="col-2 form-control mr-2" value="${result.limitcount }" name="limitcount" id="limitcount" placeholder="면접인원" data-error="면접인원을 입력하세요." required>
	                  </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">면접일자/시간/장소</label>
                      <div class="input-group">
	                      <input type="text" class="col-2 form-control mr-2" value="${result.itvday }" name="itvday" id="itvday" placeholder="YYYY-MM-DD" data-error="면접일자를 입력하세요." required>
	                      <select class="col-2 form-control mr-2" name="itvtime" required>
	                      	<option value="09" <c:if test="${result.itvtime eq '09' }">selected</c:if>>09시</option>
	                      	<option value="10" <c:if test="${result.itvtime eq '10' }">selected</c:if>>10시</option>
	                      	<option value="11" <c:if test="${result.itvtime eq '11' }">selected</c:if>>11시</option>
	                      	<option value="12" <c:if test="${result.itvtime eq '12' }">selected</c:if>>12시</option>
	                      	<option value="13" <c:if test="${result.itvtime eq '13' }">selected</c:if>>13시</option>
	                      	<option value="14" <c:if test="${result.itvtime eq '14' }">selected</c:if>>14시</option>
	                      	<option value="15" <c:if test="${result.itvtime eq '15' }">selected</c:if>>15시</option>
	                      	<option value="16" <c:if test="${result.itvtime eq '16' }">selected</c:if>>16시</option>
	                      	<option value="17" <c:if test="${result.itvtime eq '17' }">selected</c:if>>17시</option>
	                      	<option value="18" <c:if test="${result.itvtime eq '18' }">selected</c:if>>18시</option>
	                      	<option value="19" <c:if test="${result.itvtime eq '19' }">selected</c:if>>19시</option>
	                      	<option value="20" <c:if test="${result.itvtime eq '20' }">selected</c:if>>20시</option>
	                      </select>
	                      <span class="mx-2"> ~ </span>
	                      <select class="col-2 form-control mr-2" name="itvtimeend" required>
	                      	<option value="09" <c:if test="${result.itvtimeend eq '09' }">selected</c:if>>09시</option>
	                      	<option value="10" <c:if test="${result.itvtimeend eq '10' }">selected</c:if>>10시</option>
	                      	<option value="11" <c:if test="${result.itvtimeend eq '11' }">selected</c:if>>11시</option>
	                      	<option value="12" <c:if test="${result.itvtimeend eq '12' }">selected</c:if>>12시</option>
	                      	<option value="13" <c:if test="${result.itvtimeend eq '13' }">selected</c:if>>13시</option>
	                      	<option value="14" <c:if test="${result.itvtimeend eq '14' }">selected</c:if>>14시</option>
	                      	<option value="15" <c:if test="${result.itvtimeend eq '15' }">selected</c:if>>15시</option>
	                      	<option value="16" <c:if test="${result.itvtimeend eq '16' }">selected</c:if>>16시</option>
	                      	<option value="17" <c:if test="${result.itvtimeend eq '17' }">selected</c:if>>17시</option>
	                      	<option value="18" <c:if test="${result.itvtimeend eq '18' }">selected</c:if>>18시</option>
	                      	<option value="19" <c:if test="${result.itvtimeend eq '19' }">selected</c:if>>19시</option>
	                      	<option value="20" <c:if test="${result.itvtimeend eq '20' }">selected</c:if>>20시</option>
	                      </select>
	                      <input type="text" class="form-control" value="${result.itvlocation }" name="itvlocation" id="itvlocation" placeholder="면접장소" data-error="면접장소를 입력하세요." required>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <!-- div class="form-group">
                      <label for="title" class="control-label">면접인원제한/담당자/담당자연락처</label>
                      <div class="input-group">
	                      <input type="text" class="col-2 form-control mr-2" value="" name="title" id="title" placeholder="담당자" data-error="제목을 입력하세요." required>
	                      <input type="text" class="form-control" value="" name="title" id="title" placeholder="담당자연락처" data-error="면접장소를 입력하세요." required>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div-->
                    <div class="form-group">
                      <label for="title" class="control-label">면접자에게 전달할 내용</label>
                      <div class="input-group">
	                      <textarea class="form-control" name="mngmemo" id="mngmemo" rows="4">${result.mngmemo }</textarea>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <button type="button" class="btn btn-danger mr-2" onclick="javascript:location.href='/manager/intv/delete.do?idx=${result.idx}&catenum=${result.recruitidx }'">삭제</button>
                    <a href="/manager/intv/list.do?catenum=${result.recruitidx }" class="btn btn-light">취소</a>
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

</body>  
</html>


  


