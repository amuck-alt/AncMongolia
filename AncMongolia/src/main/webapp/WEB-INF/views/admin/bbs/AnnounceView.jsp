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
          
		  <form action="/manager/announce/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${result.idx }"/>
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <input type="hidden" name="section" value="${ result.section }"/>
          <input type="hidden" name="thumb" value="${ result.thumbnail }"/>
          <input type="file" name="thumbnail" id="thumbnail" style="display:none;">
          <div class="row">
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="m_edulv">Section / Visit</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="section" id="section">
                          <option value="notice" <c:if test="${result.section eq 'notice'}">selected</c:if>>Мэдэгдэл</option>
                          <option value="event" <c:if test="${result.section eq 'event'}">selected</c:if>>Үйл явдал</option>
                          <option value="special" <c:if test="${result.section eq 'special'}">selected</c:if>>Тусгай лекц</option>
                          <option value="etc" <c:if test="${result.section eq 'etc'}">selected</c:if>>Гэх мэт</option>
                        </select>
                        <div class="input-group-append">
                          <input type="text" class="form-control" value="${result.visit}" name="visit" id="visit">
                        </div>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
<%--                     <div class="form-group" style="max-width:400px;">
               			<label for="userid" class="control-label">썸네일 (가로 : 500px, 세로 : anyway)</label>
               			<div>
               				<img src="${result.thumbnail}" class="wrapper-tn" id="wrapper-tn" width="100%">
               			</div>
               			<div class="my-2 mb-3 text-center">
               				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
               				<button type="button" class="btn btn-primary" id="upload-tn">업로드</button>
               				<button type="button" class="btn btn-danger" id="init-tn" onclick="deleteImageAction()">지우기</button>
               			</div>
               		</div> --%> 
                    <div class="form-group">
                      <label for="title" class="control-label">Title</label>
                      <input type="text" class="form-control" value="${result.title }" name="title" id="title" placeholder="제목" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">Description</label>
                      <textarea class="form-control" name="description" id="description" rows="5">${result.description}</textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">Content</label>
	                  	<textarea class="form-control" name="content" id="editor">${result.content}</textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Save</button>
	                <button type="button" onclick="deleteContent('${result.idx}')" class="btn btn-danger mr-2">Delete</button>
                    <a href="../announce.do" class="btn btn-light">Cancel</a>
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
 	
 	//썸네일업로드 스크립트	
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
				alert("You can upload only image file.");
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
 	
 	function deleteContent(idx){
		if(confirm("Are you sure you want to delete it?") == true){
			location.href="/manager/announce/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}
 	

</script>

</body>  
</html>


  


