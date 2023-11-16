<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-수강료조회</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>



<div class="container-fluid swip-banner-container">
	<div class="row cf-row">
		<div class="col-md-12">
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row cf-row site-map-row">
		<div class="col-md-12">
			<ul>
				<li class="font-12 font-gray">Home</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-gray">상담센터</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-bold">수강료조회</li>
			</ul>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row cf-row">	
		<div class="col-md-9">
			<div class="col-12">
				<p class="font-30 font-gray font-bold">수강료 및 교육프로그램 상담</p>
				<!-- p class="my-3">크루팩토리 승무원아카데미 직무 컨설팅 및 진로상담은 무료입니다.<br>
					정확한 컨설팅을 위하여 컨설팅 받으시고자하는 내용을 선택해 주세요.<br>
					신청후 24시간안에 컨설팅전문가가 무료로 도와드릴 것 입니다.</p-->			
			</div>
			<div class="col-12 my-4 line-2"></div>
			<form role="form">
			<div class="col-12 row">
				<div class="col-md-6 mb-2">
					<div class="my-2 font-bold">개인정보입력</div>
						<div class="card col-12">
						<div class="card-body">
							<div class="form-group">
		                      <label for="name" class="font-bold">이름</label>
		                      <input type="text" class="form-control" name="name" id="name" placeholder="이름" required>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
					        <div class="form-group">
		                      <label for="input-gender" class="font-bold">연락처</label>
		                      <div class="input-group">
		                        <select class="form-control mr-2" id="mobile-1" name="mobile-1">
		                          <option value="010">010</option>
		                        </select>
			                    <input type="text" class="form-control input-group-append mr-2" name="mobile-2" id="mobile-2" required>
			                    <input type="text" class="form-control input-group-append" name="mobile-3" id="mobile-3" required>
			                  </div>
			                  <div class="help-block with-errors text-danger"></div>
			                </div>
							<div class="form-group">
		                      <label class="font-bold">문의내용</label>
		                      <textarea class="form-control" name="policy" id="policy" rows="4"></textarea>
		                    </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 mb-2">
					<div class="my-2 font-bold">상담정보입력</div>
						<div class="card col-12">
						<div class="card-body">
							<div class="input-group">
			                    <div class="form-group" style="width:50%;">
			                      <label class="font-bold">희망지원분야</label>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">대한항공</label>
			                      </div>
								  <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">아시아나항공</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">국내LCC항공</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">외국항공사</label>
			                      </div>
			                    </div>
			                    <div class="form-group" style="width:50%;">
			                      <label class="font-bold">상담관심분야</label>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">이미지</label>
			                      </div>
								  <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">나이</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">외국어능력</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">신체조건</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">비전공</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="custom-control-input">
			                          <label for="hopke" class="custom-control-label">기타</label>
			                      </div>
			                    </div>
		                    </div>
		                    <div class="form-group">
		                      <label class="font-bold">개인정보활용동의</label>
		                      <textarea class="form-control" name="policy" id="policy" rows="3"></textarea>
		                    </div>
		                    <div class="form-group">
		                    	<button class="btn btn-primary btn-lg btn-block" id="req-cs" type="button">상담신청하기</button>
		                    </div>
						</div>
					</div>
				</div>	
			</div>
			</form>
		</div>
		<div class="col-md-3">
			<div class="col-md-12">
				<div class="my-9"></div>
				<div class=""><a href="" class="hvr-shadow"><img src="../img/sub-left-tel-btn.png"></a></div>
				<div class="my-2"></div>
				<div class="left-ban">
					<ul>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-faq-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-nation-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-map-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-check-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
</div>

<script>

	

</script>
<script src="../dist/js/bootstrap.min.js"></script>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<footer>

</footer>

</body>
</html>