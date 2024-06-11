<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>
<style>
	.filebox .upload-name { display: inline-block; height: 40px; padding: 0 10px; vertical-align: middle; border: 1px solid #dddddd; width: 78%; color: #999999; }
	.filelabel { display: inline-block; padding: 10px 20px; color: #fff; vertical-align: middle; background-color: gray; cursor: pointer; height: 40px; margin-left: 10px; }
	.filebox input[type="file"] { position: absolute; width: 0; height: 0; padding: 0; overflow: hidden; border: 0; }
</style>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form action="/manager/notice/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${result.idx }"/>
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <input type="hidden" name="section" value="${ result.section }"/>
          <input type="hidden" name="thumb" value="${ result.thumbnail }"/>
          <input type="hidden" name="filename" value="${ result.filename }"/>
          <input type="hidden" name="filepath" value="${ result.filepath }"/>
          <div class="row">
            <div class="col-md-9 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    
                    <div class="form-group">
                      <label for="title" class="control-label">제목</label>
                      <input type="text" class="form-control" value="${result.title }" name="title" id="title" placeholder="제목" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">첨부된파일</label>
                      <div class="input-group">
	                      <div class="mb-2">
	               			<span></span><a href="/data/download.do?filepath=${result.filepath}&filename=${result.filename}">${result.filename}</a>
	               		  </div>
	               	  </div>
	               	</div>
	               	<div class="form-group">
                      <label for="title" class="control-label">첨부파일수정</label>
                      <div class="filebox">					    
					    <input class="upload-name form-control" value="첨부파일" placeholder="첨부파일">
					    <label class="filelabel" for="file">파일찾기</label> 
					    <input type="file" name="file" id="file">
					  </div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">내용</label>
	                  	<textarea class="form-control" name="content" id="editor">${result.content}</textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
	                 <button type="button" onclick="deleteContent('${result.idx}')" class="btn btn-danger mr-2">삭제</button>
                    <a href="/manager/notice/list.do" class="btn btn-light">취소</a>
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
 	
	
	$("#file").on('change',function() {
		var fileName = $("#file").val();
		$(".upload-name").val(fileName);
	});
 	
 	function deleteContent(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href="/manager/notice/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}
 	

</script>

</body>  
</html>


  


