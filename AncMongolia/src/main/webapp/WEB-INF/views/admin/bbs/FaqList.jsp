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
                    <h3 class="under-line mx-1">자주묻는질문관리@</h3>
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
                <div class="card-body">
                  <!-- div class="card-title">
                  	<button type="button" name="mem-new" class="btn btn-info" onclick="goWrite()">
                  		<i class="mdi mdi-file-document-box"></i></button>
                  	<span class="mx-1"></span>
                  </div-->
                  <div class="table-responsive">
                    <hr>
                    <table>
                      <tr>
                        <td><a href="/manager/faq.do?section=all"><button class="btn <c:choose><c:when test="${ param.section eq 'all' || param.section == null }">btn-danger</c:when><c:otherwise>btn-primary</c:otherwise></c:choose> mr-2">전체</button></a></td>
                        <td><a href="/manager/faq.do?section=01"><button class="btn <c:choose><c:when test="${ param.section eq '01' }">btn-danger</c:when><c:otherwise>btn-primary</c:otherwise></c:choose> mr-2">객실승무원</button></a></td>
                        <td><a href="/manager/faq.do?section=02"><button class="btn <c:choose><c:when test="${ param.section eq '02' }">btn-danger</c:when><c:otherwise>btn-primary</c:otherwise></c:choose> mr-2">항공운항과입시</button></a></td>
                        <td><a href="/manager/faq.do?section=03"><button class="btn <c:choose><c:when test="${ param.section eq '03' }">btn-danger</c:when><c:otherwise>btn-primary</c:otherwise></c:choose> mr-2">항공사지상직</button></a></td>
                        <td><a href="/manager/faq.do?section=04"><button class="btn <c:choose><c:when test="${ param.section eq '04' }">btn-danger</c:when><c:otherwise>btn-primary</c:otherwise></c:choose> mr-2">여행사/관광통역사</button></a></td>
                        <td><a href="/manager/faq.do?section=99"><button class="btn <c:choose><c:when test="${ param.section eq '99' }">btn-danger</c:when><c:otherwise>btn-primary</c:otherwise></c:choose> mr-2">기타</button></a></td>
                      </tr>	
                    </table>
                    <hr>
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th width="5%">#</th>
                            <th width="10%">카테고리</th>
                            <th width="57%">질문</th>
                            <th width="8%">조회수</th>
                            <th width="10%">등록일</th>
                            <th width="10%">등록자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                            <td>${list.idx}</td>
                            <td>
                              <c:choose>
                              <c:when test="${list.section eq '01'}">객실승무원</c:when>
                              <c:when test="${list.section eq '02'}">항공사지상직</c:when>
                              <c:when test="${list.section eq '03'}">항공운항과입시</c:when>
                              <c:when test="${list.section eq '04'}">여행사/관광통역사</c:when>
                              <c:otherwise>기타</c:otherwise>
                              </c:choose>
                            </td>
                            <td><a href="/manager/faq/view.do?idx=${list.idx}">${list.question}</a></td>
                            <td>${list.visit}</td>
                            <td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
                            <td>${list.regid}</td>
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
 		document.location.href="/manager/faq/write.do";
 	}
 	
 </script>


