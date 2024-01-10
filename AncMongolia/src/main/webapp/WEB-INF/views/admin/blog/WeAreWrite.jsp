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
          
		  <form action="/manager/weare/insert.do" name="blog" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${ result.idx }"/>
          <input type="hidden" name="section" value="blog"/>
          <input type="hidden" name="thumb" value="${ result.thumbnail }"/>
          <input type="hidden" name="reurl" value="/manager/weare/list.do">
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="row">
                    	<div class="col-md-12">
                    		<div class="form-group">
                    			<label for="userid" class="control-label">Thumbnail (Width : 500px, Height : anyway)</label>
                    			<div>
                    				<img src="/admin/images/no-image.png" style="width:100%; height:100%; border-radius:0%;" class="wrapper-tn" id="wrapper-tn">
                    			</div>
                    			<div class="my-2 mb-3 text-center">
                    				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
                    				<button type="button" class="btn btn-primary" id="upload-tn">Upload</button>
                    				<button type="button" class="btn btn-danger" id="init-tn" onclick="deleteImageAction()">Cancel</button>
                    			</div>
                    		</div>
                    	</div>
<!--                     	<div class="col-12">
	                    	<div class="form-group">
                        <label for="m_edulv">분류설정</label>	                        
	                        <select class="form-control mr-2" name="code" id="code">
	                          <option value="ko">국내항공사</option>
	                          <option value="os">외국항공사</option>
	                        </select>
			                	</div>
			                </div> -->
	                    <div class="col-12">
	                    	<div class="form-group">
		                        <label for="m_edulv">Open</label>	                        
			                        <select class="form-control mr-2" name="openyn" id="openyn">
			                          <option value="Y" <c:if test="${result.openyn eq 'Y'}">selected</c:if>>Yes</option>
			                          <option value="N" <c:if test="${result.openyn eq 'N'}">selected</c:if>>No</option>
			                        </select>
			                </div>
			                <div class="form-group">
			                    <label for="topblog">Membership Only</label>    
			                    <select class="form-control mr-2" name="loginyn" id="loginyn">
			                       <option value="N" <c:if test="${result.loginyn eq 'N'}">selected</c:if>>Available To Everyone</option>
			                       <option value="Y" <c:if test="${result.loginyn eq 'Y'}">selected</c:if>>Membership Only</option>
			                    </select>
			                </div>
                        	<div class="form-group">
                      			<label for="taglib" class="control-label">Tag </label>
		                      	<input type="text" class="form-control" name="taglib" id="taglib" placeholder="Example : Recruit, Cabin-crew" required>
		                        <div class="help-block with-errors text-danger"></div>
                    		</div>
	                        <div class="form-group">
			                      <label for="userid" class="control-label">Description (limit 400 bytes)</label>
			                      <textarea class="form-control" name="description" id="description" rows="10"></textarea>
			                      <div class="help-block with-errors text-danger"></div>
			                </div>
                    	</div>                    	
                    </div><!-- end row -->
                </div>
              </div>
            </div>        
            <div class="col-md-8 grid-margin stretch-card">  
              <div class="card">
                <div class="card-body">
                    <div class="row">
	                  <div class="col-12 form-group">
	                      <label for="editor" class="control-label">Title</label>
		                  	<input type="text" class="form-control" name="title" id="title" required>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div>
	                  <div class="col-12 form-group">
	                      <label for="editor" class="control-label">Content </label>
		                  	<textarea class="form-control" name="content" id="editor" rows="10"></textarea>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div>
	                  <div class="col-12 form-group">  
						<button type="submit" class="btn btn-primary mr-2" id="blogSave">Save</button>
						<a href="/manager/weare/list.do" class="btn btn-light">Cancel</a>
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
<script src="/editor/src/cke-config.js"></script>

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


  


