<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-공지사항</title>
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
	    <div class="col-2 mb-1 font-30 font-bold mobile-100-percent">Мэдэгдэл</div>
	    <div class="col-10 py-2 mobile-100-percent font-16 font-gray"></div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid mt-4">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/news/announce.do">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="section" value="${param.section}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group search-row">
					<input class="form-control search-bar" name="searchText" id="searchText" type="text" placeholder="Хайлтын үгээ оруулна уу" value="${param.searchText}">
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
				<tr class="align-middle" style="height:4rem;">
					<td width="100%">
						<!-- <div class="col-2 pr-3">
							<div class="col-12 card bg-navy">
								<div class="card-body">
									<div style="height:100%;"></div>
								</div>
							</div>
						</div> -->
						<div class="col-12">	
							<div class="col-12 mt-1 font-gray font-12">
								<c:choose>
								    <c:when test="${list.section eq 'notice'}">Мэдэгдэл</c:when>
								    <c:when test="${list.section eq 'event'}">Үйл явдал</c:when>
								    <c:when test="${list.section eq 'special'}">Тусгай лекц</c:when>
								    <c:when test="${list.section eq 'etc'}">Гэх мэт</c:when>
								  </c:choose>
							</div>
							<div class="col-12 my-2">
								<a class="font-18" href="/news/annview.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}">${ list.title }</a>
							</div>
							<div class="col-12 mt-1 font-gray font-12">
								<fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/>
							</div>
						</div>
					</td>
				</tr>
				</c:forEach >
			</tbody>
			<tfoot>
			  <tr>
			    <td colspan="3"></td>
			  </tr>  
			</tfoot>
		</table>
		<div class="col-12 paging text-center mb-5">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>



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