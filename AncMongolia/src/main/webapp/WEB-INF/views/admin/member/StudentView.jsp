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
          <div class="row">
            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">  
                    <button type="button" class="btn btn-sm btn-danger btn-icon mr-2">
                      <i class="mdi mdi-heart"></i>
                    </button>
                    <span class="font-big"><b>${result.m_name } - ${result.m_id }</b></span>
                </div>
              </div>
            </div>
            <div class="col-md-9 grid-margin stretch-card">
              <div class="card">
                <div class="card-body"> 
	               <p class="mb-md-0">1차 유입경료 : </p>
	               <p class="mb-md-0">2차 유입경료 : </p>
	               <p class="mb-md-0">3차 유입경료 :  </p>
             	</div>
             </div>
            </div>
          </div>
          
		  <form role="form" name="member" method="post" action="/manager/member/update" data-toggle="validator">
          <input type="hidden" name="m_idx" value="${result.m_idx }"/>
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
                      <label for="m_name" class="control-label">이름 <i class="mdi mdi-at"></i></label>
                      <input type="text" class="form-control" value="${result.m_name }" name="m_name" id="m_name" placeholder="이름" data-error="이름을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_pwd" class="control-label">비밀번호 <i class="mdi mdi-at"></i></label>
	                  <input type="text" class="form-control" value="${result.m_pwd }" name="m_pwd" id="m_pwd" placeholder="비밀번호" data-error="비밀번호를 입력하세요." required>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_birthday">생년월일/나이 <i class="mdi mdi-at"></i></label>
                      <div class="input-group">
                      	<input type="text" class="form-control mr-2" value="${result.m_birthday }" name="m_birthday" id="m_birthday" placeholder="YYYY/MM/DD" data-error="생년월일/나이을 입력하세요." required>
                      	<input type="text" class="form-control input-group-append" value="${result.m_age }" name="m_age" id="m_age" placeholder="나이" data-error="생년월일/나이을 입력하세요." required>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="m_phone">전화번호 <i class="mdi mdi-at"></i></label>
                      <div class="input-group">
	                      <input type="text" class="form-control" value="${result.m_phone }" name="m_phone" id="m_phone" placeholder="010-0000-0000" data-error="전화번호를 입력하세요." required>
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
                      <input type="email" class="form-control" value="${result.m_email }" name="m_email" id="m_email" placeholder="이메일">
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
                          <option value="female" <c:if test="${result.m_gender eq 'female'}">selected</c:if>>여</option>
                          <option value="male" <c:if test="${result.m_gender eq 'male'}">selected</c:if>>남</option>
                        </select>
	                    <input type="text" class="form-control input-group-append mr-2" value="${result.m_height }" name="m_height" id="m_height" placeholder="키">
	                    <input type="text" class="form-control input-group-append" value="${result.m_weight }" name="m_weight" id="m_weight" placeholder="몸무게">
	                  </div>
                    </div> 
                    <div class="form-group">
                      <label for="m_edulv">최종학력</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="m_edulv" id="m_edulv">
                          <option value="01" <c:if test="${result.m_edulv eq '01'}">selected</c:if>>고등학교</option>
                          <option value="02" <c:if test="${result.m_edulv eq '02'}">selected</c:if>>2년제대학</option>
                          <option value="03" <c:if test="${result.m_edulv eq '03'}">selected</c:if>>대학교</option>
                          <option value="04" <c:if test="${result.m_edulv eq '04'}">selected</c:if>>대학원</option>
                        </select>
                        <select class="form-control input-group-append" name="m_gradlv" id="m_gradlv">
                          <option value="01" <c:if test="${result.m_gradlv eq '01'}">selected</c:if>>졸업</option>
                          <option value="02" <c:if test="${result.m_gradlv eq '02'}">selected</c:if>>졸업예정</option>
                          <option value="03" <c:if test="${result.m_gradlv eq '03'}">selected</c:if>>휴학중</option>
                          <option value="04" <c:if test="${result.m_gradlv eq '04'}">selected</c:if>>중퇴</option>
                        </select>
                      </div>
                    </div>                    
                    <div class="form-group">
                      <label for="m_orgnm">학교/직장명</label>
                      <input type="text" class="form-control" value="${result.m_orgnm }" name="m_orgnm" id="m_orgnm" placeholder="학교/직장명">
                    </div>
                    <div class="form-group">
                      <label for="m_toeic">토익점수</label>
                      <select class="form-control" name="m_toeic" id="m_toeic">
                        <option value="000" <c:if test="${result.m_toeic eq '000'}">selected</c:if>>없음</option>
                        <option value="500" <c:if test="${result.m_toeic eq '500'}">selected</c:if>>600 - </option>
                        <option value="600" <c:if test="${result.m_toeic eq '600'}">selected</c:if>>600 ~ 700</option>
                        <option value="700" <c:if test="${result.m_toeic eq '700'}">selected</c:if>>700 ~ 800</option>
                        <option value="800" <c:if test="${result.m_toeic eq '800'}">selected</c:if>>800 ~ 900</option>
                        <option value="900" <c:if test="${result.m_toeic eq '900'}">selected</c:if>>900 + </option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="m_seclan">외국어능력</label>                      
                      <div class="input-group">
                      <input type="text" class="form-control mr-2" name="m_seclan" id="m_seclan" value="${result.m_seclan }" placeholder="영어">  
                      <select class="col-3 form-control input-group-append" name="m_lanlv" id="m_lanlv">
                        <option value="hi" <c:if test="${result.m_toeic eq 'hi'}">selected</c:if>>상</option>
                        <option value="no" <c:if test="${result.m_toeic eq 'no'}">selected</c:if>>중</option>
                        <option value="li" <c:if test="${result.m_toeic eq 'li'}">selected</c:if>>하</option>
                      </select>
                      </div>
                    </div>
                    
                    <div class="input-group">
	                    <div class="form-group" style="width:50%;">
	                      <label>문자수신동의</label>
	                      <div class="form-check">
	                        <label class="form-check-label">
	                          <input type="radio" <c:if test="${result.m_smsyn eq 'y'}">checked</c:if> name="m_smsyn" id="m_smsy" class="form-check-input" value="y">예
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="radio" <c:if test="${result.m_smsyn eq 'n'}">checked</c:if> name="m_smsyn" id="m_smsn" class="form-check-input" value="n">아니오
	                        </label>
						  </div>
	                    </div>
	                    <div class="form-group" style="width:50%;">
	                      <label for="exampleInputPassword4">이메일수신동의</label>
	                      <div class="form-check form-check-inline">
						    <label class="form-check-label">
	                          <input type="radio" <c:if test="${result.m_emlyn eq 'y'}">checked</c:if> name="m_emlyn" id="m_emly" class="form-check-input" value="y">예
	                        </label>
	                      </div>
						  <div class="form-check form-check-inline">	
							<label class="form-check-label">
	                          <input type="radio" <c:if test="${result.m_emlyn eq 'n'}">checked</c:if> name="m_emlyn" id="m_emln" class="form-check-input" value="n">아니오
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
	                          <input type="checkbox" <c:forEach items="${result.m_hopse}" var="check"><c:if test="${check eq 'ke'}">checked</c:if></c:forEach> value="ke" name="m_hopse" id="hopke" class="form-check-input">대한항공
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_hopse}" var="check"><c:if test="${check eq 'oz'}">checked</c:if></c:forEach> value="oz" name="m_hopse" id="hopoz" class="form-check-input">아시아나항공
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_hopse}" var="check"><c:if test="${check eq 'ko'}">checked</c:if></c:forEach> value="ko" name="m_hopse" id="hopko" class="form-check-input">기타국내항공사
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_hopse}" var="check"><c:if test="${check eq 'os'}">checked</c:if></c:forEach> value="os" name="m_hopse" id="hopos" class="form-check-input">외국항공사
	                        </label>
						  </div>
	                    </div>
	                    <div class="form-group" style="width:50%;">
	                      <label>고민사항</label>
	                      <div class="form-check">
						    <label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_wrse}" var="check"><c:if test="${check eq '01'}">checked</c:if></c:forEach> value="01" name="m_wrse" id="wrspe" class="form-check-input">스펙
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_wrse}" var="check"><c:if test="${check eq '02'}">checked</c:if></c:forEach> value="02" name="m_wrse" id="wrres" class="form-check-input">자기소개서
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_wrse}" var="check"><c:if test="${check eq '03'}">checked</c:if></c:forEach> value="03" name="m_wrse" id="wrint" class="form-check-input">면접
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_wrse}" var="check"><c:if test="${check eq '04'}">checked</c:if></c:forEach> value="04" name="m_wrse" id="wrkno" class="form-check-input">관련지식
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_wrse}" var="check"><c:if test="${check eq '05'}">checked</c:if></c:forEach> value="05" name="m_wrse" id="wrlan" class="form-check-input">외국어
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox" <c:forEach items="${result.m_wrse}" var="check"><c:if test="${check eq '06'}">checked</c:if></c:forEach> value="06" name="m_wrse" id="wretc" class="form-check-input">기타
	                        </label>
						  </div>
	                    </div>
                    </div>
                    <div class="form-group">
                      <label>궁금한내용</label>
                      <textarea class="form-control" name="m_cont" id="m_cont" rows="4">${result.m_cont}</textarea>
                    </div>
                    <div class="form-group">
                      <label>회원구분 / 기수</label>
                       <div class="input-group">
	                      <select class="form-control mr-2" name="m_memgb" id="m_memgb">
	                        <option value="신규" <c:if test="${result.m_memgb eq '신규'}">selected</c:if>>신규</option>
	                        <option value="준회원" <c:if test="${result.m_memgb eq '정회원'}">selected</c:if>>준회원(상담)</option>
	                        <option value="정회원" <c:if test="${result.m_memgb eq '재학생'}">selected</c:if>>정회원(재학생)</option>
	                        <option value="탈퇴회원" <c:if test="${result.m_memgb eq '탈퇴회원'}">selected</c:if>>탙퇴회원</option>                        
	                        <option value="불량회원" <c:if test="${result.m_memgb eq '불량회원'}">selected</c:if>>불량회원</option>
	                      </select>
	                      <input type="text" class="form-control input-group-append" value="${result.m_th }" name="m_th" id="m_th" placeholder="기수">
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
                    <button type="button" onclick="deleteMember('${result.m_idx}')" class="btn btn-danger mr-2">삭제</button>
                    <a href="/manager/member" class="btn btn-light">취소</a>
                </div>
              </div>
            </div>
          </div>
		</form>          
  
        <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="card-title">
                  	<button type="button" name="mem-new" class="btn btn-info" onclick="goWrite()">
                  		<i class="mdi mdi-account"></i></button>
                  	<span class="mx-1"></span>
                  </div>
                  <div class="table-responsive">
                    <table id="member-comment" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>구분</th>
                            <th>회원이름</th>
                            <th>등록일자</th>
                            <th>담당자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                            <td>구분</td>
                            <td>코멘트</td>
                            <td>2019-10-23 13:00</td>
                            <td>이말련</td>
                        </tr>
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
	
	function deleteMember(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			document.location.href="/manager/member/delete?idx="+idx;	
		}else{
			return;
		}		
	}

	
  </script>	
  
</body>

</html>


