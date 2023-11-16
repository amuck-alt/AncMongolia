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
                  <form name="form" method="post" action="/manager/blog/Honor.do">
                  <div class="col-12 mb-4">
                  	<div class="input-group" style="width:40rem;">
                  	<%-- <select name="searchYear" onchange="changePage(this)" class="mx-2 form-control" style="padding-left:1rem; width:10rem;height:3rem; font-size:1rem;">
                  		<option value="2020" <c:if test="${param.searchYear eq '2020'}">selected</c:if>>2020년도</option>
                  		<option value="2019" <c:if test="${param.searchYear eq '2019'}">selected</c:if>>2019년도</option>
                  		<option value="2018" <c:if test="${param.searchYear eq '2018'}">selected</c:if>>2018년도</option>
                  		<option value="2017" <c:if test="${param.searchYear eq '2017'}">selected</c:if>>2017년도</option>
                  		<option value="2016" <c:if test="${param.searchYear eq '2016'}">selected</c:if>>2016년도</option>
                  		<option value="2015" <c:if test="${param.searchYear eq '2015'}">selected</c:if>>2015년도</option>
                  		<option value="2014" <c:if test="${param.searchYear eq '2014'}">selected</c:if>>2014년도</option>
                  	</select>
                  	<select name="searchCode" onchange="changePage(this)" class="mx-2 form-control" style="padding-left:1rem; width:10rem;height:3rem; font-size:1rem;">
                    		<option value="인하공업전문대학" <c:if test="${param.searchCode eq '인하공업전문대학'}">selected</c:if>>인하공업전문대학</option>
                    		<option value="수원과학대학교" <c:if test="${param.searchCode eq '수원과학대학교'}">selected</c:if>>수원과학대학교</option>
                    		<option value="연성대학교" <c:if test="${param.searchCode eq '연성대학교'}">selected</c:if>>연성대학교</option>
                    		<option value="부천대학교" <c:if test="${param.searchCode eq '부천대학교'}">selected</c:if>>부천대학교</option>
                    		<option value="한양여자대학교" <c:if test="${param.searchCode eq '한양여자대학교'}">selected</c:if>>한양여자대학교 </option>
                    		<option value="">----------------------</option>
                    		<option value="한서대학교" <c:if test="${param.searchCode eq '한서대학교'}">selected</c:if>>한서대학교</option>
                    		<option value="극동대학교" <c:if test="${param.searchCode eq '극동대학교'}">selected</c:if>>극동대학교</option>
                    		<option value="광주여자대학교" <c:if test="${param.searchCode eq '광주여자대학교'}">selected</c:if>>광주여자대학교</option>
                    		<option value="백석대학교" <c:if test="${param.searchCode eq '백석대학교'}">selected</c:if>>백석대학교</option>
                    		<option value="중부대학교" <c:if test="${param.searchCode eq '중부대학교'}">selected</c:if>>중부대학교 </option>
                    		<option value="">----------------------</option>
                    		<option value="기타대학교" <c:if test="${param.searchCode eq '2020'}">selected</c:if>>기타대학교</option>
                  	</select> --%>
                  	<input type="text" class="form-control" name="searchName" value="${param.searchName}" style="padding-left:1rem; width:20rem;height:3rem; font-size:1rem;"/>
                  	<div class="input-group-append">
                        <button class="btn btn-sm btn-facebook" type="submit">검색하기 </button>
                     </div>
                  	</div>
                  </div>
                  </form>
                  <ul class="mx-2 col-12">
                  	<c:forEach items="${result}" var="list">
                  	<li class="float-left mx-2 my-2" style="width:160px;">
              				<div class="col-12 border px-2 py-2">
								<div style="width:140px; height:170px; overflow:hidden;">
									<a href="/manager/blog/HonorView.do?idx=${list.idx}">
									<c:choose>
										<c:when test="${list.medalyn eq 'Y'}"><img src="/img/hoh-medal-img.png" width="100%"></c:when>
										<c:otherwise><img src="${list.thumbnail}" width="100%"></c:otherwise>
									</c:choose>
									</a>
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
 		document.location.href="/manager/blog/HonorWrite.do";
 	}
</script>


