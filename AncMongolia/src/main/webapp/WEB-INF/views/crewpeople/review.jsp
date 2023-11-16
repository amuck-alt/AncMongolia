<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-합격생인터뷰</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>
<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


<div class="container-fluid mt-5 mobile-hidden">
	<div class="row sm-row">
	  <div class="col-12">
	    <div class="col-12 mb-1 font-30 font-bold mobile-100-percent">합격생인터뷰</div>
	    <div class="col-12 py-2 mobile-100-percent font-16 font-gray"><p class="font-18-m font-gray mt-3" style="line-height:1.7rem;">가장 최근에 지원한 19~23년도 합격생들을 대상으로 받은 면접, 합격후기위주로 구성하였습니다.<br> 항공사에서 합격자의 신분 노출을 엄격히 관리함으로 인해 간소화하여 공개하는점 양해부탁드립니다.</p></div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid mt-5 mobile-show">
	<div class="row sm-row">
	  <div class="col-12">
	    <div class="col-12 mb-1 font-30 font-bold mobile-100-percent">합격생인터뷰</div>
	    <div class="col-12 py-2 mobile-100-percent font-16 font-gray"><p class="font-18-m font-gray mt-3" style="line-height:1.7rem;">가장 최근에 지원한 19~23년도 합격생들을 대상으로 받은 면접, 합격후기위주로 구성하였습니다.항공사에서 합격자의 신분 노출을 엄격히 관리함으로 인해 간소화하여 공개하는점 양해부탁드립니다.</p></div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>



<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-2"></div>
		<form role="form" name="frmSearch" id="frmSearch">		
			<input type="hidden" name="init" value="${init}" />
			<input type="hidden" name="startPage" id="startPage" value="" />
			<input type="hidden" name="visiblePages" id="visiblePages" value="" />
		</form>
		<div class="col-12 col-review">
     		<ul>
   	  <c:forEach items="${result}" var="review">
      	<li class="float-left col-6 py-2 px-2" id="mobile-100-percent">
      		<div class="col-12 bg-white px-2 py-2">
	      		<div class="col-4 px-2 py-3 align-middle text-center">
	      			<c:choose>
	      				<c:when test="${empty review.thumbnail}"><img src="/img/review-thumb-img.png" width="90px" height="90px" class="cricle-img"></c:when>
	      				<c:otherwise><img src="${review.thumbnail}" width="90px" height="90px" class="cricle-img"></c:otherwise>
	      			</c:choose>
	      		</div>
	      		<div class="col-8 px-3">
	      			<p class="font-18 mt-2 font-bold">
	      				<c:choose>
	      					<c:when test="${!empty sessionScope.crewfactoryMemberInfo}">
	      						<a href="/crewpeople/reviewv.do?idx=${review.idx}&section=${review.section}&gubun=${review.gubun}">${review.title}</a>
	      					</c:when>
	      					<c:otherwise><a href="javascript:invalidMemberShip()">${review.title}</a></c:otherwise>
	      				</c:choose>
	      			</p>
	      			<p class="font-12 my-3 font-gray">${fn:substring(review.description, 0, 50)}...</p>
	      			<p class="my-2 font-12 font-gray"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></p>
	      		</div>
	      	</div>
      	</li>
   	  </c:forEach>
      	</ul>
    	</div>
		<div class="col-12 py-4 paging text-center">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>
<div class="container-fluid" style="height:150px;"></div>




<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

<script>

$(document).ready(function() {
       
	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};	//전체 페이지
	var visiblePages = 3;						//리스트 보여줄 페이지
	var startPage = ${startPage};		//현재 페이지
	 
	$('#pagination').twbsPagination({
	    totalPages: totalPages,
	    visiblePages: visiblePages,
        startPage: startPage,
        onPageClick: function (event, page) {
        	$('#startPage').val(page);//보고 싶은 페이지
        	$('#visiblePages').val(visiblePages);
        	$("#frmSearch").submit();
        }
	});
});

function invalidMemberShip(){
	alert("로그인이 필요한 메뉴입니다. 로그인페이지로 이동합니다.");
	location.href = "/member/login.do";
}

</script>

</body>
</html>