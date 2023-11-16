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
          
		  <form action="/manager/auth/AuthInsert.do" name="manager" method="post" data-toggle="validator">          
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="section">권한</label>
                        <select class="form-control mr-2" name="section" id="section">
                          <option value="super">최고관리자</option>
                          <option value="designer">디자이너</option>
                          <option value="user" selected>일반</option>
                        </select>
                      </div>
                      <div class="form-group">
                      <label for="team">소속팀</label>
                        <select class="form-control mr-2" name="team" id="team">
                          <option value="operator">경영지원팀</option>
                          <option value="cabin" selected>승무팀</option>
                          <option value="ground">지상직/여행사팀</option>
                          <option value="goone">항공운항1팀</option>
                          <option value="gotwo">항공운항2팀</option>
                          <option value="incheon">인천</option>
                          <option value="professor">교수부</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="usernm">사용자이름</label>
                        <input type="text" class="form-control" name="usernm" id="usernm" placeholder="사용자이름" data-error="이름를 입력하세요." required>
                        <div class="help-block with-errors text-danger"></div>
                      </div>
                      <div class="form-group">
                        <label for="userid" class="control-label">사용자아이디</label>
                        <div class="input-group">
                        	<input type="text" class="form-control" name="userid" id="userid" placeholder="사용자아이디" data-error="아이디를 입력하세요." required>
                        </div>
                        <div class="help-block with-errors text-danger"></div>
                      </div>
	                  <div class="form-group">
                        <label for="userid" class="control-label">비밀번호</label>
                        <div class="input-group">
                        	<input type="password" class="form-control" name="userpw" id="userpw" placeholder="비밀번호" data-error="비밀번호를 입력하세요." required>
                        </div>
                        <div class="help-block with-errors text-danger"></div>
	                  </div>
                    
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="/manager/auth/Auth.do" class="btn btn-light">취소</a>
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

<script> 
 
 	$(document).ready(function() {
	 	$("#manager").validator();	//폼발리데이터
	});
 	

</script>

</body>  
</html>


  


