<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="항공사지상직채용정보"/>
<meta name="author" content="크루팩토리">
<meta name="keywords" content="항공사지상직채용정보"/>
<meta name="description" content="항공사지상직채용정보" />
<title>상담신청</title>
<%@ include file = "../include/header.jsp" %>
</head>

<header><%@ include file="../include/nav.jsp"%></header>
<body>

<div class="container-fluid">
	<div class="row sm-row site-map-row my-5">
		<div class="col-12 py-4 text-center">
			<div class="font-26 mb-1" id="mobile-100-percent">Зөвлөгөө авах хүсэлт гаргах</div>
			<div class="py-2 line-2-black" style="width:170px; margin:0 auto; margin-bottom: 30px;"></div>
			<div class="text-center" id="mobile-100-percent" style="width:500px;  margin:0 auto;">
				<div class="card">
					<div class="card-body">
						<div class="pt-4 font-22" style="line-height:3rem;">Таны зөвлөгөө авах хүсэлтийг бөглөсөн.</div>
					</div>
					<div class="col-12 my-5 text-center">
						<a href="/"><button type="button" class="btn mx-2 px-4 btn-danger" style="height:3.00rem; margin:0 auto;">Үндсэн дэлгэц рүү шилжих</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<div class="containter-fluid mobile-hidden" style="margin-top:100px;"></div>




<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>