<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                    <h3 class="under-line mx-1">채용정보관리@</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
		<form name="hr" method="post" action="/manager/volunteer/update.do">
		<input type="hidden" name="idx" value="${result.idx }" />
		<input type="hidden" name="catenum" value="${result.catenum }" />          
        <div class="row">
        <!-- 개인프로필입력 시작 -->
		<div class="col-12 my-2 font-bold font-20">개인프로필</div>
		<div class="col-4 my-2" id="mobile-100-percent">
			<div class="card">
				<div class="card-body my-5">
					<div class="form-group my-4">
						<label for="photo" class="font-bold my-2"></label>
						<div class="text-center my-4 mx-5">
               				<img src="${result.photo}" class="wrapper-tn" id="wrapper-tn" width="67%">
               			</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-4 my-2" id="mobile-100-percent">
			<div class="card">
				<div class="card-body">
					<div class="form-group">
						<label for="korname" class="form-label font-bold">국문이름</label>
						<div class="input-group">
							<input type="text" class="form-control" name="korname" id="korname" value="${result.korname}" >
						</div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">영문이름</label>
						<div class="input-group">
							<input type="text" class="form-control" name="engname" id="engname" value="${result.engname}">
						</div>
					</div>
					<div class="form-group">
						<label for="phoneagency" class="font-bold">휴대폰번호</label>
						<div class="input-group">
							<select class="form-control mr-2" name="phoneagency" id="phoneagency">
								<option value="010">010</option>
							</select>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="phonefirst" id="phonefirst" maxlength="4" value="${result.phonefirst}">
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="phonesecond" id="phonesecond" maxlength="4" value="${result.phonesecond}">
						</div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">이메일</label>
						<div class="input-group">
							<input type="email" class="form-control" name="email" id="email" value="${result.email}">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 개인프로필입력 끝 -->
		<!-- 상세정보입력 시작 -->
		<div class="col-8 my-2">
			<div class="col-12 my-2 font-bold font-20">상세정보</div>
			<div class="card my-2 col-12">
				<div class="card-body">
					<div class="form-group">
						<label for="input-gender">생년월일</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthyear" id="birthyear" maxlength="4" value="${result.birthyear}">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthmonth" id="birthmonth" maxlength="2" value="${result.birthmonth}">
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="birthday" id="birthday" maxlength="2" value="${result.birthday}">
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">키 </label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="height" id="height" maxlength="3" value="${result.height}">
							<!-- input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="weight" id="weight" maxlength="2" value="${result.weight}" -->
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="gender">성별 / 나이 / 국적</label>
						<div class="input-group">
							<select class="form-control mr-2" id="gender" name="gender" required>
								<option value="여" <c:if test="${result.gender eq '여'}">selected</c:if>>여</option>
								<option value="남" <c:if test="${result.gender eq '남'}">selected</c:if>>남</option>
							</select>
							<input type="text" class="form-control mr-2 input-group-append" name="age" id="age" maxlength="30" value="${result.age}">
							<input type="text" class="form-control input-group-append" name="nation" id="nation" maxlength="30" value="${result.nation}">
						</div>
					</div>
					<div class="form-group">
						<label for="edulv">지역</label>
						<div class="input-group">
						<input type="text" class="form-control" name="address" id="address" value="${result.address}">
						</div>
					</div> 
					<div class="form-group">
						<label for="edulv">최종학력</label>
						<div class="input-group">
						<input type="text" class="form-control mr-2" name="edulv" id="edulv" value="${result.edulv}">
						<select class="form-control input-group-append mr-2" name="edugb" id="edugb" required>
							<option value="고등학교" <c:if test="${result.edugb eq '고등학교'}">selected</c:if>>고등학교</option>
							<option value="2년제" <c:if test="${result.edugb eq '2년제'}">selected</c:if>>2년제</option>
							<option value="3년제" <c:if test="${result.edugb eq '3년제'}">selected</c:if>>3년제</option>
							<option value="4년제" <c:if test="${result.edugb eq '4년제'}">selected</c:if>>4년제</option>
							<option value="대학원" <c:if test="${result.edugb eq '대학원'}">selected</c:if>>대학원</option>
						</select>
						<select class="form-control input-group-append" name="gradlv" id="gradlv" required>
							<option value="졸업" <c:if test="${result.gradlv eq '졸업'}">selected</c:if>>졸업</option>
							<option value="졸업예정" <c:if test="${result.gradlv eq '졸업예정'}">selected</c:if>>졸업예정</option>
							<option value="휴학중" <c:if test="${result.gradlv eq '휴학중'}">selected</c:if>>휴학중</option>
							<option value="중퇴" <c:if test="${result.gradlv eq '중퇴'}">selected</c:if>>중퇴</option>
						</select>
						</div>
					</div>
					<div class="form-group">
						<label for="langlv">어학점수(영어)</label>                      
						<div class="input-group">
							<input type="text" class="form-control mr-2" name="langlv1" id="langlv1" value="${result.langlv1 }">  
						</div>
					</div>
					<div class="form-group">
						<label for="langlv">어학점수(기타외국어)</label>                      
						<div class="input-group">
							<input type="text" class="form-control mr-2" name="langlv2" id="langlv2" value="${result.langlv2 }">  
						</div>
					</div>
					<div class="form-group">
						<label for="reference">서비스기간 / 포지션</label>                      
						<div class="input-group">
							<input type="text" class="form-control mr-2" name="referyear" id="referyear" value="${result.referyear }">
							<input type="text" class="form-control mr-2" name="reference" id="reference" value="${result.reference }">
						</div>
					</div> 
					<!-- div class="form-group">
						<label for="introduce">자기소개</label>                      
						<div class="input-group">
							<textarea class="form-control" name="introduce" id="introduce" rows="8">${result.introduce}</textarea>
						</div>
					</div -->  
				</div>
			</div>
		</div>
		<!-- 상세정보입력 끝 -->
        
        
		<div class="col-8 text-right form-group">  
			<button type="submit" class="btn btn-primary mr-2" id="blogSave">저장</button>
			<button type="button" class="btn btn-danger mr-2" onclick="delPost('${ result.idx }', '${result.catenum }');">삭제</button>
			<a href="/manager/volunteer/list.do?catenum=${param.catenum }" class="btn btn-light">취소</a>
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


