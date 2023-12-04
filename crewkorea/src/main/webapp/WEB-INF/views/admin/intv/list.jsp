<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ include file = "../include/header.jsp" %>

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
                    <h3 class="under-line mx-1">면접일자관리@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0" onclick="goWrite('${param.catenum}')">
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
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <form name="search" id="search" method="get">
					<div class="row">
						<div class="col-12">
							<div class="form-group">
			                  	<select name="catenum" class="form-control" style="height:3.00rem;" onchange="searchCategory()">
			                  		<option value="">채용공고선책</option>
			                  		<option value="">------------------------------------------------</option>
			                  		<c:forEach items="${resultRecruit}" var="recruit">
			                  			<option value="${recruit.idx}" <c:if test="${recruit.idx eq param.catenum}">selected</c:if>>${recruit.title }</option>
			                  		</c:forEach>
			                  	</select>
		                  	</div>
						</div>
						<!-- div class="col-2 text-right">
							<button class="btn btn-primary btn-lg" onclick="downloadExcel()">엑셀저장</button>
						</div-->
					</div>
                  </form>
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr align="center">
                        	<th align="center" style="font-size: 14px; padding:15px 10px; height:20px;">구분</th>
                            <th align="center" style="font-size: 14px; padding:15px 10px; height:20px;">면접일자</th>
                            <th align="center" style="font-size: 14px; padding:15px 10px; height:20px;">시간</th>
                            <th align="center" style="font-size: 14px; padding:15px 10px; height:20px;">면접장소</th>
                            <th align="center" style="font-size: 14px; padding:15px 10px; height:20px;">인원제한</th>
                            <th align="center" style="font-size: 14px; padding:15px 10px; height:20px;">신청인원</th>
                            <th align="center" style="font-size: 14px; padding:15px 10px; height:20px;">면접자전달사항</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                        	<td align="center" width="5%" style="font-size: 14px; padding:10px 10px;">${list.itvcode}</td>
                        	<td align="center" width="10%" style="font-size: 14px; padding:10px 10px;"><a href="/manager/intv/view.do?idx=${ list.idx }&catenum=${list.recruitidx}">${list.itvday}</a></td>
                        	<td align="center" width="10%" style="font-size: 14px; padding:10px 10px;">${list.itvtime}시 ~ ${list.itvtimeend}시</td>
                            <td align="center" width="25%" style="font-size: 14px; padding:10px 10px;">${list.itvlocation }</td>
                            <td align="center" width="5%" style="font-size: 14px; padding:10px 10px;">${list.limitcount}</td>
                            <td align="center" width="5%" style="font-size: 14px; padding:10px 10px;"><a href="/manager/volunteer/list.do?itvcode=${list.itvcode}&catenum=${list.recruitidx}&hopeidx=${list.idx}&result1st=&result2nd=&result3rd">${list.intvcount }</a></td>
                            <td width="30%" style="font-size: 14px; padding:15px 10px;">${fn:substring(list.mngmemo, 0, 10)}</td>
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

	function goWrite(catenum) {
		var num = catenum;
		if (num == ""){
			alert("먼저 채용공고를 선택하세요.");
			return;
		} else {
			location.href = "/manager/intv/write.do?catenum="+num;	
		}
	}

	function searchCategory() {
		$("#search").attr("action", "/manager/intv/list.do");
		$("#search").submit();
	}
 	
 	$(document).ready(function() {
    	$('#tabler').DataTable({
    		"ordering" : false,
    		"order": [[1, 'desc'], [2, 'asc']],
    		"iDisplayLength": 200
    	});
	});
 	
 </script>


