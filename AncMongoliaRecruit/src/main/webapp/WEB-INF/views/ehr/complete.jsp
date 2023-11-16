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
<title>항공사지상직채용정보</title>
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
<link rel="stylesheet" href="/dist/css/pagination.css"><!-- Pagination -->
<link rel="stylesheet" href="/editor/src/content-styles.css" type="text/css"><!-- 웹에디터용 CSS -->

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
<%@ include file="../include/nav.jsp"%>
<%--@ include file="../include/floating-left.jsp"--%>
<div class="container-fluid bg-light-gray">
	<div class="row sm-row">
		<div class="col-12 mt-5 mb-4">
			<div class="col-12 font-26 mb-1 " id="mobile-100-percent">지원서류접수</div>
			<div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
		<div class="col-12 mt-5 text-center">
			<c:choose>
				<c:when test="${param.result eq 'already' }">
					<div class="col-12 my-2" id="mobile-100-percent">
						<p class="my-5 font-26">이미 지원한 이력이 있습니다.</p>
						<p class="font-20">서류전형에 대한 결과는 지원현황조회를 통해 확인하실수 있습니다.</p>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-12 my-2" id="mobile-100-percent">
						<p class="my-5 font-26">지원이 완료되었습니다.</p>
						<p class="font-20">서류전형에 대한 결과는 지원현황조회를 통해 확인하실수 있습니다.</p>
					</div>
				</c:otherwise>
			</c:choose>
			<div class="col-12 my-5 text-center">
				<a href="/counsel/online.do"><button type="button" class="btn mx-2 px-4 btn-primary" style="height:3.00rem; margin:0 auto;">상담신청</button></a>
				<a href="/"><button type="button" class="btn mx-2 px-4 btn-danger" style="height:3.00rem; margin:0 auto;">메인으로</button></a>
			</div>
		</div>
		<div class="col-12 py-5"></div>
	</div>
</div>


<script>

	$("#upload-tn").click(function (e) {
			e.preventDefault();
			$("#photo").click();
		});	
	
	$(document).ready(function(){
		$("#photo").on("change", handleImageFileSelect);
	});
	
	function handleImageFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#wrapper-tn").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction() {
		$("#wrapper-tn").attr("src", "/admin/images/photo-sample.jpg");
		$("#photo").val("");
	}
	
	function onFormSbmt() {
	
		if($('input[name=photo]').val() == "") {
			alert("프로필사진을 첨부하세요");
			return false;
		} else {
			return true;
		}
	}

</script>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</body>