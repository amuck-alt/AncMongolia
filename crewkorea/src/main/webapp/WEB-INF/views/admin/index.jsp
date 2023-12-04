<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import = "java.text.SimpleDateFormat, java.util.Date, java.util.Calendar, java.util.GregorianCalendar, java.util.Locale, java.net.URLDecoder" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<% 
String searchDay = request.getParameter("searchDay");		
//오늘
Date today = new Date();        
SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
String toDay = date.format(today);

//하루 전
Calendar day = Calendar.getInstance();
day.add(Calendar.DATE , -1);
String yesterDay = new java.text.SimpleDateFormat("yyyyMMdd").format(day.getTime());

//이틀전 전
day.add(Calendar.DATE , -1);
String bfYesterDay = new java.text.SimpleDateFormat("yyyyMMdd").format(day.getTime());

if(searchDay == null || searchDay == ""){
	searchDay = toDay;
}
	

		
%>

<!DOCTYPE html>
<html>

<head>
<%@ include file = "./include/header.jsp" %>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <%@ include file="./include/nav-bar.jsp" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <%@ include file="./include/side-bar.jsp" %>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row mb-3">
          	<div class="col-md-12">
          		<div class="card">
          			<div class="card-body">
          				<ul class="col-12" style="height:70px; list-style:none;">
          					<li class="float-left"><img src="/admin/pack/calendar-ico.png"></li>
          					<li class="float-left" style="margin-left:50px;">
          						<p class="mb-2">Start Date</p>
          						<div class="dropdown">
                              <a class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium" href="#" role="button" id="dropdownMenuLinkA" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <h3 class="mb-0 d-inline-block"><%=searchDay%></h3>
                              </a>
                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLinkA">
                                <a class="dropdown-item" href="/manager/index.do?opt=today&searchDay=">오늘</a>
                                <a class="dropdown-item" href="/manager/index.do?opt=yesterday&searchDay=<%=yesterDay%>">1일전</a>
                                <a class="dropdown-item" href="/manager/index.do?opt=yesterday&searchDay=<%=bfYesterDay%>">2일전</a>
                              </div>
                           </div>
          					</li>
          				</ul>
          				<hr>
          				<ul class="mt-4" style="height:70px; list-style:none;">
          					<li class="float-left" style="width:200px;">
          						<h5>상담신청&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;${overview.ov_counsel_count_check}명</h5>
          					</li>
          					<li class="float-left" style="width:200px;">
          						<h5>회원가입&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;${overview.ov_membership_count_new}명</h5>
          					</li>
          					<li class="float-left" style="width:200px;">
          						<h5>사이트방문&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;${overview.ov_visiter_count}명</h5>
          						<span class="mr-2">데스크탑(${overview.ov_visiter_count_pc})</span>
          						<span class="ml-2">모바일(${overview.ov_visiter_count_m})</span>
          					</li>
          				</ul>
          			</div>
          		</div>
          	</div>
          </div>
          <div class="row">
            <div class="col-md-2">
	            <div class="card mb-3">
	                <div class="card-body text-center">
	                  <!-- <img src="/admin/pack/naver-search-ico.png" width="40px"> -->
	                  <h5 class="">네이버검색</h5>
	                  <h5 class="mt-3">${total.total_naver_search}</h5>
	                </div>
	            </div>
            </div>
            <div class="col-md-2">
	            <div class="card mb-2">
	                <div class="card-body text-center">
	                	<!-- <img src="/admin/pack/naver-cafe-ico.png" width="40px"> -->
	                  <h5 class="">카페</h5>
	                  <h5 class="mt-3">${total.total_naver_cafe}</h5>
	                </div>
	            </div>
            </div>
            <div class="col-md-2">
	            <div class="card mb-2">
	                <div class="card-body text-center">
	                	<!-- <img src="/admin/pack/naver-blog-ico.png" width="40px"> -->
	                  <h5 class="">네이버블로그</h5>
	                  <h5 class="mt-3">${total.total_naver_blog}</h5>
	                </div>
	            </div>
            </div>
            <div class="col-md-2">
	            <div class="card mb-2">
	                <div class="card-body text-center">
	                	<!-- <img src="/admin/pack/naver-kin-ico.png" width="40px"> -->
	                  <h5 class="">지식인</h5>
	                  <h5 class="mt-3">${total.total_naver_kin}</h5>
	                </div>
	            </div>
            </div>
            <div class="col-md-2">
	            <div class="card mb-2">
	                <div class="card-body text-center">
	                  <h5 class="">구글, 다음</h5>
	                  <h5 class="mt-3">${total.total_google + total.total_daum}</h5>
	                </div>
	            </div>
            </div>
            <div class="col-md-2">
	            <div class="card mb-2">
	                <div class="card-body text-center">
	                  <h5 class="">SNS</h5>
	                  <h5 class="mt-3">${total.total_sns}</h5>
	                </div>
	            </div>
            </div>
          </div>
          
          
          <div class="row mt-1">
            <div class="col-md-6 stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title">금일예약현황</p>
                  <div class="table-responsive">
                    <table id="tabler1" class="table table-striped table-bordered table-sm">
                      <thead>
                        <tr style="padding:0px 0px; background-color:#0066cc;">
                        	<th width="22%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">이름</th>
                            <th width="6%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">나이</th>
                            <th width="25%" style="font-size: 13px; padding:15px 10px; text-align:center;">연락처</th>
                            <th width="25%" style="font-size: 13px; padding:15px 10px; text-align:center;">상담일시</th>
                            <th width="22%" style="font-size: 13px; padding:15px 10px; text-align:center;">상담사</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${resrv}" var="list">
                        <tr>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;"><a href="/manager/reservation/view.do?idx=${list.idx}">${list.cus_name}</a></td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cus_age}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cus_mobile}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cons_time}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cons_manager}</td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-6 stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title">공지사항</p>
                  <div class="table-responsive">
                    <table id="tabler2" class="table table-striped table-bordered table-sm">
                      <thead>
                        <tr style="padding:0px 0px; background-color:#0066cc;">
                        	<th width="22%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">제목</th>
                            <th width="6%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">등록일자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${notice}" var="list">
                        <tr>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;"><a href="/manager/notice/view.do?idx=${list.idx}">${list.title}</a></td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
          
          
          
          
          <div class="row mt-3">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title">최근방문자현황</p>
                  <div class="table-responsive">
                    <table id="recent" class="table">
                      <thead>
                        <tr>
                            <th>일자</th>
                            <th>IP</th>
                            <th>유효성</th>
                            <th>키워드</th>
                            <th>접속도메인</th>
                            <th>접속플랫폼</th>
                            <th style="width:300px;">유입경로</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${recent}" var="recently">
									<c:set var = "str" value = "${recently.domain }"/>
									<c:set var = "indexstr" value = "${fn:indexOf(str, 'www')}"/>
							    	<c:set var = "length" value = "${fn:length(str)}"/>
							    	<c:set var = "substr" value = "${fn:substring(str, length -1, length)}" />
	                        <tr>
	                            <td>${recently.regdate }</td>
	                            <td>${recently.ipaddr}</td>
	                            <td>
	                            	<c:choose>
	                            		<c:when test="${recently.counsel >= 1 }">상담신청</c:when>
	                            		<%-- <c:when test="${recently.member >= 1 }">회원</c:when> --%>
	                            		<c:otherwise></c:otherwise>
	                            	</c:choose>
	                            </td>
	                            <td>${recently.keyword}</td>
	                            <td>
	                            	<c:choose>
	                            		<c:when test="${fn:indexOf(recently.domain, 'www') > -1}">${fn:substring(str, 4, length) }</c:when>
	                            		<c:otherwise>${str}</c:otherwise>
	                            	</c:choose>
	                           </td>
	                            <td>
	                            	<c:choose>
	                            		<c:when test="${fn:indexOf(recently.path, 'ad.search') > -1}"><b>파워링크(네이버)</b></c:when>
	                            		<c:when test="${fn:indexOf(recently.current, 'n_keyword') > -1 || fn:indexOf(recently.path, 'n_keyword') > -1 }"><b>파워링크(네이버)</b></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'search.naver') > -1 && fn:indexOf(recently.path, '&url=') > -1 }"><b>파워링크(네이버)</b></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'cafe.naver') > -1}">네이버카페<a href="${recently.path}" target="_blank"><button class="btn sm-btn btn-primary ml-2">+</button></a></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'blog.naver') > -1  || fn:indexOf(recently.path, 'post.naver') > -1 }">네이버블로그<a href="${recently.path}" target="_blank"><button class="btn sm-btn btn-primary ml-2">+</button></a></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'search.naver') > -1}">네이버검색<a href="${recently.path}" target="_blank"><button class="btn sm-btn btn-primary ml-2">+</button></a></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'note.naver') > -1}">네이버쪽지</c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'place.naver') > -1 || fn:indexOf(recently.path, 'map.naver') > -1 }">네이버지도</c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'booking.naver') > -1 }">네이버예약<a href="${recently.path}" target="_blank"><button class="btn sm-btn btn-primary ml-2">+</button></a></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'kin.naver') > -1}">네이버지식인<a href="${recently.path}" target="_blank"><button class="btn sm-btn btn-primary ml-2">+</button></a></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'daum') > -1}">다음<a href="${recently.path}" target="_blank"><button class="btn sm-btn btn-primary ml-2">+</button></a></c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'instagram') > -1}">인스타그램</c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'facebook') > -1}">페이스북</c:when>
	                            		<c:when test="${fn:indexOf(recently.path, 'google') > -1}">구글</c:when>
	                            		<c:when test="${fn:indexOf(recently.current, 'DMKW') > -1}"><b>파워링크(다음)</b></c:when>
	                            	</c:choose>
	                            </td>
	                            <td>
	                            	<c:choose>
	                            		<c:when test="${recently.path eq '' || recently.path eq 'null'}">${recently.current}</c:when>
	                            		<c:otherwise>${recently.path }</c:otherwise>
	                            	</c:choose>
	                            </td>
	                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <%-- <div class="row">
            <div class="col-md-7 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title">Cash deposits</p>
                  <p class="mb-4">To start a blog, think of a topic about and first brainstorm party is ways to write details</p>
                  <div id="cash-deposits-chart-legend" class="d-flex justify-content-center pt-3"></div>
                  <canvas id="cash-deposits-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="col-md-5 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title">Total sales</p>
                  <h1>$ 28835</h1>
                  <h4>Gross sales over the years</h4>
                  <p class="text-muted">Today, many people rely on computers to do homework, work, and create or store useful information. Therefore, it is important </p>
                  <div id="total-sales-chart-legend"></div>                  
                </div>
                <canvas id="total-sales-chart"></canvas>
              </div>
            </div>
          </div> --%>
        </div>
        <!-- content-wrapper ends -->
        <%@ include file="./include/footer.jsp" %>
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/data-table.js"></script>
  <script src="js/jquery.dataTables.js"></script>
  <script src="js/dataTables.bootstrap4.js"></script>
  <!-- End custom js for this page-->
</body>

</html>


<script>
$(document).ready(function() {
	$('#recent').DataTable({
		"order": [[0, 'desc']],
		"iDisplayLength": 200
	});
	
	$('#tabler1').DataTable({
		"order": [[3, 'desc']],
	});
	
	$('#tabler2').DataTable({
		"order": [[1, 'desc']],
	});
	
});
</script>
