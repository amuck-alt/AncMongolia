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
          
		  <form action="/manager/pro/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${result.idx}">
          <input type="hidden" name="thumb" value="${ result.thumbnail }"/>
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
						<div class="form-group" style="width:400px;">
              			<label class="col-12 mb-4">Photo (400px * 500px)</label>
              			<div class="col-12" style="background-color:#eaeaea; border-radius:10px;">
              				<div>
                   				<c:choose>
	                            	<c:when test="${result.thumbnail eq ''}">
	                            		<img src="/img/ex-pro-img.png" style="width:100%; height:100%; border-radius:0%;" class="wrapper-tn" id="wrapper-tn">
	                            	</c:when>
	                            	<c:otherwise>
	                            		<img src="${result.thumbnail}" style="width:100%; height:100%; border-radius:0%;" class="wrapper-tn" id="wrapper-tn">
	                            	</c:otherwise>                            	
	                           	</c:choose>
	                        </div>
              			</div>
              			<label class="col-12 my-2">Register as a PNG file with a transparent background..</label>
              			<div class="my-2">
              				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
              				<button type="button" class="btn btn-primary" id="upload">Upload</button>
              				<button type="button" class="btn btn-danger" id="deleter" onclick="deleteImageAction()">Delete</button>
              			</div>
               	</div>
                </div>
              </div>
            </div>
				<div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
						<div class="form-group">
	                  <div class="input-group">
	                  	<label for="openidx" class="control-label mt-2">Display on main page</label>
		                  <select name="openidx" class="form-control ml-3 " required style="background-color:#d2fcfe;">
		                  	<option value="99" <c:if test="${result.openidx eq '99' }">selected</c:if>>Do not Display on main page</option>
		                  	<option value="01" <c:if test="${result.openidx eq '01' }">selected</c:if>>Display on main page > 1</option>
		                  	<option value="02" <c:if test="${result.openidx eq '02' }">selected</c:if>>Display on main page > 2</option>
		                  	<option value="03" <c:if test="${result.openidx eq '03' }">selected</c:if>>Display on main page > 3</option>
		                  	<option value="04" <c:if test="${result.openidx eq '04' }">selected</c:if>>Display on main page > 4</option>
		                  	<option value="05" <c:if test="${result.openidx eq '05' }">selected</c:if>>Display on main page > 5</option>
		                  </select>
		                  <label for="openpos" class="control-label ml-4 mt-2">Sort Order</label>
		                  <select name="openpos" class="form-control ml-3" required style="background-color:#d2fcfe;">
		                  	<option value="99" <c:if test="${result.openpos eq '99' }">selected</c:if>>99</option>
		                  	<option value="30" <c:if test="${result.openpos eq '30' }">selected</c:if>>30</option>
		                  	<option value="29" <c:if test="${result.openpos eq '29' }">selected</c:if>>29</option>
		                  	<option value="28" <c:if test="${result.openpos eq '28' }">selected</c:if>>28</option>
		                  	<option value="27" <c:if test="${result.openpos eq '27' }">selected</c:if>>27</option>
		                  	<option value="26" <c:if test="${result.openpos eq '26' }">selected</c:if>>26</option>
		                  	<option value="25" <c:if test="${result.openpos eq '25' }">selected</c:if>>25</option>
		                  	<option value="24" <c:if test="${result.openpos eq '24' }">selected</c:if>>24</option>
		                  	<option value="23" <c:if test="${result.openpos eq '23' }">selected</c:if>>23</option>
		                  	<option value="22" <c:if test="${result.openpos eq '22' }">selected</c:if>>22</option>
		                  	<option value="21" <c:if test="${result.openpos eq '21' }">selected</c:if>>21</option>
		                  	<option value="20" <c:if test="${result.openpos eq '20' }">selected</c:if>>20</option>
		                  	<option value="19" <c:if test="${result.openpos eq '19' }">selected</c:if>>19</option>
		                  	<option value="18" <c:if test="${result.openpos eq '18' }">selected</c:if>>18</option>
		                  	<option value="17" <c:if test="${result.openpos eq '17' }">selected</c:if>>17</option>
		                  	<option value="16" <c:if test="${result.openpos eq '16' }">selected</c:if>>16</option>
		                  	<option value="15" <c:if test="${result.openpos eq '15' }">selected</c:if>>15</option>
		                  	<option value="14" <c:if test="${result.openpos eq '14' }">selected</c:if>>14</option>
		                  	<option value="13" <c:if test="${result.openpos eq '13' }">selected</c:if>>13</option>
		                  	<option value="12" <c:if test="${result.openpos eq '12' }">selected</c:if>>12</option>
		                  	<option value="11" <c:if test="${result.openpos eq '11' }">selected</c:if>>11</option>
		                  	<option value="10" <c:if test="${result.openpos eq '10' }">selected</c:if>>10</option>
		                  	<option value="9" <c:if test="${result.openpos eq '9' }">selected</c:if>>9</option>
		                  	<option value="8" <c:if test="${result.openpos eq '8' }">selected</c:if>>8</option>
		                  	<option value="7" <c:if test="${result.openpos eq '7' }">selected</c:if>>7</option>
		                  	<option value="6" <c:if test="${result.openpos eq '6' }">selected</c:if>>6</option>
		                  	<option value="5" <c:if test="${result.openpos eq '5' }">selected</c:if>>5</option>
		                  	<option value="4" <c:if test="${result.openpos eq '4' }">selected</c:if>>4</option>
		                  	<option value="3" <c:if test="${result.openpos eq '3' }">selected</c:if>>3</option>
		                  	<option value="2" <c:if test="${result.openpos eq '2' }">selected</c:if>>2</option>
		                  	<option value="1" <c:if test="${result.openpos eq '1' }">selected</c:if>>1</option>
		                  </select>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
						<div class="form-group">
							<label for="proname" class="control-label">Name / Position</label>
	                  <div class="input-group">
		                  <input type="text" class="form-control" value="${result.proname }" name="proname" id="proname" placeholder="Name" required>
		                  <input type="text" class="form-control ml-2" value="${result.ranks }" name="ranks" id="ranks" placeholder="Position" required>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div class="form-group">
					<label for="subject" class="control-label">Subject</label>
	                <div class="input-group">
		                <input type="text" class="form-control" value="${result.subject }" name="subject" placeholder="Subject" data-error="제목을 입력하세요." required>
	                </div>
	                <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div class="form-group">
					<label for="sentence" class="control-label">Lecture</label>
	                <div class="input-group">
		                <input type="text" class="form-control" value="${result.sentence }" name="sentence" placeholder="Sentence" data-error="담당업무 입력" required>
	                </div>
	                <div class="help-block with-errors text-danger"></div>
               	</div>
<!--                	<div class="form-group">
							<label for="schedule" class="control-label">강의스케쥴/과목명</label>
	                  <div class="input-group">
		                  <input type="text" class="form-control" value="" name="schedule" placeholder="예) 평일 10:00 ~ 19:00" required>
		                  <input type="text" class="form-control ml-2" value="" name="classnm" placeholder="예) 대한항공/아시아나항공 취업대비반, 국내항공사 정규과정" required>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div> -->
               	<div class="form-group">
							<label for="title" class="control-label">Profile</label>
	                  <div class="input-group">
		                  <textarea class="form-control" name="history" id="editor" data-error="내용을 입력하세요." required>${result.history }</textarea>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div>
               		<button type="submit" class="btn btn-primary mr-2">Save</button>
               		<button type="button" onclick="deleteContent('${result.idx}')" class="btn btn-danger mr-2">Delete</button>
                    <a href="/manager/pro/list.do" class="btn btn-light">Cancel</a></div>
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
	
	$("#upload").click(function (e) {
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
		$("#wrapper-tn").attr("src", "/img/ex-pro-img.png");
		$("#thumbnail").val("");
	}
	
	function deleteContent(idx){
		if(confirm("Are you sure you want to delete it?") == true){
			location.href="/manager/pro/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}
	
</script>

</body>  
</html>


  


