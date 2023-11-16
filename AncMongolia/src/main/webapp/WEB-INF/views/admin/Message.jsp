<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "./include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="./include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="./include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h2><c:if test="${ result.msg eq 'succeed' }">성공적으로 등록되었습니다</c:if></h2>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="card-title">
                  	<button type="button" name="mem-new" class="btn btn-info" onclick="goPage('${ result.home }','')">흠으로</button><span class="mx-1"></span>
                  	<button type="button" name="mem-new" class="btn btn-info" onclick="goPage('${ result.reurl }','${ result.section }')">계속하기</button><span class="mx-1"></span>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
          
          
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
		<%@ include file="./include/footer.jsp" %>
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
    
  
</body>

<script>
	function goPage(url, section){
		var go = url;
		if(go == ""){
			location.href = "/manager/index.do";
		}else{
			location.href=go+"?section="+section;	
		}
		
	}
</script>

</html>


