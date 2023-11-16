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
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">  
                    <button type="button" class="btn btn-sm btn-danger btn-icon mr-2">
                      <i class="mdi mdi-heart"></i>
                    </button>
                    <span class="font-big"><b>${result.name } - ${result.regdate }</b></span>
                </div>
              </div>
            </div>
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body"> 
	               <p class="mb-md-0">
	               	<span class="mx-2">유입경료</span>
	               	<span class="mx-2">${result.domain}</span>
	               </p>
             	</div>
             </div>
            </div>
          </div>
          
		  <form role="form" name="counsel" method="post" action="/manager/counsel/update.do" data-toggle="validator">
          <input type="hidden" name="reurl" value="/manager/counsel.do"/>
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
                    
                    <div class="input-group">
	                    <div class="form-group" style="width:50%;">
	                      <label>희망지원분야 </label>
	                      <div class="form-check">
	                        <label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.hopse, '대한항공/아시아나항공') != -1 }">checked</c:if>
	                          value="대한항공/아시아나항공" name="hopse" id="hopke" class="form-check-input">대한항공/아시아나항공
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.hopse, '국내항공사') != -1 }">checked</c:if>
	                          value="국내항공사" name="hopse" id="hopko" class="form-check-input">국내항공사
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.hopse, '외국항공사') != -1 }">checked</c:if>
	                          value="외국항공사" name="hopse" id="hopos" class="form-check-input">외국항공사
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.hopse, '남자승무원') != -1 }">checked</c:if>
	                          value="남자승무원(스튜어드)" name="hopse" id="hopstd" class="form-check-input">남자승무원(스튜어드)
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.hopse, '항공사지상직승무원') != -1 }">checked</c:if>
	                          value="항공사지상직승무원" name="hopse" id="hopgs" class="form-check-input">항공사지상직승무원
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.hopse, '항공운항과대학입시') != -1 }">checked</c:if>
	                          value="항공운항과대학입시" name="hopse" id="hopipsi" class="form-check-input">항공운항과대학입시
	                        </label>
						  </div>
	                    </div>
	                    <div class="form-group" style="width:50%;">
	                      <label>고민사항</label>
	                      <div class="form-check">
						    <label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.worse, '01') != -1 }">checked</c:if>
	                          value="01" name="worse" id="wrspe" class="form-check-input">이미지
	                        </label>
	                      </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.worse, '02') != -1 }">checked</c:if> 
	                          value="02" name="worse" id="wrres" class="form-check-input">나이
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.worse, '03') != -1 }">checked</c:if>
	                          value="03" name="worse" id="wrint" class="form-check-input">외국어능력
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.worse, '04') != -1 }">checked</c:if>
	                          value="04" name="worse" id="wrkno" class="form-check-input">신체조건
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.worse, '05') != -1 }">checked</c:if>
	                          value="05" name="worse" id="wrlan" class="form-check-input">비전공
	                        </label>
						  </div>
						  <div class="form-check">	
							<label class="form-check-label">
	                          <input type="checkbox"
	                          <c:if test="${fn:indexOf(result.worse, '99') != -1 }">checked</c:if>
	                          value="99" name="worse" id="wretc" class="form-check-input">기타
	                        </label>
						  </div>
	                    </div>
                    </div>
                    <div class="form-group">
                      <label>궁금한내용</label>
                      <textarea class="form-control" name="memo" id="memo" rows="4">${result.memo}</textarea>
                    </div>
                    
                </div>
              </div>
            </div>
            <div class="col-md-4 grid-margin stretch-card">
               <!-- 이미지체크 -->
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">이미지체크</h4>
                    <div class="form-group">
                      <label for="input-gender">성별 / 키 / 몸무게</label>
                      <div class="input-group">
                        <select class="form-control mr-2" id="gender" name="gender">
                          <option value="" <c:if test="${result.gender eq ''}">selected</c:if>>성별</option>
                          <option value="female" <c:if test="${result.gender eq 'female'}">selected</c:if>>여</option>
                          <option value="male" <c:if test="${result.gender eq 'male'}">selected</c:if>>남</option>
                        </select>
	                    <input type="text" class="form-control input-group-append mr-2" value="${result.height }" name="height" id="height" placeholder="키">
	                    <input type="text" class="form-control input-group-append" value="${result.weight }" name="weight" id="weight" placeholder="몸무게">
	                  </div>
                    </div> 
                    <div class="form-group">
                      <label for="m_edulv">최종학력</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="edulv" id="edulv">
                          <option value="" <c:if test="${result.edulv eq ''}">selected</c:if>>학력</option>
                          <option value="01" <c:if test="${result.edulv eq '01'}">selected</c:if>>고등학교</option>
                          <option value="02" <c:if test="${result.edulv eq '02'}}">selected</c:if>>전문대학</option>
                          <option value="03" <c:if test="${result.edulv eq '03'}">selected</c:if>>대학교</option>
                          <option value="04" <c:if test="${result.edulv eq '04'}">selected</c:if> >대학원</option>
                        </select>
                        <select class="form-control input-group-append" name="gradlv" id="gradlv">
                          <option value="" <c:if test="${result.gradlv eq ''}">selected</c:if>>졸업여부</option>
                          <option value="01" <c:if test="${result.gradlv eq '01'}">selected</c:if>>졸업</option>
                          <option value="02" <c:if test="${result.gradlv eq '02'}">selected</c:if>>졸업예정</option>
                          <option value="03" <c:if test="${result.gradlv eq '03'}">selected</c:if>>휴학중</option>
                          <option value="04" <c:if test="${result.gradlv eq '04'}">selected</c:if>>중퇴</option>
                        </select>
	                  </div>
	                </div>
	                <div class="form-group">
                      <label for="m_seclan">외국어능력</label>                      
                      <div class="input-group">
                      <input type="text" class="form-control mr-2" name="lang" id="lang" value="${result.lang }" placeholder="">  
                      <select class="col-3 form-control input-group-append" name="langlv" id="langlv">
                        <option value="hi" <c:if test="${fn:indexOf(result.langlv, 'hi') != -1 }">selected</c:if>>상</option>
                        <option value="no" <c:if test="${fn:indexOf(result.langlv, 'no') != -1 }">selected</c:if>>중</option>
                        <option value="li" <c:if test="${fn:indexOf(result.langlv, 'li') != -1 }">selected</c:if>>하</option>
                      </select>
                      </div>
                    </div>
                  <h4 class="card-title">선택한커리뮬럼</h4>
                    <div class="form-group">
                      <span class="">${result.wants}</span>
                    </div>                                       
                </div>
              </div>

              <!-- 이미지체크 -->
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
	                        <option value="상담예약" <c:if test="${result.stat eq '상담예약'}">selected</c:if>>상담예약</option>
	                        <option value="상담완료" <c:if test="${result.stat eq '상담완료'}">selected</c:if>>상담완료</option>
	                        <option value="재학생" <c:if test="${result.stat eq '재학생'}">selected</c:if>>재학생</option>                        
	                        <option value="항운팀이관" <c:if test="${result.stat eq '항운팀이관'}">selected</c:if>>항운팀이관</option>
	                        <option value="지상직팀이관" <c:if test="${result.stat eq '지상직팀이관'}">selected</c:if>>지상직팀이관</option>
	                        <%-- <option value="불량회원" <c:if test="${result.stat eq '불량회원'}">selected</c:if>>불량회원</option> --%>
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
                    <button type="button" onclick="deleteRow('${result.idx}')" class="btn btn-danger mr-2">완전삭제</button>
                    <a href="/manager/black.do" class="btn btn-light">취소</a>
                </div>
              </div>
            </div>
          </div>
		</form>          

			<div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">  
                	<div class="table-responsive">
                    <table id="counsel" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th width="100px">접속일자</th>
                            <th width="100px">접속아이피</th>
                            <th width="100px">키워드</th>
                            <th width="600px">접속경로</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="${log}" var="log">
	               			<c:choose>
	               				<c:when test="${fn:indexOf(log.path, 'crew-factory') > -1 || fn:indexOf(log.path, 'crewfac') > -1 || fn:indexOf(log.path, 'crewseoul') > -1 || fn:indexOf(log.path, 'null') > -1}"></c:when>
	               				<c:otherwise>
	               					<tr>
	               						<td width="100px"><fmt:formatDate value="${log.regdate}" pattern="yyyy-MM-dd HH:ss" /></td>
	               						<td width="100px">${log.ipaddr}</td>
	               						<td width="100px">${log.keyword}</td>
	               						<td width="600px">${log.path}</td>
	               					</tr>
	               				</c:otherwise>
	               			</c:choose>
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
  
<script>
  	
	function deleteRow(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href="/manager/counsel/delete.do?reurl=/manager/black.do&idx="+idx;	
		}else{
			return;
		}		
	}
	
  	$(document).ready(function() {
	    $('#counsel').DataTable({
	    	"order": [[0, 'desc']]
	    });
	} ); 	


</script>	
  
</body>

</html>


