<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-상담신청</title>
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
	    <div class="col-3 mb-1 font-30 font-bold mobile-100-percent">자주묻는질문</div>
	    <div class="col-9 py-2 mobile-100-percent font-16 font-gray">FAQ</div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="faq-search col-md-12">
				<form role="form" name="frmSearch" id="frmSearch">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="section" value="${param.section}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group faq-search-row">
					<input class="form-control faq-search-bar" name="search" id="search" type="text" placeholder="질문검색">
					<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="../img/ico-search-wh.png"></button>
					</div>
				</div>
				<!-- div class="faq-search-row my-2 font-12">
					<label>대한항공 승무원 스펙</label>
					<label class="mx-1">,</label>
					<label>외국항공사 자기소개서 양식</label>
					<label class="mx-1">,</label>
					<label>대한항공 승무원 연봉</label>
				</div-->
				</form>				
			</div>
			<div class="col-12 my-2"></div>
<%-- 			<div class="col-12 font-16 font-bold table-header">
				<ul class="col-12">
					<li class="<c:if test="${ param.section eq '' or 'all' }">now</c:if>"><a href="/counsel/faq.do?section=&search=">전체보기</a></li>
					<li class="<c:if test="${ param.section eq '01' }">now</c:if>"><a href="/counsel/faq.do?section=01&search=">객실승무원</a></li>
					<li class="<c:if test="${ param.section eq '02' }">now</c:if>"><a href="/counsel/faq.do?section=02&search=">항공운항과입시</a></li>
					<li class="<c:if test="${ param.section eq '03' }">now</c:if>"><a href="/counsel/faq.do?section=03&search=">항공사지상직</a></li>
					<li class="<c:if test="${ param.section eq '04' }">now</c:if>"><a href="/counsel/faq.do?section=04&search=">여행사/관광통역사</a></li>
					<li class="<c:if test="${ param.section eq '99' }">now</c:if>"><a href="/counsel/faq.do?section=99&search=">기타</a></li>
				</ul>
			</div> --%>
			<table class="table table-striped">
				<tbody>
					<c:forEach items="${result}" var="list" >
					<tr class="align-middle" id="question-${ list.idx }">
						<td width="40px"><img src="../img/faq-ico-q-btn.png"></td>
						<td width="" class="align-middle font-20"><a href="/counsel/faqv.do?idx=${ list.idx }&search=${param.section}">${ list.question }</a></td>
						<!-- td width="40px">
							<img id="q-arr-d-${ list.idx }" src="../img/faq-ico-d-arr-btn.png">
							<img id="q-arr-u-${ list.idx }" src="../img/faq-ico-u-arr-btn.png" style="display:none;">
						</td-->
					</tr>
					</c:forEach >
				</tbody>
			</table>
		</div>
		<div class="col-12 paging text-center">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>

<script>

	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	
	var totalPages = ${totalPage};	//전체 페이지
	var visiblePages = 10;			//리스트 보여줄 페이지
	var startPage = ${startPage};	//현재 페이지
	 
	$('#pagination').twbsPagination({
	    totalPages: totalPages,
	    visiblePages: visiblePages,
        startPage: startPage,
        onPageClick: function (event, page) {
        	$('#startPage').val(page);//보고 싶은 페이지
        	$('visiblePages').val(visiblePages);
        	$("#frmSearch").submit();
        }
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