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
                    <h3 class="under-line mx-1">합격생인터뷰관리@</h3>
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
                  <div class="table-responsive">
                    <!-- <table>
                      <tr>
                        <td><a href="/manager/review.do"><button class="btn btn-primary mr-2">전체</button></a></td>
                        <td><a href="/manager/review.do?gubun=ke"><button class="btn btn-primary mr-2">대한항공</button></a></td>
                        <td><a href="/manager/review.do?gubun=oz"><button class="btn btn-primary mr-2">아시아나항공</button></a></td>
                        <td><a href="/manager/review.do?gubun=ko"><button class="btn btn-primary mr-2">국내항공사</button></a></td>
                        <td><a href="/manager/review.do?gubun=ea"><button class="btn btn-primary mr-2">중동항공사</button></a></td>
                        <td><a href="/manager/review.do?gubun=eu"><button class="btn btn-primary mr-2">유럽항공사</button></a></td>
                        <td><a href="/manager/review.do?gubun=as"><button class="btn btn-primary mr-2">아시아항공사</button></a></td>
                        <td><a href="/manager/review.do?section=os"><button class="btn btn-danger mr-2">외국항공사</button></a></td>
                      </tr>	
                    </table> -->
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th width="5%">#</th>
                            <th width="10%">썸네일</th>
                            <th width="10%">합격대학</th>
                            <th width="50%">제목</th>
                            <th width="8%">조회수</th>
                            <th width="10%">등록일</th>
                            <th width="10%">담당자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                            <td>${list.idx}</td>
                            <td width="200px">
                            	<c:choose>
					      				<c:when test="${not empty list.thumbnail}"><img src="${list.thumbnail}" style="width:200px;height:180px; border-radius:0px;"></c:when>      					
					      				<c:otherwise><img src="/img/review-thumb-img.png" style="width:200px; height:120px; border-radius:0px;"></c:otherwise>
					      			</c:choose>
                            </td>
                            <td>${list.section}</td>
                            <td width="500px">
                            	<a href="/manager/review/view.do?idx=${list.idx}">
                            		<div style="width:500px;">${list.title}</div>
                            		<%-- <div style="width:500px; position:inline;">${list.description}</div> --%>
                            	</a>
                            </td>
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
 		document.location.href="/manager/review/write.do";
 	}
 	
 </script>


