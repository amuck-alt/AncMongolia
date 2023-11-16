<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                    <h3 class="under-line mx-1">이전회원조회@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-clock-outline text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                  <button class="btn btn-primary mt-2 mt-xl-0">Download report</button>
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="card-title">
                  	<!-- button type="button" name="mem-new" class="btn btn-info" onclick="goWrite()">
                  		<i class="mdi mdi-account"></i></button-->
                  	<span class="mx-1"></span>
                  </div>
                  <div class="table-responsive">
                    <table id="member" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>idx</th>
                            <th>userid</th>
                            <th>jumin</th>
                            <th>level</th>
                            <th>class</th>
                            <th>confirm</th>
                            <th>pass</th>
                            <th>name</th>
                            <th>hzpcd</th>
                            <th>haddr1</th>
                            <th>haddr2</th>
                            <th>htel</th>
                            <th>ptel</th>
                            <th>email</th>
                            <th>gisu</th>
                            <th>height</th>
                            <th>academic</th>
                            <th>gradu</th>
                            <th>job</th>
                            <th>hopeair</th>
                            <th>elang</th>
                            <th>jlang</th>
                            <th>clang</th>
                            <th>memo</th>
                            <th>memo1</th>
                            <th>pagree</th>
                            <th>sagree</th>
                            <th>eagree</th>
                            <th>file</th>
                            <th>point</th>
                            <th>ldate</th>
                            <th>idate</th>
                            <th>sex</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                        	<td>${list.m_idx}</td>
                            <td>${list.m_userid}</td>
                            <td>${list.m_jumin}</td>
                            <td>${list.m_level}</td>
                            <td>${list.m_class}</td>
                            <td>${list.m_confirm}</td>
                            <td>${list.m_pass}</td>
                            <td>${list.m_name}</td>
                            <td>${list.m_hzpcd}</td>
                            <td>${list.m_haddr1}</td>
                            <td>${list.m_haddr2}</td>
                            <td>${list.m_htel}</td>
                            <td>${list.m_ptel}</td>
                            <td>${list.m_email}</td>
                            <td>${list.m_gisu}</td>
                            <td>${list.m_height}</td>
                            <td>${list.m_academic}</td>
                            <td>${list.m_gradu}</td>
                            <td>${list.m_job}</td>
                            <td>${list.m_hopeair}</td>
                            <td>${list.m_elang}</td>
                            <td>${list.m_jlang}</td>
                            <td>${list.m_clang}</td>
                            <td>${list.m_memo}</td>
                            <td>${list.m_memo1}</td>
                            <td>${list.m_pagree}</td>
                            <td>${list.m_sagree}</td>
                            <td>${list.m_eagree}</td>
                            <td>${list.m_file}</td>
                            <td>${list.m_point}</td>
                            <td>${list.m_ldate}</td>
                            <td>${list.m_idate}</td>
                            <td>${list.m_sex}</td>
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
  
  <script>
  	$(document).ready(function() {
	    $('#member').DataTable({
	    	"order": [[0, 'desc']]
	    });
	}); 	
  </script>
  
</body>

</html>


