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
          <div class="row mb-2">
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
                                <a class="dropdown-item" href="/manager/index.do?opt=today&searchDay=">Today</a>
                                <a class="dropdown-item" href="/manager/index.do?opt=yesterday&searchDay=<%=yesterDay%>">Yesterday</a>
                                <a class="dropdown-item" href="/manager/index.do?opt=yesterday&searchDay=<%=bfYesterDay%>">Before Yesterday</a>
                              </div>
                           </div>
          					</li>
          				</ul>
          				<hr>
          				<ul class="mt-4" style="height:70px; list-style:none;">
          					<li class="float-left" style="width:200px;">
          						<h5>Request Counsel&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;${overview.ov_counsel_count_check}</h5>
          					</li>
          					<li class="float-left" style="width:200px;">
          						<h5>Member Join&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;${overview.ov_membership_count_new}</h5>
          					</li>
          					<li class="float-left" style="width:200px;">
          						<h5>Visitor&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;${overview.ov_visiter_count}</h5>
          						<span class="mr-2">DeskTop(${overview.ov_visiter_count_pc})</span>
          						<span class="ml-2">Mobile(${overview.ov_visiter_count_m})</span>
          					</li>
          				</ul>
          			</div>
          		</div>
          	</div>
          </div>
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title">Recently Visit Count</p>
                  <div class="table-responsive">
                    <table id="recent" class="table">
                      <thead>
                        <tr>
                            <th>Date</th>
                            <th>IP</th>
                            <th style="width:300px;">Path</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${recent}" var="recently">
	                        <tr>
	                            <td>${recently.regdate }</td>
	                            <td>${recently.ipaddr}</td>
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
});
</script>
