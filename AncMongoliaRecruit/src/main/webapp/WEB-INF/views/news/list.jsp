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
<title>공지사항</title>
<%@ include file = "../include/header.jsp" %>
</head>
<body>

<header><%@ include file = "../include/nav.jsp" %></header>


<div class="container-fluid">
	<div class="row sm-row site-map-row my-5">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">Мэдэгдэл</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm2-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/news/list.do">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="section" value="${param.section}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group search-row">
					<input class="form-control search-bar" name="searchText" id="searchText" type="text" placeholder="Хайлтын үгээ оруулна уу" value="${param.searchText}">
					<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="/images/ico-search-wh.png"></button>
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
					<%-- <td width="20%" id="bbs-thumbnail"><img src="/docs/bbs/${list.thumbnail}" class="align-middle" style="width:250px;"></td> --%>
					<!-- td width="60px">
						<span class="sm-label">
					  	<c:choose>
					    	<c:when test="${list.section eq 'notice'}">공지</c:when>
					    	<c:when test="${list.section eq 'event'}">행사</c:when>
					    	<c:when test="${list.section eq 'special'}">특강</c:when>
					    	<c:when test="${list.section eq 'etc'}">기타</c:when>
					    	<c:otherwise>공지</c:otherwise>
					  	</c:choose>
					  </span>
					</td-->
					<td>
					  <span class="font-20 align=middle py-4">
					    <a href="/news/view.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}">${ list.title }</a>
					  </span>
					</td>
					<td width="15%"><span class="font-18 mobile-hidden float-right"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></span></td> 
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