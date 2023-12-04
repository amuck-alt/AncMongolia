<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="항공사지상직채용정보"/>
<meta name="author" content="크루팩토리">
<meta name="keywords" content="항공사지상직채용정보"/>
<title>온라인채용지원</title>
<%@ include file = "../include/header.jsp" %>
</head>
<body>

<header><%@ include file = "../include/nav.jsp" %></header>


<div class="container-fluid">
	<div class="row sm-row site-map-row my-5">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">온라인채용지원</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
	</div>
</div>

<!-- div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/news/announce.do">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group search-row">
					<input class="form-control search-bar" name="searchText" id="searchText" type="text" placeholder="검색어를 입력하세요" value="${param.searchText}">
					<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="/images/ico-search-wh.png"></button>
					</div>
				</div>
				</form>				
			</div>
		</div>
	</div>
</div-->

<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-2">
				<c:set var="now" value="<%=new java.util.Date()%>" />
                <c:set var="thisDayTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH" /></c:set>
				<c:forEach items="${result}" var="list" >
					<ul class="col-12 align-middle line-1-gray">
						<li class="col-12 px-2 py-3 mobile-100-percent">
							<a href="/recruit/view.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><img src="${list.thumbnail}" class="align-middle rad-div-10" width="100%"></a>
						</li>
						<li class="col-12 px-2 py-3 mobile-100-percent">
						  <span class="font-20 align=middle py-4">
						    <a href="/recruit/view.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}">${ list.title }</a>
						  </span>
						  <p class="font-14 my-3">${list.stdaytime }시 ~ ${list.enddaytime }시
							  <c:choose>
								<c:when test="${thisDayTime <= list.stdaytime}"><span class="ml-4 tiny-label bg-pink">대기중</span></c:when>
		                        <c:when test="${thisDayTime >= list.enddaytime}"><span class="ml-4 tiny-label bg-navy">종료</span></c:when>
		                        <c:otherwise><span class="ml-2 tiny-label bg-pink">진행중</span></c:otherwise>
		                      </c:choose>
						  </p>				  
						</li> 
					</ul>
				</c:forEach >
		</div>
		<div class="col-12 paging text-center mb-5">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>


<footer><%@ include file = "../include/footer.jsp" %></footer>


<script>

$(document).ready(function() {
       
	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};	//전체 페이지
	var visiblePages = 3;			//리스트 보여줄 페이지
	var startPage = ${startPage};	//현재 페이지
	 
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

</body>
</html>