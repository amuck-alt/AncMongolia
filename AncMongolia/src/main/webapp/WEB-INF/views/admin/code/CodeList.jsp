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
                    <h3 class="under-line mx-1">항공사코드관리@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0" onclick="goWrite()">
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
                <div class="card-header">
                  <p class="pt-2">수정이 필요한 게시물은 삭제후 다시 입력하시기 바랍니다.</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>#</th>
                            <th>구분</th>
                            <th>아이콘</th>
                            <th>코드아이디</th>
                            <th>코드명</th>
                            <th>아이콘경로</th>
                            <th>등록일자</th>
                            <th>관리자</th>
                            <th>삭제</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                        	<td>${list.idx}</td>
                        	<td>
                       		<c:choose>
                       		  <c:when test="${ list.section eq 'ko' }">국내항공사</c:when>
                       		  <c:otherwise>국외항공사</c:otherwise>
                       		</c:choose>
                        	</td>
                            <td><img src="/docs/code/${list.path}" style="width:200px; height:100px;border-radius:0px;"></td>
                            <td><a href="/manager/code/view.do?idx=${list.idx}">${list.code}</a></td>
                            <td>${list.name}</td>
                            <td>${list.path}</td>
                            <td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
                            <td>${list.regid}</td>
                            <td class="text-center"><a href="/manager/code/delete.do?idx=${list.idx}"><i class="mdi mdi-file-excel-box"></i></a></td>
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
 </body>

<script>
 	
 	$(document).ready(function() {
    	$('#tabler').DataTable({
    		"order": [[0, 'desc']]
    	});
	});
 	
 	function goWrite(){
 		document.location.href="/manager/code/write.do";
 	}
 	
 </script>


