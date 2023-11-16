<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form action="/manager/blog/WeAreUpdate.do" name="blog" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${ result.idx }"/>
          <input type="hidden" name="section" value="${ result.section }"/>
          <input type="hidden" name="thumb" value="${ result.thumbnail }"/>
          <div class="row">
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="row">
                    	<div class="col-sm-4">
                    		<div class="form-group">
                    			<label for="userid" class="control-label">썸네일 (가로 : 200px, 세로 : 300px)</label>
                    			<div>
                    				<img src="/docs/blog/${ result.thumbnail }" class="wrapper-tn" id="wrapper-tn" width="300px">
                    			</div>
                    			<div class="my-2 mb-3 text-center">
                    				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
                    				<button type="button" class="btn btn-primary" id="upload-tn">업로드</button>
                    				<button type="button" class="btn btn-danger" id="init-tn" onclick="deleteImageAction();">지우기</button>
                    			</div>
                    		</div>
                    	</div>
	                    <div class="col-sm-8">
	                    	<div class="form-group">
		                        <label for="m_edulv">공개설정/인기글설정 (인기글설정시 : 일기글로 노출됩니다.)</label>
		                        <div class="input-group">	                        
			                        <select class="form-control mr-2" name="openyn" id="openyn">
			                          <option value="Y" <c:if test="${result.openyn eq 'Y'}">selected</c:if>>예</option>
			                          <option value="N" <c:if test="${result.openyn eq 'N'}">selected</c:if>>아니오</option>
			                        </select>
			                        <select class="form-control mr-2" name="topblog" id="topblog">
			                          <option value="Y" <c:if test="${result.topblog eq 'Y'}">selected</c:if>>인기글</option>
			                          <option value="N" <c:if test="${result.topblog eq 'N'}">selected</c:if>>일반글</option>
			                        </select>
			                        <select class="form-control mr-2 input-group-append" name="regid" id="regid">
			                          <option value="park">박선영</option>
			                          <option value="kim">김선영</option>
			                          <option value="lee">이선영</option>
			                        </select>
		                        </div>
	                        </div>
                        	<div class="form-group">
                      			<label for="userid" class="control-label">Tag</label>
		                      	<input type="text" value="${ result.taglib }" class="form-control" name="taglib" id="taglib" placeholder="태그 : (예) 대한항공채용, 승무원합격비결" data-error="태그를 입력하세요." required>
		                        <div class="help-block with-errors text-danger"></div>
                    		</div>
	                        <div class="form-group">
			                      <label for="userid" class="control-label">Desription</label>
			                      <textarea class="form-control" name="description" id="description" rows="2">${ result.description }</textarea>
			                      <div class="help-block with-errors text-danger"></div>
			                </div>
                    	</div>                    	
                    </div><!-- end row -->
                    <div class="row">
	                  <div class="col-12 form-group">
	                      <label for="editor" class="control-label">제목</label>
		                  	<input type="text" value="${ result.title }" class="form-control" name="title" id="title" required>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div>
	                  <div class="col-12 form-group">
	                      <label for="editor" class="control-label">내용 <i class="mdi mdi-at"></i></label>
		                  	<textarea class="form-control" name="content" id="editor" rows="10">${ result.content }</textarea>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div>
	                  <div class="col-12 form-group">  
						<button type="submit" class="btn btn-primary mr-2" id="blogSave">저장</button>
						<button type="button" class="btn btn-danger mr-2" onclick="delPost(${ result.idx });">삭제</button>
						<a href="/manager/blog/WeAre.do" class="btn btn-light">취소</a>
	                  </div>
	                </div><!-- end row -->
				</div><!-- end card body -->
              </div><!-- end card -->
            </div><!-- end grid -->
          </div><!-- end row -->		
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
<script src="/editor/config.js"></script>
<script> 
 
 	$(document).ready(function() {
	 	$("#blog").validator();	//폼발리데이터
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
	
	function delPost(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href = "/manager/blog/WeAreDelete.do?idx="+idx;
		}else{
			return;
		}		
	}
	
</script>	

</body>  
</html>


  


