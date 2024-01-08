<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <h3 class="under-line mx-1">지원자관리@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block " onclick="downloadExcel()">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <form name="search" id="search" method="get">
                  	<input type="hidden" name="idx" id="idx" value="${param.idx}"/>
                  	<input type="hidden" name="itvcode" id="itvcode" value="${param.itvcode}"/>
					<input type="hidden" name="hopeidx" id="hopeidx" value="${param.hopeidx}"/>
					<input type="hidden" name="result1st" id="result1st" value="${param.result1st}"/>
					<input type="hidden" name="result2nd" id="result2nd" value="${param.result2nd}"/>
					<input type="hidden" name="result3rd" id="result3rd" value="${param.result3rd}"/>
					<input type="hidden" name="value" id="value" value=""/>
					<div class="row">
						<div class="col">
							<div class="form-group">
			                  	<select name="catenum" class="form-control" style="height:2.50rem;" onchange="searchCategory()">
			                  		<option value="">채용공고선택</option>
			                  		<option value="">-------------------------------------------------------------------------------------</option>
			                  		<c:forEach items="${resultRecruit}" var="recruit">
			                  			<option value="${recruit.idx}" <c:if test="${recruit.idx eq param.catenum}">selected</c:if>>${recruit.title }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${recruit.stday }&nbsp;&nbsp;~&nbsp;&nbsp;${recruit.endday }</option>
			                  		</c:forEach>
			                  	</select>
		                  	</div>
						</div>
						<div class="mx-1 text-center">
							<div class="form-group">
								<select name="intv1" id="intv1" class="form-control" style="height:2.50rem;" onchange="searchIntv('1차', this.value)">
									<option value="">1차면접일자</option>
									<c:forEach items="${intv1}" var="intv1">
				                  		<option value="${intv1.idx}" <c:if test="${intv1.idx eq param.hopeidx}">selected</c:if>>${intv1.itvday}</option>
				                  	</c:forEach>
								</select>
							</div>
						</div>
						<div class="mx-1 text-center">
							<div class="form-group">
								<select name="intv2" id="intv2" class="form-control" style="height:2.50rem;" onchange="searchIntv('2차', this.value)">
									<option value="">2차면접일자</option>
									<c:forEach items="${intv2}" var="intv2">
				                  		<option value="${intv2.idx}" <c:if test="${intv2.idx eq param.hopeidx}">selected</c:if>>${intv2.itvday}</option>
				                  	</c:forEach>
								</select>
							</div>
						</div>
						<div class="mx-1 text-center"><button onclick="searchIntv('1st')" type="button" class="btn btn-primary bg-white" style="color:black;" <c:if test="${'' ne param.result1st}">style="color:white;background-color:black;"</c:if>>서류합격자</button></div>
						<div class="mx-1 text-center"><button onclick="searchIntv('2nd')" type="button" class="btn btn-primary bg-white" style="color:black;" <c:if test="${'' ne param.result2nd}">style="color:white;background-color:black;"</c:if>>1차면접합격자</button></div>
						<div class="mx-1 text-center"><button onclick="searchIntv('3rd')" type="button" class="btn btn-primary bg-white" style="color:black;" <c:if test="${'' ne param.result3rd}">style="color:white;background-color:black;"</c:if>>최종합격자</button></div>
						<div class="mx-1 text-center"><button onclick="allPass1st()" type="button" class="btn btn-primary">서류합격일괄처리</button></div>
						<div class="mx-1 text-center"><button onclick="allPass2nd()" type="button" class="btn btn-primary">1차합격일괄처리</button></div>
					</div>
                  </form>
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped" style="width:100%;">
                      <thead>
                        <tr style="padding:0px 0px;">
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">수험번호</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;"></th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">한글이름</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">영문이름</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">사진</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">이력서</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">연락처</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">생년월일</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">나이</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">성별</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">키/몸무게</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">최종학력</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">서류전형</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">1차면접선택</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">1차면접</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">최종면접선택</th>
                            <th align="center" style="font-size: 13px; padding:15px 10px; text-align:center;">최종면접</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr style="padding:0px 0px;">
                        	<td align="center" width="5%" style="font-size: 13px; padding:0px 0px; text-align:center;"><a href="/manager/volunteer/view.do?idx=${ list.idx }">${list.studentnum}</a></td>
                        	<td align="center" width="2%" style="font-size: 13px; padding:0px 0px; text-align:center;">
                        		<c:choose>
                        			<c:when test="${list.studentcnt eq 'member'}"><a href="/manager/student/view.do?idx=${list.studentidx }"><button class="btn btn-sm btn-primary px-1 py-1" style="font-size:11px;">재학생</button></a></c:when>
                        			<c:when test="${list.studentcnt eq 'refund'}"><a href="/manager/student/view.do?idx=${list.studentidx }"><button class="btn btn-sm btn-danger px-1 py-1" style="font-size:11px;">환불</button></a></c:when>
                        			<c:when test="${list.studentcnt eq 'short'}"><a href="/manager/student/view.do?idx=${list.studentidx }"><button class="btn btn-sm btn-primary px-1 py-1" style="font-size:11px;">재학생</button></a></c:when>
                        			<c:when test="${list.studentcnt eq 'hold'}"><a href="/manager/student/view.do?idx=${list.studentidx }"><button class="btn btn-sm btn-warning px-1 py-1" style="font-size:11px;">보류</button></a></c:when>
                        			<c:when test="${list.studentcnt eq 'rereg'}"><a href="/manager/student/view.do?idx=${list.studentidx }"><button class="btn btn-sm btn-primary px-1 py-1" style="font-size:11px;">재학생</button></a></c:when>
                        			<c:when test="${list.studentcnt eq 'black'}"><a href="/manager/student/view.do?idx=${list.studentidx }"><button class="btn btn-sm btn-danger px-1 py-1" style="font-size:11px;">블랙</button></a></c:when>
                        			<c:otherwise></c:otherwise>
                        		</c:choose>
                        		<%-- <c:if test="${list.studentcnt ne null}"><a href="/manager/student/view.do?idx=${list.studentcnt }"><button class="btn btn-sm btn-danger px-1 py-1" style="font-size:11px;">재</button></a></c:if> --%>
                        	</td>
                        	<td align="center" width="5%" style="font-size: 13px; padding:0px 0px; text-align:center;">
                        		<a href="/manager/volunteer/view.do?idx=${ list.idx }">${list.korname}</a>
                        	</td>
                        	<td align="center" width="6%" style="font-size: 13px; padding:0px 0px;">${list.engname}</td>
                            <td align="center" width="2%" style="font-size: 13px; padding:0px 0px;"><a href="http://www.crewkorea.com/${list.photo}" target="_blank"><img src="${list.photo}" style="width:30px; border-radius:0%;"></a></td>
                            <td align="center" width="2%" style="font-size: 13px; padding:0px 0px;">
                            	<c:if test="${'' ne list.resume}">
                            		<a href="/data/download.do?filepath=${list.resume}&filename=${list.resumename}"><img src="/admin/images/resume.png" style="width:20px; height:22px; border-radius:0%;"></a>	
                            	</c:if>
                            </td>
                            <td align="center" width="8%" style="font-size: 13px; padding:0px 0px;">${list.phonenum}</td>
                            <td align="center" width="4%" style="font-size: 13px; padding:0px 0px;">${list.birth}</td>
                            <td align="center" width="3%" style="font-size: 13px; padding:0px 0px;">${list.age}</td>
                            <td align="center" width="3%" style="font-size: 13px; padding:0px 0px;">${list.gender}</td>
                            <td align="center" width="5%" style="font-size: 13px; padding:0px 0px;">${list.height}cm / ${list.weight}kg</td>
                            <td align="center" width="5%" style="font-size: 13px; padding:0px 0px;">${list.edulv}(${list.gradlv})</td>
							<td align="center" width="2%" style="font-size: 13px; padding:0px 0px;">
								<select name="result1st" style="height:35px; width:100px;" onchange="setPass1st('${list.idx}', '${list.catenum }', this.value)">
									<option value="" <c:if test="${list.result1st eq '' }">selected</c:if>>선택</option>
									<option value="합격" <c:if test="${list.result1st eq '합격' }">selected</c:if>>합격</option>
									<option value="불합격" <c:if test="${list.result1st eq '불합격' }">selected</c:if>>불합격</option>
								</select>
							</td>
							<td align="center" width="2%" style="font-size: 13px; padding:0px 0px; color:red;">${list.interviewday1}</td>
							<td align="center" width="2%" style="font-size: 13px; padding:0px 0px;">
								<c:if test="${'합격' eq list.result1st}">
									<select name="result2nd" style="height:35px; width:100px;" onchange="setPass2nd('${list.idx}', '${list.catenum }', this.value)">
										<option value="" <c:if test="${list.result2nd eq '' }">selected</c:if>>선택</option>
										<option value="합격" <c:if test="${list.result2nd eq '합격' }">selected</c:if>>합격</option>
										<option value="불합격" <c:if test="${list.result2nd eq '불합격' }">selected</c:if>>불합격</option>
									</select>
								</c:if>
							</td>
							<td align="center" width="2%" style="font-size: 13px; padding:0px 0px; color:red;">${list.interviewday2}</td>
							<td align="center" width="2%" style="font-size: 13px; padding:0px 0px;">
								<c:if test="${'합격' eq list.result1st && '합격' eq list.result2nd}">
									<select name="result3rd" style="height:35px; width:100px;" onchange="setPass3rd('${list.idx}', '${list.catenum }', this.value)">
										<option value="" <c:if test="${list.result3rd eq '' }">selected</c:if>>선택</option>
										<option value="합격" <c:if test="${list.result3rd eq '합격' }">selected</c:if>>합격</option>
										<option value="불합격" <c:if test="${list.result3rd eq '불합격' }">selected</c:if>>불합격</option>
									</select>
								</c:if>
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

	function searchIntv(gubun, value){
		if (gubun == "1차"){
			initForm();
			$("#itvcode").val(gubun);
			$("#hopeidx").val(value);
			//alert($("#hopeidx").val());
		}else if(gubun == "2차"){
			initForm();
			$("#itvcode").val(gubun);
			$("#hopeidx").val(value);
		}else if(gubun == "1st"){
			initForm();
			$("#result1st").val("1st");
		}else if(gubun == "2nd"){
			initForm();
			$("#result1st").val("2nd");
		}else if(gubun == "3rd"){
			initForm();
			$("#result3rd").val("3rd");
		}else{
			
		}
		$("#search").attr("action", "/manager/volunteer/list.do");
		$("#search").submit();
		
		//location.href="/manager/volunteer/list.do?catenum=${param.catenum}&itvcode="+itvcode+"&hopeidx="+hopeidx+"&result1st="+result1st+"&result2nd="+result2nd+"&result3rd="+result3rd;
	}
	
	function initForm(){
		$("#itvcode").val("");
		$("#hopeidx").val("");
		$("#result1st").val("");
		$("#result2nd").val("");
		$("#result3rd").val("");
	}

	function setPass1st(idx, catenum, value) {
		alert(value);
		$("#value").val(value);
		$("#idx").val(idx);
		$("#search").attr("action", "/manager/volunteer/pass1st.do");
		$("#search").submit();
		
		//location.href = "/manager/volunteer/pass1st.do";
	}
	
	function setPass2nd(idx, catenum, value) {
		alert(value);
		$("#value").val(value);
		$("#idx").val(idx);
		$("#search").attr("action", "/manager/volunteer/pass2nd.do");
		$("#search").submit();
	}
	
	function setPass3rd(idx, catenum, value) {
		alert(value);
		$("#value").val(value);
		$("#idx").val(idx);
		$("#search").attr("action", "/manager/volunteer/pass3rd.do");
		$("#search").submit();
	}

	function downloadExcel() {
		$("#search").attr("action", "/manager/volunteer/download.do");
		$("#search").submit();
	}

	function searchCategory() {
		initForm();
		$("#search").attr("action", "/manager/volunteer/list.do");
		$("#search").submit();
	}
	
	function allPass1st() {
		if(!confirm("불합격자를 제외하고 일괄 합격처리합니다.")){
			return;	
		}else{
			$("#search").attr("action", "/manager/volunteer/allpass1st.do");
			$("#search").submit();	
		}
	}
	
	function allPass2nd() {
		if(!confirm("불합격자를 제외하고 일괄 합격처리합니다.")){
			return;	
		}else{
			$("#search").attr("action", "/manager/volunteer/allpass2nd.do");
			$("#search").submit();	
		}
	}
 	
 	$(document).ready(function() {
    	$('#tabler').DataTable({
    		"aaSorting" : [],
    		//"order" : [[0, 'asc']],
    		"iDisplayLength" : 200
    	});
	});
 	
 </script>


