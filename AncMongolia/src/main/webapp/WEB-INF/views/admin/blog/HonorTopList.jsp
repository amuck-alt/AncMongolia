<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="now" class="java.util.Date" />
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
                    <h3 class="under-line mx-1">명예의전당관리@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0" onclick="goWrite()">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <ul class="mx-2 col-12">
                  	<c:forEach items="${result}" var="list">
                  	<li class="float-left mx-2 my-2" style="width:160px;">
              				<div class="col-12 border px-2 py-2">
								<div style="width:140px; height:170px; overflow:hidden;">
									<a href="/manager/blog/HonorTopView.do?idx=${list.idx}"><img src="${list.thumbnail}" width="150px"></a>
								</div>
								<div class="my-2" style="height:20px; overflow:hidden; color:#ed04c9; font-weight:600;">${list.name}</div>
								<div class="my-2" style="height:45px; overflow:hidden;">${list.title}</div>
								<div class="my-2" style="height:20px; overflow:hidden;">${list.description}</div>
								</div>
                  	</li>
                  	</c:forEach>
                  </ul>
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
 </body>

<script>

	function changePage(obj){
		var val = obj.value;
	}
	
	function goWrite(){
 		document.location.href="/manager/blog/HonorTopWrite.do";
 	}
</script>


