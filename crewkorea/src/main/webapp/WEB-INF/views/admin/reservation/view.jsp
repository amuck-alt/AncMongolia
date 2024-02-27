<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>

<script type="text/javascript" src="/admin/js/anc.js"></script>

<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">          
		  <form action="/manager/reservation/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.usernm}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <input type="hidden" name="consultidx" value="${result.idx}">
          <input type="hidden" name="idx" value="${result.idx}">
          <input type="hidden" name="cons_status" id="cons_status" value="${result.cons_status}">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card" style="background-color:#CCFFFF;">
                <div class="card-body">
                    <div class="form-group">
                      <label for="title" class="control-label">이름 / 나이</label>
                      <div class="input-group">
                      	<input type="text" class="form-control mr-2" value="${result.cus_name }" name="cus_name" id="cus_name" placeholder="이름" data-error="이름을 입력하세요." readonly>
                      	<input type="text" class="form-control" value="${result.cus_age }" name="cus_age" id="cus_age" placeholder="나이" data-error="나이를 입력하세요." readonly>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">연락처</label>
                      <input type="text" class="form-control" value="${result.cus_mobile}" name="cus_mobile" id="cus_mobile" placeholder="연락처" data-error="연락처을 입력하세요." oninput="autoHyphen(this)" maxlength="13" readonly>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담예약일자 / 상담시간</label>
                      	<div class="input-group">
                      		<input type="text" class="form-control col-8 mr-2" value="${result.cons_day }" name="cons_day" maxlength="10" id="cons_day" placeholder="YYYY-MM-DD" data-error="상담예약일자를 입력하세요." onKeyup="inputYMDNumber(this)" readonly>
                      		<input type="text" class="form-control col-4" value="${result.cons_time }" name="cons_time" id="cons_time" maxlength="5" placeholder="HH:MM" data-error="상담시간을 입력하세요." onKeyup="inputTimeColon(this);" readonly>
                      	</div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담접수자</label>
                      <input type="text" class="form-control" value="${result.rec_manager}" name="rec_manager" id="rec_manager" placeholder="상담접수자" data-error="상담접수자를 입력하세요." readonly>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담담당팀</label>
                      <input type="text" class="form-control" value="${result.cons_team}" name="cons_team" id="cons_team" placeholder="담당팀" data-error="담당팀을 입력하세요." readonly>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">상담담당자</label>
                      <input type="text" class="form-control" value="${result.cons_manager}" name="cons_manager" id="cons_manager" placeholder="상담담당자" data-error="상담담당자를 입력하세요." readonly>
                      <div class="help-block with-errors text-danger"></div>
                    </div>          
                </div>
              </div>
            </div>
            
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="ml-1 mb-2" style="color:blue;"><b>@ 상담이력</b></div>
                  <div class="table-responsive">
                    <table id="notice" class="table table-striped table-bordered table-sm">
                      <thead>
                        <tr>
                            <th width="15%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#f7d0f4;">구분</th>
                            <th width="*%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#f7d0f4;">메모</th>
                            <th width="12%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#f7d0f4;">작성자</th>
                            <th width="15%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#f7d0f4;">작성일</th>
                        </tr>
                      </thead>
                      <tbody>
					  	<c:forEach items="${resultNote}" var="list">
					  	  <tr>
					  		<td width="15%" style="font-size: 13px; padding:15px 10px; text-align:center;">
					  			<c:choose>
					  				<c:when test="${list.consultcode eq '00'}">상담예약</c:when>
					  				<c:when test="${list.consultcode eq '01'}">상담일자변경</c:when>
					  				<c:when test="${list.consultcode eq '02'}">담당자지정(변경)</c:when>
					  				<c:when test="${list.consultcode eq '99'}">상담종료</c:when>
					  				<c:otherwise>메모</c:otherwise>
					  			</c:choose>
					  		</td>
					  		<td width="*%" style="font-size: 13px; padding:15px 10px; text-align:left;">${list.note}</td>
					  		<td style="font-size: 13px; padding:15px 10px; text-align:center;">${list.regid}</td>
					  		<td style="font-size: 13px; padding:15px 10px; text-align:center;"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
					  	  </tr>
					  	</c:forEach>
                      </tbody>
                    </table>
                 </div>
                 
                    
					<div class="mt-4 mb-2" style="color:blue;"><b>@ 상담이력등록</b></div>
					<table class="col-12 mt-1 table-bordered">
						<tr>
							<td width="10%" class="text-center bg-light" style="font-size: 14px">구분</td>
							<td width="40%" class="px-2 py-2">
							<select class="col-12 form-control mr-3" style="height:30px;padding:0.3rem;" name="consultcode" id="consultcode" data-error="구분을 입력하세요." onchange="javascript:editInformation(this.value)" required>
                      			<option value="">구분</option>
                      			<option value="00">상담예약</option>
                      			<option value="01">상담일자변경</option>
                      			<option value="02">담당자지정(변경)</option>
                      			<option value="03">상담메모</option>
                      			<!-- <option value="10">등록완료</option> -->
                      			<option value="99">상담종료</option>
                      		</select>
							</td>
							<td width="10%" class="text-center bg-light" style="font-size: 14px">작성자</td>
							<td width="40%" class="px-2 py-2" style="font-size: 14px">${sessionScope.ManagerInfo.usernm}</td>
						</tr>
						<tr>
							<td width="10%" class="text-center bg-light" style="font-size: 14px">메모</td>
							<td width="90%" colspan="3" class="px-2 py-2">
								<textarea class="form-control col-12" style="padding:0.5rem;" name="note" id="note" placeholder="메모" data-error="메모를 입력하세요." rows="5" required></textarea>	 
							</td>
						</tr>
					</table>
					<div class="help-block with-errors text-danger"></div>
					<div class="mt-3 col-12" style="text-align:right;">
                   		<button type="submit" class="btn btn-primary mr-2">저장</button>
                  		<a href="/manager/reservation/list.do" class="btn btn-light">취소</a>
                   	</div> 	
								
                </div>
              </div>
            </div>
            
            
            
          </div>	
		</form>          
        </div>
        <!-- content-wrapper ends -->
		<%@ include file="../include/footer.jsp" %>
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

<script src="/editor/build/ckeditor.js"></script>
<script src="/editor/src/cke-config.js"></script>

<script> 

 	$(document).ready(function() {
	 	$("#form").validator();	//폼발리데이터
	}); 	
	
	function editInformation(obj){
		if(obj == "01"){
			$("#cons_day").attr("readonly", false);
			$("#cons_time").attr("readonly", false);
			$("#cons_team").attr("readonly", true);
			$("#cons_manager").attr("readonly", true);
			$("#note").val("상담일자변경");
			$("#cons_status").val("00");
		}else if(obj == "02"){
			$("#cons_team").attr("readonly", false);
			$("#cons_manager").attr("readonly", false);
			$("#cons_day").attr("readonly", true);
			$("#cons_time").attr("readonly", true);
			$("#note").val("상담팀, 담당자변경");
			$("#cons_status").val("00");
		}else if(obj == "99"){
			$("#cons_day").attr("readonly", true);
			$("#cons_time").attr("readonly", true);
			$("#cons_team").attr("readonly", true);
			$("#cons_manager").attr("readonly", true);
			$("#note").val("");
			$("#cons_status").val("99");
		}else{
			$("#cons_day").attr("readonly", true);
			$("#cons_time").attr("readonly", true);
			$("#cons_team").attr("readonly", true);
			$("#cons_manager").attr("readonly", true);
			$("#note").val("");
			$("#cons_status").val("03");
		}
	}
	
</script>


</body>  
</html>


  


