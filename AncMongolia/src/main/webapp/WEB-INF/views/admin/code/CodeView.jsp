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
          
		  <form action="/manager/code/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${result.idx}">
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                		<label for="userid" class="control-label">아이콘 (가로 : 150px, 세로 : 50px)</label>
                		<div class="input-group my-4">
                		  <div><img src="/docs/code/${result.path}" class="wrapper-tn" id="icon-img" width="150"></div>
                		  <div class="input-group-append mx-4">
                			<input type="file" name="path" id="icon" style="display:none;">
                			<button type="button" class="btn btn-primary mx-2" id="upload">업로드</button>
                			<button type="button" class="btn btn-danger" id="init" onclick="deleteImageAction()">지우기</button>
                		  </div>
                		  <div class="help-block with-errors text-danger"></div>
                		</div>
                	</div>
                	<div class="form-group">
                      <label for="title" class="control-label">항공사구분</label>
                      <div class="input-group">
                      	<select class="form-control" name="section" id="section" required>
                      		<option value="ko" <c:if test="${result.section eq 'ko'}">selected</c:if>>국내항공사</option>
                      		<option value="os" <c:if test="${result.section eq 'os'}">selected</c:if>>외국항공사</option>
                      	</select>                      	
                      </div>	
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">코드아이디(3-4자 영문으로 입력)</label>
                      <div class="input-group">
                      	<input type="text" class="form-control" value="${result.code}" name="code" id="code" disabled>
                      	<button class="btn btn-sm btn-facebook input-group-append" type="button" onclick="checkCode()">중복확인</button>
                      </div>	
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">코드명(띄어쓰기없이 한글(영문)으로 입력)</label>
	                  	<input type="text" class="form-control" value="${result.name}" name="name" id="name" placeholder="예 : 대한항공" required>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="/manager/code.do" class="btn btn-light">취소</a>
                </div>
              </div>
            </div>
          </div>	
		
		</form>          
		<iframe src="/manager/code/blank.do" id="check" width="0" height="0" frameborder="0" scrolling="no"></iframe>
        </div>
        <!-- content-wrapper ends -->
		<%@ include file="../include/footer.jsp" %>
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

<script> 

 	$(document).ready(function() {
	 	$("#form").validator();	//폼발리데이터
	});
 	
 	$("#upload").click(function (e) {
  		e.preventDefault();
 		$("#icon").click();
 	});	
	
	$(document).ready(function(){
		$("#icon").on("change", handleImageFileSelect);
	});
	
	function handleImageFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("png.*")){
				alert("png파일만 업로드 가능합니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#icon-img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction(){
		$("#icon-img").attr("src", "/admin/images/no-icon.png");
		$("#icon").val("");
	}
	
	function checkCode(){
		var data = $("#code").val();
		if(data == ""){
			alert("코드아이디를 입력하세요.");
			return;
		}else{
			$("#check").attr('src', "/manager/code/check.do?code="+data);
		}
	}

</script>

</body>  
</html>


  


