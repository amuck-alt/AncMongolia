<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<%@ include file="../include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">  
                    <button type="button" class="btn btn-sm btn-danger btn-icon mr-2">
                      <i class="mdi mdi-heart"></i>
                    </button>
                    <span class="font-big"><b>${result.usernm } - ${result.userid }</b></span>
                </div>
              </div>
            </div>
            <div class="col-md-9 grid-margin stretch-card">
              <div class="card">
                <div class="card-body"> 
	               <p class="mb-md-0">1차 유입경료 : ${result.domain}</p>
	               <p class="mb-md-0">2차 유입경료 : </p>
	               <p class="mb-md-0">3차 유입경료 : </p>
             	</div>
             </div>
            </div>
          </div>
          
		  <form role="form" name="member" method="post" action="/manager/member/update.do" data-toggle="validator">
          <input type="hidden" name="idx" value="${result.idx }"/>
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">기본정보입력</h4>
                    <div class="form-group">
                      <label for="usernm" class="control-label">이름 <i class="mdi mdi-at"></i></label>
                      <input type="text" class="form-control" value="${result.usernm }" name="usernm" id="usernm" placeholder="이름" data-error="이름을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="userpw" class="control-label">비밀번호 <i class="mdi mdi-at"></i></label>
	                  <input type="text" class="form-control" value="${result.userpw }" name="userpw" id="userpw" placeholder="비밀번호" data-error="비밀번호를 입력하세요." required>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="mobile">전화번호 <i class="mdi mdi-at"></i></label>
                      <div class="input-group">
	                      <input type="text" class="form-control" value="${result.mobile }" name="mobile" id="mobile" placeholder="010-0000-0000" data-error="전화번호를 입력하세요.">
	                      <div class="input-group-append">
	                        <button class="btn btn-sm btn-facebook" type="button">
	                          <i class="mdi mdi-phone-classic"></i>
	                        </button>
	                      </div>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="age">나이 <i class="mdi mdi-at"></i></label>
                      <div class="input-group">
                      	<input type="text" class="form-control" value="${result.age }" name="age" id="age" placeholder="나이" data-error="생년월일/나이을 입력하세요.">
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_email">이메일</label>
                      <input type="email" class="form-control" value="${result.email }" name="email" id="email" placeholder="이메일">
                    </div>
                    
                </div>
              </div>
            </div>
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">상담정보입력</h4>
                    <div class="input-group">
	                    <div class="form-group" style="width:50%;">
	                      <label>관심분야 </label>
	                      <div class="custom-control custom-radio">
	                          <input type="radio"
	                          <c:if test="${fn:indexOf(result.hopse, '대한항공/아시아나항공') > -1 }">checked</c:if> value="대한항공/아시아나항공" name="hopse" id="hopke" class="custom-control-input">
	                        <label for="hopke" class="custom-control-label">대한항공/아시아나항공</label>
	                 </div>     
						  <div class="custom-control custom-radio">
						  	<input type="radio" <c:if test="${fn:indexOf(result.hopse, '국내항공사') > -1 }">checked</c:if> value="국내항공사" name="hopse" id="hopko" class="custom-control-input">
                     <label for="hopko" class="custom-control-label">국내항공사</label>
						  </div>
						  <div class="custom-control custom-radio">
	                          <input type="radio"
	                          <c:if test="${fn:indexOf(result.hopse, '외국항공사') > -1 }">checked</c:if>
	                          value="외국항공사" name="hopse" id="hopos" class="custom-control-input">
	                        <label for="hopos" class="custom-control-label">외국항공사</label>
						  </div>
						  <div class="custom-control custom-radio">
	                          <input type="radio"
	                          <c:if test="${fn:indexOf(result.hopse, '남자승무원') > -1 }">checked</c:if>
	                          value="남자승무원(스튜어드)" name="hopse" id="hopstd" class="custom-control-input">
	                          <label for="hopstd" class="custom-control-label">남자승무원(스튜어드)</label>
						  </div>
						  <div class="custom-control custom-radio">
	                          <input type="radio"
	                          <c:if test="${fn:indexOf(result.hopse, '항공사지상직승무원') > -1 }">checked</c:if>
	                          value="항공사지상직승무원" name="hopse" id="hopgs" class="custom-control-input">
	                        <label for="hopgs" class="custom-control-label">항공사지상직승무원</label>
						  </div>
						  <div class="custom-control custom-radio">
	                          <input type="radio"
	                          <c:if test="${fn:indexOf(result.hopse, '항공운항과대학입시') > -1 }">checked</c:if>
	                          value="항공운항과대학입시" name="hopse" id="hopipsi" class="custom-control-input">
	                          <label for="hopipsi" class="custom-control-label">항공운항과대학입시</label>
	                        
						  </div>
	                    </div>
                    </div>
                    <div class="form-group">
                      <label>회원구분</label>
                       <div class="input-group">
	                      <select class="form-control mr-2" name="status" id="status">
	                        <option value="신규" <c:if test="${result.status eq '신규'}">selected</c:if>>신규</option>
	                        <option value="확인" <c:if test="${result.status eq '확인'}">selected</c:if>>확인</option>
	                        <option value="상담예약" <c:if test="${result.status eq '상담예약'}">selected</c:if>>상담예약</option>
	                        <option value="상담완료" <c:if test="${result.status eq '상담완료'}">selected</c:if>>상담완료</option>                        
	                        <option value="재학생" <c:if test="${result.status eq '재학생'}">selected</c:if>>재학생</option>
	                        <option value="탈퇴회원" <c:if test="${result.status eq '탈퇴회원'}">selected</c:if>>탙퇴회원</option>                        
	                        <option value="불량회원" <c:if test="${result.status eq '불량회원'}">selected</c:if>>불량회원</option>
	                        <option value="항운팀이관" <c:if test="${result.status eq '항운팀이관'}">selected</c:if>>항운팀이관</option>
	                        <option value="지상직팀이관" <c:if test="${result.status eq '지상직팀이관'}">selected</c:if>>지상직팀이관</option>
	                      </select>
	                      <input type="text" class="form-control input-group-append" value="<%-- ${result.th } --%>" name="th" id="th" placeholder="기수">
                      </div>
                    </div>
                    <div class="form-group">
                      <label>팀/담당자</label>
                      <div class="input-group">
                      <select class="form-control" name="team" id="team">
                        <option value="">팀선택</option>
                        <option value="cabin" <c:if test="${result.team eq 'cabin'}">selected</c:if>>승무팀</option>
                        <option value="ipsi" <c:if test="${result.team eq 'ipsi'}">selected</c:if>>항운팀</option>
                        <option value="ground" <c:if test="${result.team eq 'ground'}">selected</c:if>>지상직팀</option>
                      </select>
                      <select class="form-control input-group-append" name="manager" id="manager">
                        <option value="">담당자지정</option>
                        <c:forEach items="${sessionScope.ManagerList}" var="list">
                        <option value="${list.userid}" <c:if test="${list.userid eq result.manager}">selected</c:if>>${list.usernm}</option>
                        </c:forEach>
                      </select>
                      </div>
                    </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">상담메모</h4>
                  <textarea class="form-control" name="smemo" id="smemo" rows="10">${result.smemo}</textarea>
                  <div class="my-3">
                  <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <c:if test="${sessionScope.ManagerInfo.section eq 'super'}">
                    	<button type="button" onclick="deleteMember('${result.idx}')" class="btn btn-danger mr-2">삭제</button>
                    </c:if>
                    <a href="/manager/member.do" class="btn btn-light">취소</a>
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
 
  <script>
  
  	$(document).ready(function() {
  		//데이터테이블
	    $("#member-comment").DataTable();
	    //폼발리데이터
  		$("#member-insert-form").validator();
	    
	}); 
  
	$("#btn-upload-01").click(function (e) {
  		e.preventDefault();
 		$("#profile_01").click();
 	});
	
	$("#btn-upload-02").click(function (e) {
  		e.preventDefault();
 		$("#profile_02").click();
 	});
	
	
	$(document).ready(function(){
		$("#profile_01").on("change", handleImageFileSelect1);
		$("#profile_02").on("change", handleImageFileSelect2);
	});
	
	function handleImageFileSelect1(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}

			var reader = new FileReader();
			reader.onload = function(e){
				$("#img-wrap-01").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function handleImageFileSelect2(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}

			var reader = new FileReader();
			reader.onload = function(e){
				$("#img-wrap-02").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction(cal, num){
		$("#img-wrap-"+num+"").attr("src", "/admin/images/profile-example-"+num+".png");
		$(cal).val("");
	}
	
	function deleteMember(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			document.location.href="/manager/member/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}

	
  </script>	
  
</body>

</html>


