<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="now" class="java.util.Date" />

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
                    <h3 class="under-line mx-1">재학생관리@</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
		<form name="form" action="/manager/student/insert.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
        <div class="row">
        <!-- 개인프로필입력 시작 -->		
		<div class="col-6" id="mobile-100-percent">
			<div class="card">
				<div class="card-body">
					<div class="row">	
						<div class="col-md-12">
							<div class="mb-2" style="color:blue;"><b>@ 프로필정보</b></div>
							<div class="row">
							<div class="col-md-3">
								<div class="py-1">
		               				<img src="/admin/images/no-student-img.png" class="wrapper-tn" id="wrapper-tn" style="width:100%;">
		               			</div>
		               			<div class="my-2 mb-3 text-center">
		               				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
		               				<button type="button" class="btn btn-sm btn-primary py-2 px-2" style="font-size:12px;" id="upload-tn">업로드</button>
		               				<button type="button" class="btn btn-sm btn-secondary py-2 px-2" style="font-size:12px;" id="init-tn" onclick="deleteImageAction()">지우기</button>
		               			</div>
							</div>
							<div class="col-md-9">	
								<table class="mt-1 table-bordered">
									<tr>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">이름</td>
										<td width="25%" class="px-2 py-2"><input type="text" class="form-control" name="korname" id="korname" value="${result.korname}" style="height:30px;" required></td>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">나이</td>
										<td width="25%" class="px-2 py-2"><input type="text" maxlength="2" class="form-control" name="age" id="age" value="${result.age}" style="height:30px;">
									</tr>
									<tr>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">생년월일</td>
										<td width="25%" class="px-2 py-2"><input type="text" maxlength="10" class="form-control" name="birthday" id="birthday" value="${result.birthday}" onKeyup="inputYMDNumber(this)" style="height:30px;"></td>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">성별</td>
										<td width="25%" class="px-2 py-2">
											<select class="form-control" name="gender" id="gender" style="height:30px;padding:0.3rem;" required>
												<option value="female">여</option>
												<option value="male">남</option>
											</select>
										</td>
									</tr>
									<tr>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">등록과정</td>
										<td width="25%" colspan="3" class="px-2 py-2">
											<div class="input-group">
											<select class="form-control col-8" name="curriculum" id="curriculum" style="height:30px;padding:0.3rem;">
												<option value="domestic" <c:if test="${result.curriculum eq 'domestic'}">selected</c:if>>국내승무원</option>
												<option value="overseas" <c:if test="${result.curriculum eq 'overseas'}">selected</c:if>>국외승무원</option>
												<option value="allinone" <c:if test="${result.curriculum eq 'allinone'}">selected</c:if>>종합승무원</option>
												<option value="university" <c:if test="${result.curriculum eq 'university'}">selected</c:if>>항공운항과</option>
												<option value="ground" <c:if test="${result.curriculum eq 'ground'}">selected</c:if>>지상직</option>
												<option value="travel" <c:if test="${result.curriculum eq 'travel'}">selected</c:if>>여행사</option>
												<option value="hotel" <c:if test="${result.curriculum eq 'hotel'}">selected</c:if>>호텔</option>
												<!-- option value="jobmanager" <c:if test="${result.curriculum eq 'jobmanager'}">selected</c:if>>직업상담사</option -->
												<option value="internship" <c:if test="${result.curriculum eq 'internship'}">selected</c:if>>해외취업연수반</option>
												<option value="shorterm" <c:if test="${result.curriculum eq 'shorterm'}">selected</c:if>>단기반</option>
												<option value="private" <c:if test="${result.curriculum eq 'private'}">selected</c:if>>과외</option>
												<option value="etc" <c:if test="${result.curriculum eq 'etc'}">selected</c:if>>기타</option>
											</select>
											<select class="form-control col-4 ml-2 input-group-append" name="regsection" id="regsection" style="height:30px;padding:0.3rem;">
												<option value="01" <c:if test="${result.regsection eq '01'}">selected</c:if>>일반</option>
												<option value="02" <c:if test="${result.regsection eq '02'}">selected</c:if>>국비</option>
											</select>
											</div>
										</td>
									</tr>
									<tr>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">등록일</td>
										<td width="25%" class="px-2 py-2"><input type="text" class="form-control" name="regday" id="regday" value="${result.regday}" onKeyup="inputYMDNumber(this)" style="height:30px;"></td>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">기수</td>
										<td width="25%" class="px-2 py-2">
											<input type="text" maxlength="4" class="form-control" name="studentnum" id="studentnum" value="${result.studentnum}" style="height:30px;">
										</td>
									</tr>
									<tr>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">담당팀</td>
										<td width="25%" class="px-2 py-2"><input type="text" class="form-control" name="mngteam" id="mngteam" value="${result.mngteam}" style="height:30px;"></td>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">멘토쌤</td>
										<td width="25%" class="px-2 py-2"><input type="text" class="form-control" name="mento" id="mento" value="${result.mento}" style="height:30px;"></td>
									</tr>
									<tr>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">연락처</td>
										<td colspan="3" width="25%" class="px-2 py-2"><input type="text" class="form-control" name="mobile" id="mobile" oninput="autoHyphen(this)" value="${result.mobile}" style="height:30px;" required></td>
									</tr>
									<tr>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">재학현황</td>
										<td width="25%" class="px-2 py-2">
											<select class="form-control col-12" name="status" id="status" style="height:30px;padding:0.3rem;background-color:#d7f8fc;">
												<option value="member">정회원</option>
												<option value="short">단기회원</option>
												<option value="refund">환불</option>
												<option value="hold">보류</option>
												<option value="rereg">재등록</option>
												<option value="black">악성고객</option>
											</select>
										</td>
										<td width="15%" class="text-center bg-light" style="font-size: 14px">납부현황</td>
										<td width="25%" class="px-2 py-2">
											<div class="input-group">
												<input type="text" class="form-control" name="paystatus" id="paystatus" value="${result.paystatus}" style="height:30px;">
												<span class="ml-1 mt-1" style="font-size: 14px">원</span>
											</div>
										</td>
									</tr>
								</table>
							</div>
							</div>
							
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-6" id="mobile-100-percent">
			<div class="card">
				<div class="card-body">
					<div class="row">	
						<div class="col-md-12">
							<div class="mb-2" style="color:blue;"><b>@ 상세정보</b></div>
							<table class="mt-1 table-bordered">
								<tr>
									<td width="10%" class="text-center bg-light" style="font-size: 14px">이메일</td>
									<td colspan="7" width="25%" class="px-2 py-2"><input type="text" class="form-control" name="email" id="email" value="${result.email}" style="height:30px;"></td>
								</tr>
								<tr class="col-12">
									<td width="10%" class="text-center bg-light" style="font-size: 14px">학력(학교)</td>
									<td colspan="3" width="15%" class="px-2 py-2"><input type="text" class="form-control" name="edulv" id="edulv" value="${result.edulv}" style="height:30px;"></td>
									<td width="10%" class="text-center bg-light" style="font-size: 14px">졸업여부</td>
									<td colspan="3" width="15%" class="px-2 py-2">
										<select class="form-control" name="gradlv" id="gradlv" style="height:30px;padding:0.3rem;" required>
											<option value="졸업" <c:if test="${result.gradlv eq '졸업'}">selected</c:if>>졸업</option>
											<option value="졸업예정" <c:if test="${result.gradlv eq '졸업예정'}">selected</c:if>>졸업예정</option>
											<option value="휴학중" <c:if test="${result.gradlv eq '휴학중'}">selected</c:if>>휴학중</option>
											<option value="중퇴" <c:if test="${result.gradlv eq '중퇴'}">selected</c:if>>중퇴</option>
										</select>
									</td>
								</tr>
								<tr class="col-12">
									<td width="10%" class="text-center bg-light" style="font-size: 14px">어학능력</td>
									<td colspan="7" width="15%" class="px-2 py-2"><input type="text" class="form-control" name="langlv1" id="langlv1" value="${result.langlv1}" style="height:30px;"></td>
								</tr>
								<tr class="col-12">
									<td width="10%" class="text-center bg-light" style="font-size: 14px">메모</td>
									<td colspan="7" width="15%" class="px-2 py-2">
										<textarea class="form-control" id="memo" name="memo" rows="5">${result.memo}</textarea>
									</td>
								</tr>
							</table>
							<div class="mt-2 text-right form-group">  
								<button type="submit" class="btn btn-primary mr-2" id="blogSave">저장</button>
								<%-- <button type="button" class="btn btn-danger mr-2" onclick="delPost('${ result.idx }', '${result.catenum }');">삭제</button> --%>
								<a href="/manager/student/list.do" class="btn btn-light">취소</a>
							</div>			
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
        
        </div> 
        </form>
        
        <form action="/manager/student/diary/insert.do" name="diaryform" id="diaryform" method="post" data-toggle="validator">
        
          <div class="row">
	        <!-- 관리일지 시작 -->		
			<div class="col-12" id="mobile-100-percent">
				<div class="card">
					<div class="card-body">
                  		<div class="ml-1 mb-2" style="color:blue;"><b>@ 관리일지</b></div>
		                  <div class="table-responsive">
		                    <table id="notice" class="table table-striped table-bordered table-sm">
		                      <thead>
		                        <tr>
		                            <th width="*%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#f7d0f4;">관리일지</th>
		                            <th width="12%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#f7d0f4;">작성자</th>
		                            <th width="15%" align="center" style="font-size: 13px; padding:15px 10px; text-align:center; background-color:#f7d0f4;">작성일</th>
		                        </tr>
		                      </thead>
		                      <tbody>
							  	<c:forEach items="${resultNote}" var="list">
							  	  <tr>
							  		<td width="*%" style="font-size: 13px; padding:15px 10px; text-align:left;">${list.note}</td>
							  		<td style="font-size: 13px; padding:15px 10px; text-align:center;">${list.regid}</td>
							  		<td style="font-size: 13px; padding:15px 10px; text-align:center;"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
							  	  </tr>
							  	</c:forEach>
		                      </tbody>
		                    </table>  
		                </div>
                	</div>
				</div>
			</div>
			<div class="col-12 mt-3">
				<div class="card">
					<div class="card-body">
						<div class="mt-1 ml-1 mb-2" style="color:blue;"><b>@ 관리일지등록</b></div>
		                <div class="form-group">
		                  	<div class="input-group">
		                  		<textarea class="form-control col-12" name="note" id="note" placeholder="" data-error="메모를 입력하세요." rows="5" required></textarea>
		                  	</div>
		                  <div class="help-block with-errors text-danger"></div>
		                </div>
		                <div class="col-12" style="text-align:right;">
		                	<c:if test="${result.idx ne null}"><button type="submit" class="btn btn-primary mr-2">저장</button></c:if>
		                </div>
                	</div>
                </div>    
			</div>       
          </div> 
        
        </form>
        
        
        
        
        
        
        
        
        
        
        
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

	function downloadExcel() {
		$("#search").attr("action", "/manager/volunteer/download.do");
		$("#search").submit();
	}

	function delPost(idx, catenum) {
		location.href="/manager/volunteer/delete.do?idx="+ idx +"&catenum="+catenum;
	}
 	
 </script>
 
 <script>

	$(document).ready(function() {
	 	$("#form").validator();	//폼발리데이터
	 	
 	 	$("#paystatus").on("keyup", function(){
	 		$(this).val($(this).val().replace(/[^-0-9]/g, '').replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,'));
	 	});

	}); 	

	
	$("#upload-tn").click(function (e) {
  		e.preventDefault();
 		$("#thumbnail").click();
 	});	
	
	$(document).ready(function(){
		$("#thumbnail").on("change", handleImageFileSelect);
	});
	
	function handleImageFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#wrapper-tn").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction(){
		$("#wrapper-tn").attr("src", "/admin/images/no-student-img.png");
		$("#thumbnail").val("");
	}
	
</script>


