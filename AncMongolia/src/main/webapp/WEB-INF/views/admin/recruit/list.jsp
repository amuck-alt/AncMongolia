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
                    <h3 class="under-line mx-1">Recruit Management@</h3>
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
                  <button class="btn btn-primary mt-2 mt-xl-0">Download report</button>
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr align="center">
                            <th>#</th>
                            <th>Title</th>
                            <th>Period</th>
                            <th>Status</th>
                            <th>Register</th>
                            <th>Data</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${recruit}" var="list">
                        	<c:set var="now" value="<%=new java.util.Date()%>" />
                        	<c:set var="thisDayTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH" /></c:set>
                        	<c:set var="startDay" value="${list.stday}"></c:set>
                        	<c:set var="startTime" value="${list.sttime}"></c:set>
	                        <c:set var="startDayTime" value="${startDay} ${startTime}"></c:set>
	                        <c:set var="endDay" value="${list.endday}"></c:set>
                        	<c:set var="endTime" value="${list.endtime}"></c:set>
	                        <c:set var="endDayTime" value="${endDay} ${endTime}"></c:set>
	                        <tr>
	                            <td align="center">${list.idx}</td>
	                            <td><a href="/manager/recruit/view.do?idx=${list.idx}">${list.title}</a></td>
	                            <td align="center">${startDayTime}시&nbsp;~&nbsp;${endDayTime}시&nbsp;</td>
	                            <td align="center">
	                            	<c:choose>
	                            		<c:when test="${thisDayTime >= endDayTime}">Close</c:when>
	                            		<c:when test="${thisDayTime <= startDayTime}">Stand by</c:when>
	                            		<c:otherwise>In progress</c:otherwise>
	                            	</c:choose>
	                            </td>
	                            <td>${list.regid}</td>
	                            <td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
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
 		document.location.href="/manager/recruit/write.do";
 	}
 	
 </script>


