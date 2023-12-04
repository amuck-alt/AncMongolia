<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container-fluid bg-navy">
  <div class="row main-row">
    <div class="col-12 py-5 mb-5" id="footer-outlink">
      <div class="col-4">
        <!-- img src="https://www.crew-factory.com/img/logo-white.png"-->
        <div class="mt-2">
          <ul>
      	  	<li class="float-left px-3"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="https://www.crew-factory.com/img/sns-facebook-ico.png"></a></li>
			  	<li class="float-left px-3"><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="https://www.crew-factory.com/img/sns-instagram-ico.png"></a></li>
			  	<li class="float-left px-3"><a href="https://pf.kakao.com/_QWAEl" target="_blank"><img src="https://www.crew-factory.com/img/sns-kakao-ico.png"></a></li>
			  	<li class="float-left px-3"><a href="https://map.naver.com/v5/entry/place/34589774?c=14140743.5947732,4510655.1054681,15,0,0,0,dh"><img src="https://www.crew-factory.com/img/sns-naver-ico.png"></a></li>
			</ul>
        </div>
      </div>
      <div class="col-8">
        <div class="col-12 my-3">
          <ul>
            <li class="px-3 float-left"><a href="https://www.crew-factory.com/" target="_blank" class="font-white">강남캠퍼스</a></li>
            <li class="px-3 float-left"><a href="http://www.crewfa.com/" target="_blank" class="font-white">인천캠퍼스</a></li>
            <li class="px-3 float-left"><a href="http://www.crewgo3.com/" target="_blank" class="font-white">항공운항과입시</a></li>
            <li class="px-3 float-left"><a href="http://www.crew-gs.com/" target="_blank" class="font-white">항공사지상직</a></li>
            <li class="px-3 float-left"><a href="http://www.crew-gs.com/" target="_blank" class="font-white">여행사취업</a></li>
          </ul>
        </div>
        <div class="col-12">
        	<div class="col-2 mt-2 px-3" id="mobile-100-percent">
        		<p class="font-white"> 강남캠퍼스 </p>
        	</div>
        	<div class="col-10" id="mobile-100-percent">  
	          <ul class="px-3 mt-2 font-10">
	            <li class="font-gray"> ANC크루팩토리승무원학원 (주)에어라인네트워크센터 서울특별시 강남구 강남대로 584, 지하1층 일부(논현동) 학원설립운영등록증 제10204호 </li>
	            <li class="font-gray"> 강남ANC승무원학원 (주)에어라인네트워크센터 서울특별시 강남구 강남대로 584, 지하1층 일부, 2층 일부(논현동) 학원설립운영등록증 제11832호 </li>
	          </ul>
	          <ul class="px-3 mt-1 font-10">
	            <li class="font-gray"><span> tel. 02-2038-0065 </span><span class="mx-4"> fax. 02-512-1467 </span><span class="mx-4"> 직업소개사업 등록번호 서울지방고용노동청 F1200020220004 </span><a href="/detail/fee1.do" target="_blank" class="font-gray"> 수강료안내 </a></li>
	          </ul>
	        </div>
          <div class="col-2 mt-2 px-3" id="mobile-100-percent">
        		<p class="font-white"> 인천캠퍼스 </p>
        	</div>
        	<div class="col-10" id="mobile-100-percent">  
	          <ul class="px-3 mt-2 font-10">
	            <li class="font-gray"> 인천광역시 부평구 경원대로 1382 대한빌딩 5층 </li>
	          </ul> 
	          <ul class="px-3 mt-1 font-10">
	            <li class="font-gray"><span> tel. 032-502-3356 </span><span class="mx-4"> fax. 032-361-3346 </span><a href="/detail/fee3.do" target="_blank" class="font-gray"> 수강료안내 </a></li>
	          	 <li class="font-gray"> 사업자번호: 122-92-50071 &nbsp; &nbsp; &nbsp; &nbsp; 지점장: 박탄 &nbsp; &nbsp; &nbsp; &nbsp; 개인정보관리책임자: 박탄 </li>
	          </ul>
	        </div>
	        <div class="col-2 mt-2 px-3" id="mobile-100-percent">
        		<p class="font-white"> 부산캠퍼스 </p>
        	</div>
        	<div class="col-10" id="mobile-100-percent">  
	          <ul class="px-3 mt-2 font-10">
	            <li class="font-gray"> 부산광역시 진구 전포대로 199번길 43 한일빌딩 2층 학원설립운영등록번호 제2503호 </li>
	          </ul>
	          <ul class="px-3 mt-1 font-10">
	            <li class="font-gray"><span> tel. 051-803-0004 </span><span class="mx-4"> fax. 051-803-8812 </span><a href="/detail/fee1.do" target="_blank" class="font-gray"> 수강료안내 </a></li>
	          	 <li class="font-gray"> 사업자번호: 605-81-39838 &nbsp; &nbsp; &nbsp; &nbsp; 통신판매번호: 2014-부산부산진-0363 &nbsp; &nbsp; &nbsp; &nbsp; 직업소개사업 등록번호 부산지방고용노동청 제2019-2호 &nbsp; &nbsp; &nbsp; &nbsp; 대표이사(개인정보관리책임자): 김승환 </li>
	          </ul>
	        </div>
        </div>
        <div class="col-12 px-3 mt-5 font-white">Copyright ⓒ  백아(주), All rights reserved.</div>  
      </div>
    </div>
  </div>
</div>


<%@page import="java.net.URLEncoder, java.net.URLDecoder" %>
<%
	String visiter_refer = request.getHeader("referer");
	String visiter_ipaddr = request.getRemoteAddr();
	String visiter_agent = request.getHeader("User-Agent");
	String visiter_domain = request.getServerName();
	String getParam = request.getQueryString();	
	String currentUrl = "http://" + request.getServerName() + request.getAttribute("javax.servlet.forward.request_uri");  
	if(getParam != null){
		currentUrl = currentUrl + "?" + getParam;
	}
%>
<script>
	$(document).ready(function(){
		var dec = decodeURI("<%=visiter_refer%>");
		var dec2 = decodeURI("<%=currentUrl%>");
		console.log(dec);
		console.log("<%=visiter_ipaddr%>");
		if(dec != 'null' || dec != null || dec != ''){
			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: "/visit/counter.do",
				data: JSON.stringify({
				ipaddr : "<%=visiter_ipaddr%>",
				path : dec,
				current : dec2,
				domain : "<%=visiter_domain%>",
				agent : "<%=visiter_agent%>",
			}),
				dataType: 'json',
				error: function (e) { }	
			});
		}
	});
</script>


<!-- Smartlog -->
<script type="text/javascript">
var hpt_info={'_account':'UHPT-15933'};
</script>
<script src="//a21.smlog.co.kr/smart.js" charset="utf-8"></script>
<noscript><img src="//a21.smlog.co.kr/smart_bda.php?_account=15933" style="display:none;width:0;height:0;" border="0"/></noscript>


