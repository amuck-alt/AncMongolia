<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-지상직채용공고</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>

<div class="container-fluid mt-5">
	<div class="row sm-row">
	  <div class="col-12">
	    <div class="col-3 mb-1 font-30 font-bold mobile-100-percent">
	    	<c:choose>
	    		<c:when test="${param.section eq '01'}">지상직채용소식</c:when>
	    		<c:otherwise>여행사채용소식</c:otherwise>
	    	</c:choose></div>
	    <div class="col-9 py-2 mobile-100-percent font-16 font-gray"></div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid mt-4">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/support/recruit.do">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="section" value="${param.section}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group search-row">
					<input class="form-control search-bar" name="searchText" id="searchText" type="text" placeholder="검색어를 입력하세요" value="${param.searchText}">
					<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="../img/ico-search-wh.png"></button>
					</div>
				</div>
				</form>				
			</div>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12 my-2"></div>
		<div class="col-12">
			<ul class="mobile-hidden">
				<li class="col-7 px-3 py-3 font-bold font-16 line-2-black-top line-2-black">제목</li>
				<li class="col-3 px-3 py-3 font-bold font-16 line-2-black-top line-2-black">진행일정</li>
				<li class="col-2 px-3 py-3 font-bold font-16 line-2-black-top line-2-black">게시일자</li>
			</ul>
			<div class="col-12 line-1-gray mobile-show"></div>
			<c:forEach items="${result}" var="list" >
			<ul class="col-12 py-4 line-1-gray <c:if test="${list.topyn eq 'Y'}">bg-ivory</c:if>">
				<li class="col-7 px-2 font-20 mobile-100-percent">
					<a href="/support/recruitv.do?idx=${list.idx}&section=${param.section}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}"><strong>${ list.title }</strong></a>
				</li>
				<li class="col-3 px-2 pt-3 mobile-50-percent font-14">${ list.steptitle }<span class="mx-2">/</span>${ list.stepdetail }</li>
				<li class="col-2 px-2 pt-3 mobile-50-percent font-14"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></li>
			</ul>
			</c:forEach>
		</div>
		<div class="col-12 paging text-center my-5">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>


<script>

$(document).ready(function() {
    
	$("#searchBtn").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};//전체 페이지
	var visiblePages = 3;//리스트 보여줄 페이지
	var startPage = ${startPage};//현재 페이지
	 
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

</script>

<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>