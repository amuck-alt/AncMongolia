<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container-fluid py-4"></div>
<div class="container-fluid">
	<div class="row sub-row pt-5 pb-4">
		<div class="col-12">
			<div class="col-12 text-center">
				<p class="font-bold font-40">ANC NEWS</p>
			</div>
			<div class="col-12 text-center"><span class="font-40 font-pink">_</span></div>
			<!-- <div class="col-12 text-center pt-4">
				<div class="text-center" style="width:400px; margin:0 auto;">
					<label class="rad-div-20 border bg-navy font-white px-4 pt-2 pb-3 mx-1 font-14">ALL</label>
					<label class="rad-div-20 border bg-white font-gray px-4 pt-2 pb-3 mx-1 font-14">Мэдэгдэл</label>
					<label class="rad-div-20 border bg-white font-gray px-4 pt-2 pb-3 mx-1 font-14">Ажил эрхлэлт</label>
				</div>
			</div> -->
		</div>
	</div>
</div>
<div class="container-fluid pb-5">
	<div class="row sub-row py-3">
		<div class="col-12">
			<div class="col-12">
				<ul class="sm-row">
					<c:forEach items="${announce}" var="news"  varStatus="status">
						<div class="col-12 py-4 line-1-gray">
							<ul class="">
								<li class="float-left px-2 font-20"><a href="/news/annview.do?idx=${news.idx}">
									<strong>${fn:substring(news.title, 0, 80)}</strong>&nbsp;<label class="ml-2 hot-dot"></label></a>
								</li>
								<li class="float-right pt-1 px-2 font-14 font-gray align-right"><fmt:formatDate value="${news.regdate}" pattern="yyyy-MM-dd"/></li>
							</ul>
						</div>
					</c:forEach>
				</ul>
			</div>	
		</div>
	</div>
</div>
<div class="container-fluid py-4"></div>