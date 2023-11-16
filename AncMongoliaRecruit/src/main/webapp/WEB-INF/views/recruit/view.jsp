<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="항공사지상직채용정보"/>
<meta name="author" content="크루코리아">
<meta name="keywords" content="항공사지상직채용정보"/>
<title>${result.title}</title>
<meta name="description" content="${result.description}"/>
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<header><%@ include file = "../include/nav.jsp" %></header>

<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="thisDayTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH" /></c:set>

<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12 mt-4">
			<div class="col-fix-6 text-left">
				<a href="/recruit/list.do?startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}"><label class="re-label">Жагсаах</label></a>
			</div>
		</div>
	</div>
</div>

         
<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-3 line-2-black"></div>
		<div class="col-12 px-2">			
			<div class="col-12 my-1">
				<span class="font-24">${ result.title }</span>
			</div>
			<div class="col-12 my-2 font-16 font-gray">
				<span class="">마감 : </span><span class="mx-2">${result.stdaytime }시 ~ ${result.enddaytime }시</span>
				<c:choose>
					<c:when test="${thisDayTime <= result.stdaytime}"><span class="ml-4 tiny-label bg-pink">waiting</span></c:when>
					<c:when test="${thisDayTime >= result.enddaytime}"><span class="ml-4 tiny-label bg-navy">end</span></c:when>
					<c:otherwise><span class="ml-4 tiny-label bg-pink">in process</span></c:otherwise>
				</c:choose>
			</div>
			<c:if test="${'' ne result.filepath}">
			<div class="col-12 my-2 font-16">
				<!-- <span class="">첨부파일 :</span> --><span class="mx-2"><a href="/data/download.do?filepath=${result.filepath}&filename=${result.filename}">${result.filename}</a></span><!-- <span class="font-red">(유니스카이 지정 서식 다운로드)</span> -->
			</div>
			</c:if>
		</div>
		<div class="col-12 px-2 line-1-gray my-3"></div>
		<div class="col-12 px-2 ck-content" id="bbs-content">${result.content}</div>
		<div class="col-12 px-2 pt-5 my-5">
			<c:url value="/ehr/propose.do" var="url">
				<c:param name="catenum" value="${result.idx }"/>
				<c:param name="title" value="${result.title }"/>
				<c:param name="resumeyn" value="${result.resumeyn }"/>
			</c:url>
			<c:choose>
					<c:when test="${thisDayTime >= result.enddaytime}"></c:when>
					<c:otherwise><a href="${url }"><button type="button" class="btn btn-primary btn-lg btn-block font-22" style="height:4.00rem;">Ажилд авах дэмжлэг</button></a></c:otherwise>
			</c:choose>			
		</div>
	</div>				
</div>

<div class="container-fluid" style="height:10rem;"></div>

<footer><%@ include file = "../include/footer.jsp" %></footer>

<script src="/editor/build/ckeditor.js"></script>
<script src="/editor/src/cke-config-by-web.js"></script>

</body>
</html>