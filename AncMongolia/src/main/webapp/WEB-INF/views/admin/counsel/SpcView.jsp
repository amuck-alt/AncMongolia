<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <!-- div class="row">
            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">  
                    <button type="button" class="btn btn-sm btn-danger btn-icon mr-2">
                      <i class="mdi mdi-heart"></i>
                    </button>
                    <span class="font-big"><b>${result.name } - ${result.id }</b></span>
                </div>
              </div>
            </div>
            <div class="col-md-9 grid-margin stretch-card">
              <div class="card">
                <div class="card-body"> 
	               <p class="mb-md-0">유입경료 : </p>
             	</div>
             </div>
            </div>
          </div-->
          
		  <form role="form" name="counsel" method="post" action="/manager/counsel/update.do" data-toggle="validator">
          <input type="hidden" name="reurl" value="/manager/spclass.do"/>
          <input type="hidden" name="idx" value="${result.idx }"/>
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">상담자개인정보</h4>
                    <div class="form-group">
                      <label for="m_name" class="control-label">이름/나이 </label>
                      <div class="input-group">
                      	<input type="text" class="form-control" value="${result.name }" name="name" id="name" placeholder="이름" disabled>
                      	<input type="text" class="ml-2 form-control" value="${result.age }" name="age" id="age" placeholder="나이">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="m_phone">연락처 </label>
                      <div class="input-group">
	                      <input type="text" class="form-control" value="${result.phone }" name="phone" id="phone" placeholder="010-0000-0000" disabled>
	                      <div class="input-group-append">
	                        <button class="btn btn-sm btn-facebook" type="button">
	                          <i class="mdi mdi-phone-classic"></i>
	                        </button>
	                      </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label>이메일</label>
                      <input type="text" class="form-control" value="${result.email }" name="email" id="email">
                    </div>
                    <div class="form-group">
                      <label>신청내용</label>
                      <textarea class="form-control" name="memo" id="memo" rows="4">${result.memo}</textarea>
                    </div>
                    
                </div>
              </div>
            </div>
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">상담정보입력</h4>
                    <div class="form-group">
                      <label>상태</label>
                       <div class="input-group">
	                      <select class="form-control mr-2" name="stat" id="stat">
	                        <option value="신규" <c:if test="${result.stat eq '신규'}">selected</c:if>>신규</option>
	                        <option value="확인" <c:if test="${result.stat eq '확인'}">selected</c:if>>확인</option>
	                        <option value="부재중" <c:if test="${result.stat eq '부재중'}">selected</c:if>>부재중</option>
	                        <option value="처리중" <c:if test="${result.stat eq '처리중'}">selected</c:if>>처리중</option>
	                        <option value="상담예약" <c:if test="${result.stat eq '상담예약'}">selected</c:if>>상담예약</option>
	                        <option value="상담완료" <c:if test="${result.stat eq '상담완료'}">selected</c:if>>상담완료</option>
	                        <option value="재학생" <c:if test="${result.stat eq '재학생'}">selected</c:if>>재학생</option>                        
	                        <option value="항운팀이관" <c:if test="${result.stat eq '항운팀이관'}">selected</c:if>>항운팀이관</option>
	                        <option value="지상직팀이관" <c:if test="${result.stat eq '지상직팀이관'}">selected</c:if>>지상직팀이관</option>
	                        <option value="불량상담자" <c:if test="${result.stat eq '불량상담자'}">selected</c:if>>불량상담자</option>                        
	                      </select>
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
                    <div class="form-group">
                      <label>상담메모</label>
					  <textarea class="form-control" name="smemo" id="smemo" rows="10">${result.smemo}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <c:if test="${sessionScope.ManagerInfo.section eq 'super'}">
                    <button type="button" onclick="deleteRow('${result.idx}')" class="btn btn-danger mr-2">삭제</button>
                    </c:if>
                    <a href="/manager/spclass.do" class="btn btn-light">취소</a>
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
  	
	function deleteRow(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href="/manager/counsel/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}

</script>	
  
</body>

</html>


