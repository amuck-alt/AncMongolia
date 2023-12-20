<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/manager/index.do">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">DashBoard</span>
            </a>
          </li>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super'}">
          <li class="nav-item">
            <a class="nav-link" href="/manager/auth/Auth.do?act=b">
              <i class="mdi mdi-key menu-icon"></i>
              <span class="menu-title">Manager</span>
            </a>
          </li>
          </c:if>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super' || sessionScope.ManagerInfo.section eq 'recruit'}">
          <li class="nav-item <c:if test="${ param.act eq 'c'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#mem" aria-expanded="false" aria-controls="mem">
              <i class="mdi mdi-account menu-icon"></i>
              <span class="menu-title">Member</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="mem">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="/manager/counsel/list.do">Counsel</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item <c:if test="${ param.act eq 'd'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#bbs" aria-expanded="false" aria-controls="bbs">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">Board Management</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="bbs">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="/manager/announce/list.do">Announce</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#recruit" aria-expanded="false" aria-controls="bbs">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">Recruit Management</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="recruit">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="/manager/ehr/list.do">Recruit</a></li>
				<li class="nav-item"><a class="nav-link" href="/manager/volunteer/list.do">Volunteer</a></li>
				<li class="nav-item"><a class="nav-link" href="/manager/intv/list.do">Interview</a></li>
              </ul>
            </div>
          </li>
          </c:if>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super' || sessionScope.ManagerInfo.section eq 'student'}">
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#student" aria-expanded="false" aria-controls="student">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">Student</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="student">
              <ul class="nav flex-column sub-menu">
              	<li class="nav-item"><a class="nav-link" href="/manager/notice/list.do">Manager Announce</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/reservation/list.do?cons_status=&cons_startday=&cons_endday=&cons_manager=">Consultation Management</a></li>
				<li class="nav-item"><a class="nav-link" href="/manager/student/list.do?status=&curriculum=&korname=&mobile=&mento=">Student Management</a></li>
              </ul>
            </div>
          </li>
          </c:if>
        </ul>
      </nav>
      <!-- partial -->