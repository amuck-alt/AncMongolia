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
          
		  <form action="/manager/auth/insert.do" name="manager" method="post" data-toggle="validator">          
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="section">Permission</label>
                        <select class="form-control mr-2" name="section" id="section">
                          <option value="super">Super User</option>
                          <option value="user" selected>User</option>
                        </select>
                      </div>
                      <div class="form-group">
                      <label for="team">Team</label>
                        <select class="form-control mr-2" name="team" id="team">
                          <option value="operator">Operator</option>
                          <option value="cabin">Team1</option>
                          <option value="ground">Team2</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="usernm">User Name</label>
                        <input type="text" class="form-control" name="usernm" id="usernm" placeholder="User Name" data-error="이름를 입력하세요." required>
                        <div class="help-block with-errors text-danger"></div>
                      </div>
                      <div class="form-group">
                        <label for="userid" class="control-label">User ID</label>
                        <div class="input-group">
                        	<input type="text" class="form-control" name="userid" id="userid" placeholder="User ID" data-error="아이디를 입력하세요." required>
                        </div>
                        <div class="help-block with-errors text-danger"></div>
                      </div>
	                  <div class="form-group">
                        <label for="userid" class="control-label">Password</label>
                        <div class="input-group">
                        	<input type="password" class="form-control" name="userpw" id="userpw" placeholder="Password" data-error="비밀번호를 입력하세요." required>
                        </div>
                        <div class="help-block with-errors text-danger"></div>
	                  </div>
                    
                    <button type="submit" class="btn btn-primary mr-2">Save</button>
                    <a href="/manager/auth/list.do" class="btn btn-light">Cancel</a>
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


  


