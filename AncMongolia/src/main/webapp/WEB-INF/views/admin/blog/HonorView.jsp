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
		  <form action="/manager/blog/HonorUpdate.do" name="blog" method="post" data-toggle="validator" enctype="multipart/form-data">          
			<input type="hidden" name="idx" value="${result.idx}">
			<input type="hidden" name="thumb" value="${result.thumbnail}">
			<input type="hidden" name="regteam" value="${sessionScope.ManagerInfo.team}">
			<input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
			<input type="hidden" name="regip" value="<%=request.getRemoteAddr()%>">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="row">
                    	<div class="col-md-12">
                    		<div class="form-group">
                    			<label for="userid" class="control-label">썸네일 (가로 : 400px, 세로 : 300px)</label>
                    			<div>
                    				<img src="${result.thumbnail}" class="wrapper-tn" id="wrapper-tn" width="100%">
                    			</div>
                    			<div class="my-2 mb-3 text-center">
                    				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
                    				<button type="button" class="btn btn-primary" id="upload-tn">업로드</button>
                    				<button type="button" class="btn btn-danger" id="init-tn" onclick="deleteImageAction()">지우기</button>
                    			</div>
                    		</div>
                    	</div>
                    </div><!-- end row -->
                </div>
              </div>
            </div>        
            <div class="col-md-4 grid-margin stretch-card">  
              <div class="card">
                <div class="card-body">
                    <div class="row">
	                  <div class="col-12">
	                    	<div class="form-group">
                        	<label for="m_edulv">분류설정</label>	                        
	                        <div class="input-group">
	                        	<select class="form-control mr-2" name="regyear" id="regyear">
	                          		<option value="2020" <c:if test="${result.regyear eq '2020'}">selected</c:if>>2020년</option>
	                          		<option value="2019" <c:if test="${result.regyear eq '2019'}">selected</c:if>>2019년</option>
	                          		<option value="2018" <c:if test="${result.regyear eq '2018'}">selected</c:if>>2018년</option>
	                          		<option value="2017" <c:if test="${result.regyear eq '2017'}">selected</c:if>>2017년</option>
	                          		<option value="2016" <c:if test="${result.regyear eq '2016'}">selected</c:if>>2016년</option>
	                          		<option value="2015" <c:if test="${result.regyear eq '2015'}">selected</c:if>>2015년</option>
	                          		<option value="2014" <c:if test="${result.regyear eq '2014'}">selected</c:if>>2014년</option>
	                          		<option value="2013" <c:if test="${result.regyear eq '2013'}">selected</c:if>>2013년</option>
	                          		<option value="2012" <c:if test="${result.regyear eq '2012'}">selected</c:if>>2012년</option>
	                        	</select>
	                        	<select class="form-control mr-2" name="section" id="section">
	                          		<option value="college" <c:if test="${result.section eq 'college'}">selected</c:if>>2년제 대학</option>
	                          		<option value="university" <c:if test="${result.section eq 'university'}">selected</c:if>>4년제 대학교</option>
	                        	</select>
<%-- 	                        	<select name="code" id="code" onchange="changeVal(this);" class="form-control">
		                     		<option value="" <c:if test="${result.code eq ''}">selected</c:if>>선택</option>
		                     		<option value="인하공업전문대학" <c:if test="${result.code eq '인하공업전문대학'}">selected</c:if>>인하공업전문대학</option>
		                     		<option value="수원과학대학교" <c:if test="${result.code eq '수원과학대학교'}">selected</c:if>>수원과학대학교</option>
		                     		<option value="연성대학교" <c:if test="${result.code eq '연성대학교'}">selected</c:if>>연성대학교</option>
		                     		<option value="부천대학교" <c:if test="${result.code eq '부천대학교'}">selected</c:if>>부천대학교</option>
		                     		<option value="한양여자대학교" <c:if test="${result.code eq '한양여자대학교'}">selected</c:if>>한양여자대학교 </option>
		                     		<option value="">----------------------</option>
		                     		<option value="한서대학교" <c:if test="${result.code eq '한서대학교'}">selected</c:if>>한서대학교</option>
		                     		<option value="극동대학교" <c:if test="${result.code eq '극동대학교'}">selected</c:if>>극동대학교</option>
		                     		<option value="광주여자대학교" <c:if test="${result.code eq '광주여자대학교'}">selected</c:if>>광주여자대학교</option>
		                     		<option value="백석대학교" <c:if test="${result.code eq '백석대학교'}">selected</c:if>>백석대학교</option>
		                     		<option value="중부대학교" <c:if test="${result.code eq '중부대학교'}">selected</c:if>>중부대학교 </option>
		                     		<option value="">----------------------</option>
		                     		<option value="기타대학교" <c:if test="${result.code eq '기타대학교'}">selected</c:if>>기타대학교</option>
		                     	</select> --%>
	                        </div>
			               </div>
	                    	<div class="form-group">
	                        <label for="m_edulv">대학교</label>	                        
	                        <input type="text" name="codenm" value="${result.codenm}" id="codenm" class="form-control" required>
	                        <div class="help-block with-errors text-danger"></div>
			                </div>
			                <div class="form-group">
	                        <label for="m_edulv">메달표시</label>	                        
	                        <select name="medalyn" class="form-control" >
	                        	<option value="Y" <c:if test="${result.medalyn eq 'Y'}">selected</c:if>>예</option>
	                        	<option value="N" <c:if test="${result.medalyn eq 'N'}">selected</c:if>>아니오</option>
	                        </select>
	                        <div class="help-block with-errors text-danger"></div>
			            	</div>
                    	</div>
                    	<div class="col-12 form-group">
	                      <label for="name" class="control-label">이름/기수</label>
		                  	<input type="text" class="form-control" name="name" id="name" value="${result.name}" placeholder="예 : 202기 박순자" required>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div>
	                  <div class="col-12 form-group">
	                      <label for="editor" class="control-label">제목</label>
		                  	<input type="text" class="form-control" name="title" id="title" value="${result.title}" required>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div>
	                  <div class="col-12 form-group">
	                      <label for="editor" class="control-label">추가입력</label>
		                  	<input type="text" class="form-control" name="description" id="description" value="${result.description}" placeholder="ex) 키: 168 내신 5등급" required>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div>
	                  <!-- <div class="col-12 form-group">
	                      <label for="editor" class="control-label">내용 <i class="mdi mdi-at"></i></label>
		                  	<textarea class="form-control" name="content" id="editor" rows="10"></textarea>
		                  <div class="help-block with-errors text-danger"></div>
	                  </div> -->
	                  <div class="col-12 form-group">  
						<button type="submit" class="btn btn-primary mr-2" id="blogSave">저장</button>
						<button type="button" class="btn btn-danger mr-2" onclick="delPost(${ result.idx });">삭제</button>
						<a href="/manager/auth/Auth.do" class="btn btn-light">취소</a>
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
	
	function changeVal(obj){
		var val = obj.value;
		$("#codenm").val(val);
		if(val == "기타대학교"){
			$("#codenm").attr('readonly', false);
		}else{
			$("#codenm").attr('readonly', true);
		}
	}
	
	function delPost(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href = "/manager/blog/HonorDelete.do?idx="+idx;
		}else{
			return;
		}		
	}
	
</script>	

</body>  
</html>


  


