<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ include file = "../include/header.jsp" %>
<script type="text/javascript" src="/admin/js/anc.js"></script>

<style>
	.form-control {	padding-left: 0.3rem; }
</style>

<body>   
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">         
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h3 class="under-line mx-1">상담예약관리@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0" onclick="goWrite()">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                  <!-- <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-clock-outline text-muted"></i>
                  </button> -->
                  <button class="btn btn-primary mt-2 mt-xl-0" onclick="goExcel()">엑셀다운로드</button>
                </div>
              </div>
            </div>
          </div>
 		  <!-- <div class="row mb-2">
            <div class="col-md-12 stretch-card">
              <div class="card bg-">
                <div class="card-body">
                	<div class="col-3">
                		<div class="input-group">
                		<label class="mt-1 mr-3">구분</label>
	                  	<select name="catenum" class="form-control" style="height:2.50rem;" onchange="searchCategory()">
	                  		<option></option>
	                  	</select>
	                  	</div>
                  	</div>
                </div>
              </div>
            </div>
		  </div> -->
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <form name="search" method="get" action="/manager/reservation/list.do">
                  <table class="mb-5 table-bordered">
                	  <tr>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">상태</td>
						<td width="10%" class="px-3 py-2">
						  <select class="form-control" name="cons_status" style="height:30px;padding:0.3rem;">
						    <option value="" <c:if test="${search.cons_status eq null}">selected</c:if>>전체</option>
						    <option value="00" <c:if test="${search.cons_status eq '00'}">selected</c:if>>상담예약</option>
						    <option value="03" <c:if test="${search.cons_status eq '03'}">selected</c:if>>진행중</option>
						    <option value="99" <c:if test="${search.cons_status eq '99'}">selected</c:if>>상담종료</option>
						  </select>
						</td>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">상담예약일</td>
						<td width="15%" class="px-3 py-2">
						  <div class="input-group">
						    <input type="text" class="form-control" placeholder="YYYY-MM-DD" onKeyup="inputYMDNumber(this)" name="cons_startday" id="cons_startday" value="${search.cons_startday }" style="height:30px;">
						    <span class="mx-2">~</span>
						    <input type="text" class="form-control" placeholder="YYYY-MM-DD" onKeyup="inputYMDNumber(this)" name="cons_endday" id="cons_endday" value="${search.cons_endday }" style="height:30px;">
						  </div>
						</td>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">담당자</td>
						<td width="12%" class="px-3 py-2"><input type="text" class="form-control" name="cons_manager" id="cons_manager" value="${search.cons_manager}" style="height:30px;"></td>
						<td width="10%" class="text-center bg-light" style="font-size: 14px">상담자(이름, 연락처)</td>
						<td width="12%" class="px-3 py-2"><input type="text" class="form-control" name="cons_customer" id="cons_customer" value="${search.cons_customer }" style="height:30px;"></td>
						<td width="6%" class="px-3 py-2 text-center"><button type="button" class="btn btn-primary" onclick="goSearch()">검색</button></td>
                	  </tr>
                  </table>
                  </form>
                  <div class="table-responsive">
                    <table id="notice" class="table table-striped table-bordered table-sm">
                      <thead>
                        <tr>
                            <th width="8%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">상태</th>
                            <th width="9%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">이름</th>
                            <th width="3%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">나이</th>
                            <th width="10%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">연락처</th>
                            <th width="9%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">상담예약일</th>
                            <th width="7%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">시간</th>
                            <th width="10%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">담당팀</th>
                            <th width="8%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">담당자</th>
                            <th width="*%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">상담이력</th>
                            <th width="10%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#0066cc;">수정일자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                            <td align="center" style="font-size: 11px; padding:15px 10px; text-align:center;">
                              <c:choose>
							    <c:when test="${list.cons_status eq '00'}"><button class="btn btn-sm btn-primary py-1 px-1" style="font-size:11px;">상담예약</button></c:when>
							    <c:when test="${list.cons_status eq '03'}"><button class="btn btn-sm btn-danger py-1 px-1" style="font-size:11px;">진행중</button></c:when>
							    <c:when test="${list.cons_status eq '99'}"><button class="btn btn-sm btn-secondary py-1 px-1" style="font-size:11px;">상담종료</button></c:when>
							  </c:choose>
                            </td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;"><a href="/manager/reservation/view.do?idx=${list.idx}">${list.cus_name}</a></td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cus_age}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cus_mobile}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cons_day}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cons_time}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cons_team}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">${list.cons_manager}</td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:left;">${fn:substring(list.note,0,60)}<c:if test="${fn:length(list.note) > 60}">&nbsp;...</c:if></td>
                            <td align="center" style="font-size: 13px; padding:15px 10px; text-align:center;"><c:choose><c:when test="${list.updatedate eq null}"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd HH:mm" /></c:when><c:otherwise><fmt:formatDate value="${list.updatedate}" pattern="yyyy-MM-dd HH:mm" /></</c:otherwise></c:choose></td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
		<%@ include file="../include/footer.jsp" %>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
 </body>

<script>
 	
 	$(document).ready(function() {
    	$('#notice').DataTable({
    		"order": [[4, 'desc']],
    		"ordering" : true,
    		"iDisplayLength" : 50
    	});
	});
 	
 	function goWrite(){
 		document.location.href = "/manager/reservation/write.do";
 		
 	}
 	
 	function goExcel(){
 		document.search.action = "/manager/reservation/excel.do";
 		document.search.submit();
 	}
 	
 	function goSearch(){
 		document.search.action = "/manager/reservation/list.do";
 		document.search.submit();
 	}
 	
 </script>


