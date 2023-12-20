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
          
		  <form action="/manager/auth/AuthUpdate.do" name="manager" method="post" data-toggle="validator">          
          <input type="hidden" name="idx" value="${ result.idx }"/>
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="m_edulv">구분</label>
                        <select class="form-control mr-2" name="section" id="section">
                          <option value="super" <c:if test="${result.section eq 'super'}">selected</c:if>>전체관리자</option>
                          <option value="recruit" <c:if test="${result.section eq 'recruit'}">selected</c:if>>채용관리</option>
                          <option value="student" <c:if test="${result.section eq 'student'}">selected</c:if>>학생관리</option>
                        </select>
                      </div>
                      <div class="form-group">
                      <label for="userauth">소속팀</label>
                        <select class="form-control mr-2" name="team" id="team">
                          <option value="operator" <c:if test="${result.team eq 'operator'}">selected</c:if>>경영지원팀</option>
                          <option value="cabin" <c:if test="${result.team eq 'cabin'}">selected</c:if>>승무팀</option>
                          <option value="ground" <c:if test="${result.team eq 'ground'}">selected</c:if>>지상직팀</option>
                          <option value="goone" <c:if test="${result.team eq 'goone'}">selected</c:if>>항공운항1팀</option>
                          <option value="gotwo" <c:if test="${result.team eq 'gotwo'}">selected</c:if>>항공운항2팀</option>
                          <option value="tour" <c:if test="${result.team eq 'tour'}">selected</c:if>>여행사팀</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="userid" class="control-label">사용자이름</label>
                        <div class="input-group">
                        	<input type="text" value="${ result.usernm }" class="form-control mx-2 input-group-append" name="usernm" id="usernm" placeholder="사용자이름" data-error="이름를 입력하세요." required>
                        </div>
                        <div class="help-block with-errors text-danger"></div>
                      </div>
                      <div class="form-group">
                        <label for="userid" class="control-label">사용자아이디</label>
                        <div class="input-group">
                        	<input type="text" value="${ result.userid }" class="form-control" name="userid" id="userid" placeholder="사용자아이디" data-error="아이디를 입력하세요." required>
                        </div>
                        <div class="help-block with-errors text-danger"></div>
                      </div>                      
	                  <div class="form-group">
                        <label for="userid" class="control-label">비밀번호</label>
                        <div class="input-group">
                        	<input type="password" value="${ result.userpw }" class="form-control" name="userpw" id="userpw" placeholder="비밀번호" data-error="비밀번호를 입력하세요." required>
                        </div>
                        <div class="help-block with-errors text-danger"></div>
	                  </div>
                    
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <button type="button" class="btn btn-danger mr-2" id="del-manager">삭제</button>
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
 	
 	$("#del-manager").click(function(){
 		if(confirm("정말로 삭제하시겠습니까?") == true){
 			location.href="/manager/auth/AuthDelete.do?idx="+${ result.idx };	
 		}else{
 			return;
 		}	
 	})
 	

</script>

</body>  
</html>


  


