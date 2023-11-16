<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<title>수험번호출력</title>
<link rel="stylesheet" href="/dist/css/hover.css">
<link rel="stylesheet" href="/dist/css/bootstrap.css">
<link rel="stylesheet" href="/vendor/swiper/css/swiper.css">
<link rel="stylesheet" href="/vendor/swiper/css/swiper.min.css">
<link rel="stylesheet" href="/vendor/wow/animate.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css">
<link rel="stylesheet" href="/css/cfw-sub-style.css">
<link rel="stylesheet" href="/css/cfw-fonts.css">
<link rel="stylesheet" href="/css/cfw-min-style.css">
<link rel="stylesheet" href="/css/cfw-sub-style-mobile.css">


<script src="/js/cfw-common.js"></script>
<script src="/dist/js/jquery.min.js"></script>
<script src="/dist/js/jquery-ui.min.js"></script>
<script src="/dist/js/bootstrap.min.js"></script>
<script src="/vendor/swiper/js/swiper.js"></script>
<script src="/vendor/swiper/js/swiper.min.js"></script>
<script src="/vendor/slick/slick.min.js" type="text/javascript"></script>
<script src="/vendor/wow/wow.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<table class="mx-1 my-1" width="500" height="500" cellspacing="5" cellpadding="20" border="2" bordercolor="black">
			<tr>
				<td colspan="2" height="100" class="font-bold text-center" style="font-size:40px;">수 험 표</td>
			</tr>
			<tr>
				<td width="150" height="300" class="text-center py-3" style="font-size:40px;">NO</td>
				<td width="350" height="300" class="text-center py-3 font-bold" style="font-size:120px;">${stunum}</td>
			</tr>
			<tr>
				<td height="150" class="text-center" colspan="2"><img src="/images/logo.jpg" width="200"></td>
			</tr>
		</table>
	</div>
	<!-- div class="my-1" style="width:500px;">
		<div class="col-12 my-3 text-center">
			<button onclick="javascript:window.print();" type="button" class="btn mx-2 px-4 btn-primary" style="height:3.00rem; margin:0 auto;">수험표출력</button>
			<button onclick="javascript:window.close();" type="button" class="btn mx-2 px-4 btn-danger" style="height:3.00rem; margin:0 auto;">닫기</button>
		</div>			
	</div-->
</div>

<script>
	$(document).ready(function(){
		window.print();
		//window.close();
	});
</script>

	
</body>
</html>