<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/manager/index.do">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">대시보드</span>
            </a>
          </li>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super'}">
          <li class="nav-item">
            <a class="nav-link" href="/manager/auth/Auth.do?act=b">
              <i class="mdi mdi-key menu-icon"></i>
              <span class="menu-title">권한관리</span>
            </a>
          </li>
          </c:if>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super' || sessionScope.ManagerInfo.section eq 'recruit'}">
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#mem" aria-expanded="false" aria-controls="mem">
              <i class="mdi mdi-account menu-icon"></i>
              <span class="menu-title">회원관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="mem">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="/manager/counsel/list.do">상담신청관리</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#bbs" aria-expanded="false" aria-controls="bbs">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">게시판관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="bbs">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="/manager/announce/list.do">공지사항</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#recruit" aria-expanded="false" aria-controls="recruit">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">채용관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="recruit">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="/manager/ehr/list.do">채용공고</a></li>
				<li class="nav-item"><a class="nav-link" href="/manager/volunteer/list.do">지원자관리</a></li>
				<li class="nav-item"><a class="nav-link" href="/manager/intv/list.do">면접일자관리</a></li>
              </ul>
            </div>
          </li>
          </c:if>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super' || sessionScope.ManagerInfo.section eq 'student'}">
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#student" aria-expanded="false" aria-controls="student">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">학생관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="student">
              <ul class="nav flex-column sub-menu">
              	<li class="nav-item"><a class="nav-link" href="/manager/notice/list.do">공지사항</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/reservation/list.do?cons_status=&cons_startday=&cons_endday=&cons_manager=&cons_customer=">상담예약관리</a></li>
				<li class="nav-item"><a class="nav-link" href="/manager/student/list.do?status=&curriculum=&korname=&mobile=&mento=">재학생관리</a></li>
              </ul>
            </div>
          </li>
          </c:if>
        </ul>
      </nav>
      <!-- partial -->