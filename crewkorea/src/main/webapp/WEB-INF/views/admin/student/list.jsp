<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date" />

<%@ include file = "../include/header.jsp" %>

<style>
.modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
}

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
                    <h3 class="under-line mx-1">재학생관리@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0" onclick="goWrite()">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-clock-outline text-muted"></i>
                  </button>
                  <!-- button class="btn btn-primary mt-2 mt-xl-0">Download report</button-->
                </div>
              </div>
            </div>
          </div>
          <form name="search" method="post" action="/manager/student/list.do">
         <!--  <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                	<table class="mt-1 table-bordered">
                	  <tr>
						<td width="15%" class="text-center bg-light" style="font-size: 14px">구분</td>
						<td width="25%" class="px-2 py-2">
						  <select class="form-control">
						    <option></option>
						    <option></option>
						  </select>
						</td>
						<td width="15%" class="text-center bg-light" style="font-size: 14px">삼당일자</td>
						<td width="25%" class="px-2 py-2"><input type="text" maxlength="2" class="form-control" name="age" id="age" value="" style="height:30px;">
						<td width="15%" class="text-center bg-light" style="font-size: 14px">삼당일자</td>
						<td width="25%" class="px-2 py-2"><input type="text" maxlength="2" class="form-control" name="age" id="age" value="" style="height:30px;">
                	  </tr>
                	</table>
                </div>
              </div>
            </div>
          </div> -->
          </form>
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <form name="search" method="get" action="/manager/student/list.do">
                  <table class="mb-5 table-bordered">
                	  <tr>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">재학현황</td>
						<td width="10%" class="px-3 py-2">
						  <select class="form-control" name="status" style="height:30px;padding:0.3rem;">
						    <option value="" <c:if test="${search.status eq null}">selected</c:if>>전체</option>
						    <option value="member" <c:if test="${search.status eq 'member'}">selected</c:if>>정회원</option>
						    <option value="short" <c:if test="${search.status eq 'short'}">selected</c:if>>단기회원</option>
						    <option value="refund" <c:if test="${search.status eq 'refund'}">selected</c:if>>환불</option>
						    <option value="hold" <c:if test="${search.status eq 'hold'}">selected</c:if>>보류</option>
						    <option value="rereg" <c:if test="${search.status eq 'rereg'}">selected</c:if>>재등록</option>
						    <option value="black" <c:if test="${search.status eq 'black'}">selected</c:if>>악성고객</option>
						  </select>
						</td>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">커리큘럼</td>
						<td width="15%" class="px-3 py-2">
						  <select class="form-control" name="curriculum" style="height:30px;padding:0.3rem;">
						    <option value="" <c:if test="${search.curriculum eq null}">selected</c:if>>전체</option>
						    <option value="domestic" <c:if test="${search.curriculum eq 'member'}">selected</c:if>>국내승무원</option>
						    <option value="overseas" <c:if test="${search.curriculum eq 'overseas'}">selected</c:if>>외국항공사</option>
						    <option value="allinone" <c:if test="${search.curriculum eq 'allinone'}">selected</c:if>>종합승무원</option>
						    <option value="ground" <c:if test="${search.curriculum eq 'ground'}">selected</c:if>>지상직</option>
						    <option value="hotel" <c:if test="${search.curriculum eq 'hotel'}">selected</c:if>>호텔</option>
						    <option value="jobmanager" <c:if test="${search.curriculum eq 'jobmanager'}">selected</c:if>>직업상담사</option>
						    <option value="internship" <c:if test="${search.curriculum eq 'internship'}">selected</c:if>>해외취업연수반</option>
						    <option value="shorterm" <c:if test="${search.curriculum eq 'shorterm'}">selected</c:if>>단기반</option>
						    <option value="private" <c:if test="${search.curriculum eq 'private'}">selected</c:if>>과외</option>
						    <option value="etc" <c:if test="${search.curriculum eq 'etc'}">selected</c:if>>기타</option>
						  </select>
						</td>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">이름</td>
						<td width="10%" class="px-3 py-2"><input type="text" class="form-control" name="korname" id="korname" value="${search.korname}" style="height:30px;"></td>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">연락처</td>
						<td width="10%" class="px-3 py-2"><input type="text" class="form-control" name="mobile" id="mobile" value="${search.mobile}" style="height:30px;"></td>
						<td width="5%" class="text-center bg-light" style="font-size: 14px">멘토</td>
						<td width="10%" class="px-3 py-2"><input type="text" class="form-control" name="mento" id="mento" value="${search.mento}" style="height:30px;"></td>
						<td width="6%" class="px-3 py-2 text-center"><button type="submit" class="btn btn-primary">검색</button></td>
                	  </tr>
                  </table>
                  </form>
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped table-bordered table-sm" style="width:100%;">
                      <thead>
                        <tr style="padding:0px 0px;">
                        	<th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">이름</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">사진</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">기수</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">등록일</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">커리큘럼</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">연락처</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">담당팀</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">멘토쌤</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">재학현황</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">메모</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr style="padding:0px 0px;">
                        	<td width="7%" style="font-size: 13px; padding:5px 5px; text-align:center;">
                        		<a href="/manager/student/view.do?idx=${ list.idx }">${list.korname}</a>
                        	</td>
                        	<td width="5%" style="font-size: 13px; padding:5px 5px; text-align:center;">
                        		<c:if test="${list.photo ne ''}"><img src="${list.photo}" style="width:30px; border-radius:0%;"></c:if>	
                        	</td>
                        	<td width="5%" style="font-size: 13px; padding:5px 5px; text-align:center;"><a href="/manager/student/view.do?idx=${ list.idx }">${list.studentnum}</a></td>
                        	<td style="font-size: 13px; padding:5px 5px; text-align:center;">${list.regday }</td>                            
                            <td style="font-size: 12px; padding:5px 5px; text-align:center;">
                            	<c:choose>
                            		<c:when test="${list.curriculum eq 'domestic'}"><button class="btn btn-sm btn-primary py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">국내승무원</button></c:when>
                            		<c:when test="${list.curriculum eq 'overseas'}"><button class="btn btn-sm btn-warning py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">외국항공사</button></c:when>
                            		<c:when test="${list.curriculum eq 'allinone'}"><button class="btn btn-sm py-1 px-2" style="background-color:navy; color:#fff; font-size: 12px; width:100px; height:25px; padding:5px 5px;">종합승무원</button></c:when>
                            		<c:when test="${list.curriculum eq 'ground'}"><button class="btn btn-sm btn-danger py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">지상직</button></c:when>
                            		<c:when test="${list.curriculum eq 'hotel'}"><button class="btn btn-sm btn-sucess py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">호텔</button></c:when>
                            		<c:when test="${list.curriculum eq 'jobmanager'}"><button class="btn btn-sm btn-sucess py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">직업상담사</button></c:when>
                            		<c:when test="${list.curriculum eq 'internship'}"><button class="btn btn-sm btn-sucess py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">해외취업연수반</button></c:when>
                            		<c:when test="${list.curriculum eq 'shorterm'}"><button class="btn btn-sm btn-info py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">단기반</button></c:when>
                            		<c:when test="${list.curriculum eq 'private'}"><button class="btn btn-sm btn-dark py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">과외</button></c:when>
                            		<c:when test="${list.curriculum eq 'etc'}"><button class="btn btn-sm btn-light py-1 px-2" style="font-size: 12px; width:100px; height:25px; padding:5px 5px;">기타</button></c:when>
                            	</c:choose>
                            </td>
                            <td style="font-size: 13px; padding:5px 5px; text-align:center;">${list.mobile }</td>
                            <td style="font-size: 13px; padding:5px 5px; text-align:center;">${list.mngteam }</td>
                            <td style="font-size: 13px; padding:5px 5px; text-align:center;">${list.mento }</td>
                            <td style="font-size: 13px; padding:5px 5px; text-align:center;">
                            	<c:choose>
                            		<c:when test="${list.status eq 'member'}">정회원</c:when>
                            		<c:when test="${list.status eq 'short'}">단기회원</c:when>
                            		<c:when test="${list.status eq 'refund'}">환불</c:when>
                            		<c:when test="${list.status eq 'hold'}">보류</c:when>
                            		<c:when test="${list.status eq 'rereg'}">재등록</c:when>
                            		<c:when test="${list.status eq 'black'}"><font color="red">악성고객</font></c:when>
                            	</c:choose>
                            </td>
                            <td width="40%" style="font-size: 13px; padding:15px 10px; text-align:left;">${fn:substring(list.memo,0,50)}<c:if test="${fn:length(list.memo) > 50}">&nbsp;...</c:if></td>
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
    	$('#tabler').DataTable({
    		"order": [[3, 'desc']],
    		"ordering" : true,
    		"iDisplayLength" : 50
    	});
	});
 	
 	function goWrite(){
 		document.location.href="/manager/student/write.do";
 	}
 	
 </script>



