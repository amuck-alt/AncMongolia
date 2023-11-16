<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-특강정보</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>

<%@ include file = "../include/subbanner.jsp" %>

<div class="container-fluid">
	<div class="row sub-row site-map-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 mb-1">
		    <h1>특강정보</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sub-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/support/recruit">
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
	<div class="row sub-row">	
		<div class="col-12 my-2"></div>
		<div class="col-12 font-20 font-bold table-header">
			<!-- ul>
				<li class="pt-3 pl-4" style="width:60%;">제목</li>
				<li class="pt-3 text-center" style="width:15%;">일자</li>
				<li class="pt-3 text-center" style="width:15%;">조회수</li>
			</ul-->
		</div>
		<table class="table">
			<tbody>
				<c:forEach items="${result}" var="list" >
				<tr class="align-middle" style="height:7rem;">
					<td width="20%" id="bbs-thumbnail"><img src="/docs/code/" class="align-middle"></td>
					<td width="" class="align-middle">
					  <label class="sm-label">
					  <c:choose>
					    <c:when test="${list.section eq 'notice'}">공지</c:when>
					    <c:when test="${list.section eq 'event'}">행사</c:when>
					    <c:when test="${list.section eq 'special'}">특강</c:when>
					    <c:when test="${list.section eq 'etc'}">기타</c:when>
					  </c:choose>
					  </label>
					  <span class="mx-2 font-24 align-top" style="line-height:30px;">
					    <a href="/news/annview.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><b>${ list.title }</b></a>
					  </span>
					  
					  <p class="pt-1 font-14 font-gray">${list.description}</p>
					</td> 
					<td width="10%" class="font-18 align-middle" id="pc-bbs-td"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
					<!-- td width="10%" class="font-18 align-middle" id="pc-bbs-td">${list.visit}</td-->
				</tr>
				</c:forEach >
			</tbody>
			<tfoot>
			  <tr>
			    <td colspan="4"></td>
			  </tr>  
			</tfoot>
		</table>
		<div class="col-12 paging text-center">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
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

<script src="/dist/js/jquery.twbsPagination.js"></script>
<script>

$(document).ready(function() {
       
	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};//전체 페이지
	var visiblePages = 10;//리스트 보여줄 페이지
	var startPage = ${startPage};//현재 페이지
	 
	$('#pagination').twbsPagination({
	    totalPages: totalPages,
	    visiblePages: visiblePages,
        startPage: startPage,
        onPageClick: function (event, page) {
        	$('#startPage').val(page);//보고 싶은 페이지
        	$('#visiblePages').val(visiblePages);
        	$("#search").submit();
        }
	});
});

</script>

</body>
</html>