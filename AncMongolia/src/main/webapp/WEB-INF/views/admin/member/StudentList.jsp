<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "../include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h2>Member Management</h2>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-clock-outline text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                  <button class="btn btn-primary mt-2 mt-xl-0">Download report</button>
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="card-title">
                  	<button type="button" name="mem-new" class="btn btn-info" onclick="goWrite()">
                  		<i class="mdi mdi-account"></i></button>
                  	<span class="mx-1"></span>
                  </div>
                  <div class="table-responsive">
                    <table id="member" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>#</th>
                            <th>회원이름 / 아이디</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                            <th>등록일자</th>
                            <th>회원구분</th>
                            <th>담당자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                            <td>${list.m_idx}</td>
                            <td><b><a href="/manager/member/view?m_idx=${list.m_idx}">${list.m_name} ${list.m_id}</a></b></td>
                            <td>${list.m_phone}</td>
                            <td>${list.m_email}</td>
                            <td><fmt:formatDate value="${list.m_regdate}" pattern="yyyy-MM-dd HH:MM" /></td>
                            <td>${list.m_memgb}</td>
                            <td>${list.m_dam}</td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
		<%@ include file="../include/footer.jsp" %>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  
  <script src="/admin/vendors/base/vendor.bundle.base.js"></script>
  <script src="/admin/vendors/chart.js/Chart.min.js"></script>
  <script src="/admin/vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="/admin/js/off-canvas.js"></script>
  <script src="/admin/js/hoverable-collapse.js"></script>
  <script src="/admin/js/template.js"></script>
  <script src="/admin/js/dashboard.js"></script>
  <script src="/admin/js/data-table.js"></script>
  <script src="/admin/js/jquery.dataTables.js"></script>
  <script src="/admin/js/dataTables.bootstrap4.js"></script>
    
  

  
  <script>
  	$(document).ready(function() {
	    $('#member').DataTable();
	} );
  	
  	function goWrite(){
  		document.location.href="/manager/member/write";
  	}
  	
  </script>
  
</body>

</html>


