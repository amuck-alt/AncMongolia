<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file = "../include/header.jsp" %>
<%@ page import="java.util.Date" %>
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
                   	<h3 class="under-line mx-1">크루웨이브@</h3>
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
            <!-- list -->
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="row col-9">
                      
	                  <c:forEach items="${result}" var="list" varStatus="status">
					    <c:if test="${ status.index%6 == 0 }"><div class="col-md-4"></c:if>
						<div class="bcard mb-4">
							<div class="bcard-body">
								<div class="col-12">
									<h4>${ list.title }
									<span class="mr-2"></span>
									<fmt:formatDate value="${now}" var="nowday" pattern="yyyy-MM-dd"/>
									<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowdate"></fmt:parseNumber>
									<fmt:formatDate value="${list.regdate}" var="regday" pattern="yyyy-MM-dd"/>
									<fmt:parseNumber value="${list.regdate.time / (1000*60*60*24)}" integerOnly="true" var="regdate"></fmt:parseNumber>
									<c:if test="${ nowdate <= regdate + 7 }"><button class="vsm-btn">N</button></c:if>									
									</h4>
								</div>
								<div class="col-12 my-1"></div>
								<div class="col-12 font-12">
									<span class="mr-3"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></span>
									<span class="mr-3"><c:if test="${ list.openyn eq 'N' }">비공개</c:if></span>
									<span class="mr-3"></span><img src=/img/ico-like.png>${ list.likely }
									<span class="mr-3"></span><img src=/img/ico-view.png>${ list.likely }
								</div>
								<div class="col-12 my-1"></div>
								<div class="col-12 font-gray font-14">${ fn:substring(list.description, 0, 50) }</div>
								<div class="col-12 my-2"></div>
								<div class="col-12 offhide"><a href="/manager/blog/WaveView.do?idx=${ list.idx }"><img src="/docs/blog/${ list.thumbnail }" width="100%"></a></div>
								<div class="col-12 my-2"></div>
							</div>
						</div>
					    <c:if test="${ status.count%6 == 0 && status.index != 0 }"></div><!-- end col --></c:if>	    
					  </c:forEach>
					  
				  </div>
			    </div>
			  </div>
			</div>		
          </div><!-- end row -->
        </div><!-- end wrapper -->
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
 	
 	function goWrite(){
 		document.location.href="/manager/blog/WaveWrite.do";
 	}
 	
</script>


