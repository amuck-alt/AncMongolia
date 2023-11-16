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
<title>지원현황조회</title>
<%@ include file = "../include/header.jsp" %>
</head>
<body>

<header><%@ include file = "../include/nav.jsp" %></header>


<div class="container-fluid">
	<div class="row sm-row site-map-row my-4">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">Програмын статусыг шалгана уу</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm2-row mt-3 mb-5">
		<div class="col-12">
			<div class="card bg-light-gray">
				<div class="card-body">
					<c:choose>
						<c:when test="${limit eq 'BLOCK'}">
						<div class="col-12 my-3 mx-3">
							<ul>
								<li class="col-12 my-4 text-center font-22 font-pink">Ярилцлагын хязгаар хэтэрсэн байна.</li>
								<li class="col-12 my-2 text-center font-20">Өргөдлийн статусын лавлагаанд ярилцлагын огноог дахин сонгоно уу..</li>
							</ul>
						</div>
						</c:when>
						<c:otherwise>
						<div class="col-12 my-3 mx-3">
							<ul>
								<li class="col-12 my-4 text-center font-22 font-pink">Ярилцлагын огнооны сонгон шалгаруулалт дууслаа</li>
								<li class="col-12 my-2 text-center font-20">Ярилцлагын огноо<span class="mx-1"></span>:<span class="mx-1"></span>${param.intvday }<span class="mx-1"></span>${param.intvtime}시</li>
								<li class="col-12 my-2 text-center font-20">Ярилцлагын байршил<span class="mx-1"></span>:<span class="mx-1"></span>${param.intvloc }</li>
							</ul>
						</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="col-12 my-5 text-center">
				<a href="/counsel/online.do"><button type="button" class="btn mx-2 px-4 btn-primary" style="height:3.00rem; margin:0 auto;">Хувийн мэдээллийг оруулна уу</button></a>
				<a href="/"><button type="button" class="btn mx-2 px-4 btn-danger" style="height:3.00rem; margin:0 auto;">Үндсэн дэлгэц рүү шилжих</button></a>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid" style="height:400px;"></div>


<footer><%@ include file = "../include/footer.jsp" %></footer>


<script>

$(document).ready(function() {
       

});

</script>

</body>
</html>