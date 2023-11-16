<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<%@ include file="../include/header.jsp" %>
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
                    <h3 class="under-line mx-1">특강신청관리@</h3>
                  </div>
                </div>
				<div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-clock-outline text-muted"></i>
                  </button>
                  <!-- button class="btn btn-primary mt-2 mt-xl-0">Download report</button-->
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="table-responsive">
                    <table id="counsel" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>#</th>
                            <th>상담경로</th>
                            <th>상담구분</th>
                            <th>이름</th>
                            <th>전화번호</th>
                            <th>나이</th>
                            <th>등록일자</th>
                            <th>상태</th>
                            <th>담당자</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${result}" var="list">
                        <tr>
                            <td>${list.idx}</td>
                            <td>${list.domain}</td>
                            <td>${list.gubun}</td>
                            <td><b><a href="/manager/counsel/spcView.do?idx=${list.idx}">${list.name}</a></b></td>
                            <td>${list.phone}</td>
                            <td>${list.age}</td>
                            <td>${list.regdate}</td>
                            <td><c:set var="stat" value="${list.stat}"/>${ stat }</td>
                            <td>${list.manager}</td>
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

  <script>
  	$(document).ready(function() {
	    $('#counsel').DataTable({
	    	"order": [[0, 'desc']]
	    });
	} ); 	
  </script>
  
</body>

</html>


