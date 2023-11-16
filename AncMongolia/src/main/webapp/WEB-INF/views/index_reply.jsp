<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="/vendor/vticker/jquery.vticker-min.js"></script>

<style>
.live-reply-container ul li { height:120px; border:#f6f6f6; border-bottom:1px solid #eaeaea; }
.live-reply-container ul li:first-child { background-color:#f6f6f6; }

.txt_post { display: -webkit-box; display: -ms-flexbox; display: box; margin-top:1px; max-height:55px; overflow:hidden; vertical-align:top; text-overflow: ellipsis; word-break:break-all; -webkit-box-orient:vertical; -webkit-line-clamp:3 }

</style>

<div class="container-fluid my-5">
	<div class="row sm-row my-5">	
		<div class="col-12 text-center"><img src="/img/img-main-reply-title.png" class="mobile-100-percent"></div>
		<div class="col-12">			
			<div class="col-12 line-2"></div>
			<div class="col-12 live-reply-container">
				<ul>
				<c:forEach items="${reply}" var="reply">
					<li class="col-12">
						<div class="col-12 py-3 px-4">
							<div class="col-12 pb-2 font-lightgray">
								<c:choose>
									<c:when test="${reply.section eq '인스타그램'}"><img src="/img/ico-instagram.png" width="20px"><span class="mx-2">인스타그램</span></c:when>
									<c:when test="${reply.section eq '페이스북'}"><img src="/img/ico-facebook.png" width="20px"><span class="mx-2">페이스북</span></c:when>
									<c:when test="${reply.section eq '지인추천'}"><img src="/img/ico-recommend.png" width="20px"><span class="mx-2">지인추천</span></c:when>
									<c:otherwise><img src="/img/ico-website.png" width="20px"><span class="mx-2">홈페이지방문</span></c:otherwise>
								</c:choose>								
								<span class="mx-2 font-blue">★★★★★</span></div>
							<div class="col-12 font-18 txt_post" style="line-height:26px;">${fn:substring(reply.content, 0, 120)}</div>
							<%-- <div class="col-12 pt-3"><span class="mr-2">by ***</span><span class="mx-3 font-lightgray">${reply.regdate}</span></div> --%>
							<!-- <div class="col-12 pt-3 line-1-gray"></div> -->
						</div>
					</li>
				</c:forEach>
				</ul>
			</div>
			<div class="col-12 line-2"></div>	
		</div>
		<!-- <div class="col-12 mt-5"><a href="/crewpeople/reply.do"><button class="btn btn-lg btn-primary">리뷰 더보기</button></a></div> -->
	</div>
</div>

<div class="container-fluid" style="height:100px;" class="mobile-hidden"></div>

<script>
$(".live-reply-container").vTicker({showItems: 4, pause: 2500});
</script>