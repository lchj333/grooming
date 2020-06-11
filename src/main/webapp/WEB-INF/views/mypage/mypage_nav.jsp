<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Ansonika">
  <title>Grooming mypage</title>
	
  <!-- Favicons-->
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
  <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

  <!-- GOOGLE WEB FONT -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
	
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
  <!-- Main styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/css/admin.css" rel="stylesheet">
  <!-- Icon fonts-->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Plugin styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/dropzone.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/mypage/css/date_picker.css" rel="stylesheet">
   <!-- WYSIWYG Editor -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/mypage/js/editor/summernote-bs4.css">
  <!-- Your custom styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/css/custom.css" rel="stylesheet">
	
</head>


<body class="fixed-nav sticky-footer" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-default fixed-top" id="mainNav">
    <a class="navbar-brand" href="#"><img src="<c:url value='/resources/mypage/img/grooming_logo_main.png'/>" data-retina="true" alt="" width="150" height="36"></a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="My profile">
          <a class="nav-link" href="<c:url value='/WEB-INF/views/mypage/grooming_user_profile.jsp'/>">
            <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">회원정보</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Messages">
          <a class="nav-link" href="<c:url value='/WEB-INF/views/mypage/grooming_user_talk.jsp'/>">
            <i class="fa fa-fw fa-envelope-open"></i>
            <span class="nav-link-text">1대1 대화</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="" data-original-title="Bookings">
          <a class="nav-link" href="<c:url value='/WEB-INF/views/mypage/grooming_user_booking.jsp'/>">
            <i class="fa fa-fw fa-calendar-check-o"></i>
            <span class="nav-link-text">예약정보<span class="badge badge-pill badge-primary">6 New</span></span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Reviews">
          <a class="nav-link" href="<c:url value='/WEB-INF/views/mypage/grooming_user_review.jsp'/>">
            <i class="fa fa-fw fa-star"></i>
            <span class="nav-link-text">내리뷰</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Bookmarks">
          <a class="nav-link" href="<c:url value='/WEB-INF/views/mypage/grooming_user_bookmark.jsp'/>">
            <i class="fa fa-fw fa-heart"></i>
            <span class="nav-link-text">북마크</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="가게정보">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseInquiry" data-parent="#mylistings">
            <i class="fa fa-fw fa-list"></i>
            <span class="nav-link-text">관리자문의</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseInquiry">
            <li>
              <a href="grooming_hairdresser_addList.jsp">문의하기<span class="badge badge-pill badge-primary">6</span></a>
            </li>
			<li>
              <a href="grooming_hairdresser_talk.jsp">문의확인<span class="badge badge-pill badge-success">6</span></a>
            </li>
          </ul>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Add listing">
          <a class="nav-link" href="grooming_user_hairdresserRegist.jsp">
            <i class="fa fa-fw fa-plus-circle"></i>
            <span class="nav-link-text">미용사 등록</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="가게정보">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMylistings" data-parent="#mylistings">
            <i class="fa fa-fw fa-list"></i>
            <span class="nav-link-text">가게정보</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseMylistings">
            <li>
              <a href="grooming_hairdresser_addList.jsp">가게등록<span class="badge badge-pill badge-primary">6</span></a>
            </li>
			<li>
              <a href="grooming_hairdresser_talk.jsp">메시지<span class="badge badge-pill badge-success">6</span></a>
            </li>
			<li>
              <a href="grooming_hairdresser_approval.jsp">예약승인<span class="badge badge-pill badge-danger">6</span></a>
            </li>
            <li>
              <a href="grooming_hairdresser_review.jsp">내 가게 리뷰 보기<span class="badge badge-pill badge-danger">6</span></a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="가게정보">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapsePay" data-parent="#mylistings">
            <i class="fa fa-fw fa-list"></i>
            <span class="nav-link-text">포인트충전</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapsePay">
            <li>
              <a href="${pageContext.request.contextPath}/mypage/pointcharging">포인트충전<span class="badge badge-pill badge-primary">6</span></a>
            </li>
			<li>
              <a href="${pageContext.request.contextPath}/mypage/selectpayed">충전내역<span class="badge badge-pill badge-success">6</span></a>
            </li>
          </ul>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#Components">
            <i class="fa fa-fw fa-gear"></i>
            <span class="nav-link-text">관리자</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="grooming_admin_charts.jsp">차트</a>
            </li>
			<li>
              <a href="grooming_admin_management.jsp">회원관리</a>
            </li>
            <li>
              <a href="grooming_admin_management.jsp">문의보기</a>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- /Navigation-->

	
</body>
</html>
