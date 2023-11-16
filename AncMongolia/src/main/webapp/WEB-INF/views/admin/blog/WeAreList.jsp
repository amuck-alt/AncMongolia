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
                    <h3 class="under-line mx-1">ANC People Management@</h3>
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
                        <tr>
                            <th>Thumbnail</th>
                            <th>Title</th>
                            <th><img src=/img/ico-like.png alt="likely"></th>
                            <th><img src=/img/ico-view.png alt="view"></th>
                            <th>Date</th>
                            <th>Open</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                            <td width="250px" height="150px">
                            	<c:choose>
	                            	<c:when test="${list.thumbnail eq ''}">
	                            		<img src="/admin/images/no-image.png" style="width:100%; height:100%; border-radius:0%;">
	                            	</c:when>
	                            	<c:otherwise>
	                            		<img src="${list.thumbnail}" style="width:100%; height:100%; border-radius:0%;">
	                            	</c:otherwise>                            	
                            	</c:choose>
                            </td>
                            <td>
							    <a href="/manager/weare/view.do?idx=${ list.idx }" style="font-size:18px;">${ list.title }</a>
							    <span class="mx-2">
							      <fmt:formatDate value="${now}" var="nowday" pattern="yyyy-MM-dd"/>
								  <fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowdate"></fmt:parseNumber>
								  <fmt:formatDate value="${list.regdate}" var="regday" pattern="yyyy-MM-dd"/>
								  <fmt:parseNumber value="${list.regdate.time / (1000*60*60*24)}" integerOnly="true" var="regdate"></fmt:parseNumber>
								  <c:if test="${ nowdate <= regdate + 14 }"><button class="vsm-btn">N</button></c:if>
							    </span>
							    <br><br>
							    <span style="color:gray;">${ list.description }</span>
							    <br><br>
							    <span style="color:gray;">${ list.taglib }</span>
							</td>
                            <td>${ list.likely }</td>
							<td>${ list.visit }</td>
							<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
							<td>${list.openyn}</td>
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
 		document.location.href="/manager/weare/write.do";
 	}
 	
 </script>


