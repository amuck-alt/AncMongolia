<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container-fluid py-4"></div>
<div class="container-fluid">
	<div class="row sub-row pt-5 pb-4">
		<div class="col-12">
			<div class="col-12 text-center">
				<p class="font-bold font-40">ANC PEOPLE</p>
			</div>
			<div class="col-12 text-center"><span class="font-40 font-pink">_</span></div>
			<div class="col-12 text-center my-3">
				<span class="mx-4 font-14 font-gray font-normal">Онгоцны үйлчлэгчийн мэргэшсэн сургалт</span>
			</div>
		</div>
	</div>
</div>

<!-- PC화면 -->
<div class="container-fluid">
	<div class="row sub-row">
		<ul class="col-12 my-3">
			<c:forEach items="${blog}" var="blog"  varStatus="status">
			<li class="col-6 px-3 py-4 float-left mobile-100-percent">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<div class="col-12 px-3"><a href="/crewpeople/wearev.do?idx=${blog.idx}"><img src="${blog.thumbnail}" width="100%" height="350px" class="rad-div"></a>
							</div>
							<div class="col-12 px-3">
								<p class="font-18 mt-2"><strong>${fn:substring(blog.title, 0, 120)}...</strong>&nbsp;<label class="ml-2 hot-dot"></label></p>
								<p class="font-14 font-gray my-3 mobile-hidden">${fn:substring(blog.description, 0, 120)}...</p>
								<div class="col-12 my-2"><a href="/crewpeople/wearev.do?idx=${blog.idx}"><span class="font-14 font-under-line font-black font-bold">more...</span></a><span class="img_bizcenter"></span></div>
							</div>
						</div>
					</div>
				</div>
			</li>
			</c:forEach>
		</ul>
	</div>
</div>
<div class="container-fluid my-5 py-5"></div>
