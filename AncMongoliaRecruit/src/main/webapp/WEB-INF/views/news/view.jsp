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



<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12 mt-4">
			<div class="col-fix-6 text-left">
				<a href="/news/list.do?startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}"><label class="re-label">Жагсаах</label></a>
			</div>
<!-- 			<div class="col-fix-6 text-right">
				<label class="re-label">이전</label><span class="px-1"></span><label class="re-label">다음</label>
			</div> -->
		</div>
	</div>
</div>

<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-3 line-2-black"></div>
		<div class="col-12">			
			<div class="col-12 px-2 font-24 font-bold">${ result.title }</div>
			<div class="col-12 px-2 pt-2 font-14 font-gray" class="mobile-100-percent"><fmt:formatDate value="${result.regdate}" pattern="yyyy-MM-dd"/></div>
		</div>
		<div class="col-12 px-2 line-1-gray my-3"></div>
		<div class="col-12 px-2 ck-content" id="bbs-content">
			${result.content}
		</div>
	</div>				
</div>

<div class="container-fluid" style="height:10rem;"></div>

<footer><%@ include file = "../include/footer.jsp" %></footer>

<script src="/editor/build/ckeditor.js"></script>
<script src="/editor/src/cke-config-by-web.js"></script>

</body>
</html>