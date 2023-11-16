<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-언론보도자료</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<div class="container-fluid mt-5">
	<div class="row sm-row">
	  <div class="col-12">
	    <div class="col-3 mb-1 font-30 font-bold mobile-100-percent">언론보도자료</div>
	    <div class="col-9 py-2 mobile-100-percent font-16 font-gray"></div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid mt-3">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/news/press.do">
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


<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12">	
			<div class="col-12 my-2"></div>
			<div class="col-12 font-18 table-header mobile-hidden">
				<ul>
					<li class="pt-3 pl-4" style="width:80%;">제목</li>
					<li class="pt-3 text-center" style="width:20%;">일자</li>
					<!-- <li class="pt-3 text-center mobile-hidden" style="width:20%;">조회수</li> -->
				</ul>
			</div>
			<table class="col-12 table table-striped">
			  <tbody>
				<c:forEach items="${result}" var="list">
					<tr style="width:100%;">
						<td class="py-4 font-18">
						  <a href="/news/pressv.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}">${ list.title }</a>
						  <fmt:formatDate value="${now}" var="nowday" pattern="yyyy-MM-dd"/>
						  <fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowdate"></fmt:parseNumber>
						  <fmt:formatDate value="${list.regdate}" var="regday" pattern="yyyy-MM-dd"/>
						  <fmt:parseNumber value="${list.regdate.time / (1000*60*60*24)}" integerOnly="true" var="regdate"></fmt:parseNumber>
						  <c:if test="${ nowdate <= regdate + 14 }"><label class="mx-2 hot-dot"></label></c:if>
							<span class="mx-4"></span>						
						</td>
						<td class="py-4 font-18 text-center mobile-hidden"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
						<%-- <td class="py-4 font-18 text-center mobile-hidden">${list.visit}</td> --%>
					</tr>
				</c:forEach>
			  </tbody>
			  <tfoot>
				  <tr>
				    <td colspan="3"></td>
				  </tr>  
				</tfoot>
			</table>
			<div class="paging text-center">
			  <ul class="pagination pagination-lg" id="pagination"></ul>
			</div>
		</div>
	</div>
</div>

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