<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
          
		  <form role="form" name="member" method="post" action="/manager/member/insert" data-toggle="validator">          
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">기본정보입력</h4>
                    <div class="input-group">
		              <div class="form-group">
						<img alt="" src="/admin/images/profile-example-01.png" id="img-wrap-01" style="max-width:100px;">
	                    <div class="form-check" style="text-align: center;">
	                        <a href="" class="icon-md mdi mdi-account-box" id="btn-upload-01"></a>
			                <input type="file" name="m_profile_01" id="m_profile_01" style="display:none;">
			                <a href="#" onclick="deleteImageAction('m_profile_01', '01')" class="icon-md mdi mdi-close-box" id="btn-upload-01-del"></a>
	                    </div>
                      </div>
                      <div class="mr-3"></div>
                      <div class="form-group">
                        <img alt="" src="/admin/images/profile-example-02.png" id="img-wrap-02" style="max-width:100px;">
	                    <div class="form-check" style="text-align: center;">
	                        <a href="" class="icon-md mdi mdi-account-box" id="btn-upload-02"></a>
			                <input type="file" name="m_profile_02" id="m_profile_02" style="display:none;">
			                <a href="#" onclick="deleteImageAction('m_profile_02', '02')" class="icon-md mdi mdi-close-box" id="btn-upload-02-del"></a>
	                    </div>
                      </div>
		            </div>
                    
                    <div class="form-group">
                      <label for="m_name" class="control-label">이름</label>
                      <input type="text" class="form-control" name="m_name" id="m_name" placeholder="이름" data-error="이름을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_pwd" class="control-label">비밀번호</label>
	                  <input type="text" class="form-control" name="m_pwd" id="m_pwd" placeholder="비밀번호" data-error="비밀번호를 입력하세요." required>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_birthday">생년월일/나이 <i class="mdi mdi-at"></i></label>
                      <div class="input-group">
                      	<input type="text" class="form-control mr-2" name="m_birthday" id="m_birthday" placeholder="YYYY/MM/DD" data-error="생년월일/나이을 입력하세요." required>
                      	<input type="text" class="form-control input-group-append" name="m_age" id="m_age" placeholder="나이" data-error="생년월일/나이을 입력하세요." required>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_phone">전화번호 <i class="mdi mdi-at"></i></label>
                      <div class="input-group">
	                      <input type="text" class="form-control" name="m_phone" id="m_phone" placeholder="010-0000-0000" data-error="전화번호를 입력하세요." required>
	                      <div class="input-group-append">
	                        <button class="btn btn-sm btn-facebook" type="button">
	                          <i class="mdi mdi-phone-classic"></i>
	                        </button>
	                      </div>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_email">이메일</label>
                      <input type="email" class="form-control" name="m_email" id="m_email" placeholder="이메일">
                    </div>
                    
                </div>
              </div>
            </div>
            
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">상세정보입력</h4>
                    <div class="form-group">
                      <label for="input-gender">성별 / 키 / 몸무게</label>
                      <div class="input-group">
                        <select class="form-control mr-2" id="m_gender" name="m_gender">
                          <option value="female">여</option>
                          <option value="male">남</option>
                        </select>
	                    <input type="text" class="form-control input-group-append mr-2" name="m_height" id="m_height" placeholder="키">
	                    <input type="text" class="form-control input-group-append" name="m_weight" id="m_weight" placeholder="몸무게">
	                  </div>
                    </div> 
                    <div class="form-group">
                      <label for="m_edulv">최종학력</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="m_edulv" id="m_edulv">
                          <option value="01" >고등학교</option>
                          <option value="02" >전문대학</option>
                          <option value="03" >대학교</option>
                          <option value="04" >대학원</option>
                        </select>
                        <select class="form-control input-group-append" name="m_gradlv" id="m_gradlv">
                          <option value="01" >졸업</option>
                          <option value="02" >졸업예정</option>
                          <option value="03" >휴학중</option>
                          <option value="04" >중퇴</option>
                        </select>
                      </div>
                    </div>                    
                    <div class="form-group">
                      <label for="m_orgnm">학교/직장명</label>
                      <input type="text" class="form-control" name="m_orgnm" id="m_orgnm" placeholder="학교/직장명">
                    </div>
                    <div class="form-group">
                      <label for="m_toeic">토익점수</label>
                      <select class="form-control" name="m_toeic" id="m_toeic">
                        <option value="000" >없음</option>
                        <option value="500" >600 - </option>
                        <option value="600" >600 ~ 700</option>
                        <option value="700" >700 ~ 800</option>
                        <option value="800" >800 ~ 900</option>
                        <option value="900" >900 + </option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="m_seclan">외국어능력</label>                      
                      <div class="input-group">
                      <input type="text" class="form-control mr-2" name="m_seclan" id="m_seclan" value="${result.m_seclan }" placeholder="영어">  
                      <select class="col-3 form-control input-group-append" name="m_lanlv" id="m_lanlv">
                        <option value="hi" >상</option>
                        <option value="no" >중</option>
                        <option value="li" >하</option>
                      </select>
                      </div>
                    </div>
                    
                    <div class="input-group">
	                    <div class="form-group" style="width:50%;">
	                      <label>문자수신동의</label>
	                      <div class="form-check">
	                        <label class="form-check-label">
	                          <input type="radio" name="m_smsyn" id="m_smsy" class="form-check-input" value="y">예
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="radio" name="m_smsyn" id="m_smsn" class="form-check-input" value="n">아니오
	                        </label>
						  </div>
	                    </div>
	                    <div class="form-group" style="width:50%;">
	                      <label for="exampleInputPassword4">이메일수신동의</label>
	                      <div class="form-check form-check-inline">
						    <label class="form-check-label">
	                          <input type="radio" name="m_emlyn" id="m_emly" class="form-check-input" value="y">예
	                        </label>
	                      </div>
						  <div class="form-check form-check-inline">	
							<label class="form-check-label">
	                          <input type="radio" name="m_emlyn" id="m_emln" class="form-check-input" value="n">아니오
	                        </label>
						  </div>
	                    </div>
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
	                      <label>희망지원분야</label>
	                      <div class="form-check">
	                        <label class="form-check-label">
	                          <input type="checkbox" name="m_hopse" value="ke" id="hopke" class="form-check-input">대한항공
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_hopse" value="oz" id="hopoz" class="form-check-input">아시아나항공
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_hopse" value="ko" id="hopko" class="form-check-input">기타국내항공사
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_hopse" value="os" id="hopos" class="form-check-input">외국항공사
	                        </label>
						  </div>
	                    </div>
	                    <div class="form-group" style="width:50%;">
	                      <label>고민사항</label>
	                      <div class="form-check">
						    <label class="form-check-label">
	                          <input type="checkbox" name="m_wrse" value="1" id="wrspe" class="form-check-input">스펙
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_wrse" value="2" id="wrres" class="form-check-input">자기소개서
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_wrse" value="3" id="wrint" class="form-check-input">면접
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_wrse" value="4" id="wrkno" class="form-check-input">관련지식
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_wrse" value="5" id="wrlan" class="form-check-input">외국어
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" name="m_wrse" value="6" id="wretc" class="form-check-input">기타
	                        </label>
						  </div>
	                    </div>
                    </div>
                    <div class="form-group">
                      <label>궁금한내용</label>
                      <textarea class="form-control" name="m_cont" id="m_cont" rows="4"></textarea>
                    </div>
                    <div class="form-group">
                      <label>회원구분 / 기수</label>
                       <div class="input-group">
	                      <select class="form-control mr-2" name="m_memgb" id="m_memgb">
	                        <option value="신규">신규</option>
	                        <option value="정회원">정회원</option>
	                        <option value="재학생">재학생</option>
	                        <option value="탈퇴회원">탙퇴회원</option>                        
	                        <option value="불량회원">불량회원</option>
	                      </select>
	                      <input type="text" class="form-control input-group-append" name="m_th" id="m_th" placeholder="기수">
                      </div>
                    </div>
                    <div class="form-group">
                      <label>담당자</label>
                      <select class="form-control" name="m_dam" id="m_dam">
                        <c:forEach items="${sessionScope.ManagerList}" var="list">
                        <option value="${list.userid}" <c:if test="${ result.m_dam eq list.userid }">selected</c:if>>${list.usernm}</option>
                        </c:forEach>
                      </select>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="/manager/member" class="btn btn-light">취소</a>
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
 		$("#m_profile_01").click();
 	});
	
	$("#btn-upload-02").click(function (e) {
  		e.preventDefault();
 		$("#m_profile_02").click();
 	});
	
	
	$(document).ready(function(){
		$("#m_profile_01").on("change", handleImageFileSelect1);
		$("#m_profile_02").on("change", handleImageFileSelect2);
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

	
  </script>	
  
</body>

</html>


