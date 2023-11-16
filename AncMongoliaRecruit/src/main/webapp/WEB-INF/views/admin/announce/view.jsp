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
          <div class="row">
            <div class="col-md-9 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="m_edulv">구분/조회수</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="section" id="section">
                          <option value="notice" <c:if test="${result.section eq 'notice'}">selected</c:if>>공지</option>
                          <option value="event" <c:if test="${result.section eq 'event'}">selected</c:if>>행사</option>
                          <option value="special" <c:if test="${result.section eq 'special'}">selected</c:if>>특강</option>
                          <option value="etc" <c:if test="${result.section eq 'etc'}">selected</c:if>>기타</option>
                        </select>
                        <div class="input-group-append">
                          <input type="text" class="form-control" value="${result.visit}" name="visit" id="visit" disabled>
                        </div>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">제목</label>
                      <input type="text" class="form-control" value="${result.title }" name="title" id="title" placeholder="제목" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">설명(Description)</label>
                      <textarea class="form-control" name="description" id="description" rows="5">${result.description}</textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">내용</label>
	                  	<textarea class="form-control" name="content" id="editor">${result.content}</textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
	                 <button type="button" onclick="deleteContent('${result.idx}')" class="btn btn-danger mr-2">삭제</button>
                    <a href="/manager/announce/list.do" class="btn btn-light">취소</a>
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
 	
 	function deleteContent(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href="/manager/announce/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}
 	

</script>

</body>  
</html>


  


