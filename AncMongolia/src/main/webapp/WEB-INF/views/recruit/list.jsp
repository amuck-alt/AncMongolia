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

<div class="container-fluid mt-5">
	<div class="row sm-row">
	  <div class="col-12">
	    <div class="col-4 mb-1 font-30 font-bold mobile-100-percent">Ажил эрхлэлт</div>
	    <div class="col-8 py-2 mobile-100-percent font-16 font-gray"></div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>


<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-2">
			<c:set var="now" value="<%=new java.util.Date()%>" />
            <c:set var="thisDayTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH" /></c:set>
			<c:forEach items="${result}" var="list" >
				<ul class="col-12 align-middle line-1-gray">
					<li class="col-4 px-2 py-3 mobile-100-percent">
						<a href="/recruit/view.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><img src="${list.thumbnail}" class="align-middle rad-div-10" width="100%"></a>
					</li>
					<li class="col-8 px-3 py-3 mobile-100-percent">
					  <div class="font-20 align=middle py-4">
					    <a href="/recruit/view.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}">${ list.title }</a>
					  </div>
					  <div class="col-12 my-2 font-16 font-gray">
							<span class="mx-2">${list.stdaytime } ~ ${list.enddaytime }</span>
							<c:choose>
								<c:when test="${thisDayTime <= list.stdaytime}"><span class="ml-2 tiny-label px-3 pt-1 pb-2 bg-navy">waiting</span></c:when>
								<c:when test="${thisDayTime >= list.enddaytime}"><span class="ml-2 tiny-labe pt-1 pb-2 bg-gray">end</span></c:when>
								<c:otherwise><span class="ml-4 tiny-label pt-1 pb-2 bg-pink">in progress</span></c:otherwise>
							</c:choose>
						</div>
					</li>
				</ul>
			</c:forEach >
		</div>
		<div class="col-12 paging text-center mb-5">
		  <ul class="pagination pagination-sm" id="pagination"></ul>
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