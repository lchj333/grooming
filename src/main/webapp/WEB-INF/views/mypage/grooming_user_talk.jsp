<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>talk</title>

<!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->

</head>
<body>

<jsp:include page="mypage_nav.jsp"></jsp:include>

<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">일반회원</a>
        </li>
        <li class="breadcrumb-item active">1대1대화</li>
      </ol>
		<div class="box_general">
			<h4>1대1 대화</h4>
			<div class="list_general">
				<ul>
				
					<!-- 여기는 c:forEach로 반복문으로 출력 -->
					<c:forEach var="i" begin="1" end="3">
					<li>
						<span>jstl 시간</span>
						<figure><img src="img/avatar1.jpg" alt=""></figure>
						<h4>jstl 가게 이름<i class="unread">Unread</i></h4>
						<p>In vim mucius menandri convenire, an brute zril vis. Ancillae delectus necessitatibus no eam, at porro solet veniam mel, ad everti nostrud vim. Eam no menandri pertinacia deterruisset.</p>
					</li>
					<li>
						<span>2 hours ago</span>
						<figure><img src="img/avatar2.jpg" alt=""></figure>
						<h4>jstl 가게 이름 <i class="unread">Unread</i></h4>
						<p>Ex omnis error aliquam quo, eu eos atqui accusam, ex nec sensibus erroribus principes. No pro albucius eloquentiam accommodare. Mei id illud posse persius. Nec eu dico lucilius delicata, qui propriae voluptaria eu.</p>
					</li>
					</c:forEach>
					
					<!-- 어차피 사라질 부분         
					<li>
						<span>2 hours ago</span>
						<figure><img src="img/avatar3.jpg" alt=""></figure>
						<h4>Marc Twain <i class="read">Read</i></h4>
						<p>Ex omnis error aliquam quo, eu eos atqui accusam, ex nec sensibus erroribus principes. No pro albucius eloquentiam accommodare. Mei id illud posse persius. Nec eu dico lucilius delicata, qui propriae voluptaria eu.</p>
					</li>
					<li>
						<span>2 hours ago</span>
						<figure><img src="img/avatar4.jpg" alt=""></figure>
						<h4>Lucas Swing <i class="read">Read</i></h4>
						<p>Cum id mundi admodum menandri, eum errem aperiri at. Ut quas facilis qui, euismod admodum persequeris cum at. Summo aliquid eos ut, eum facilisi salutatus ne. Mazim option abhorreant ne his.</p>
					</li>
					<li>
						<span>2 hours ago</span>
						<figure><img src="img/avatar5.jpg" alt=""></figure>
						<h4>Steve Wornder <i class="read">Read</i></h4>
						<p>In vim mucius menandri convenire, an brute zril vis. Ancillae delectus necessitatibus no eam, at porro solet veniam mel, ad everti nostrud vim. Eam no menandri pertinacia deterruisset.</p>
					</li>
					<li>
						<span>2 hours ago</span>
						<figure><img src="img/avatar6.jpg" alt=""></figure>
						<h4>Mark Shoemaker <i class="unread">Unread</i></h4>
						<p>In vim mucius menandri convenire, an brute zril vis. Ancillae delectus necessitatibus no eam, at porro solet veniam mel, ad everti nostrud vim. Eam no menandri pertinacia deterruisset.</p>
					</li> -->
				</ul>
			</div>
		</div>

		<!-- /pagination-->
	  </div>
	  <!-- /container-fluid-->
   	</div>
    <!-- /container-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Grooming 2020</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    
    <!-- Logout Modal-->

	<jsp:include page="mypage_logout.jsp"></jsp:include>
    
    <script src="<c:url value='/resources/mypage/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <!-- Core plugin JavaScript-->
    <script src="<c:url value='/resources/mypage/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
    
    <!-- Page level plugin JavaScript-->
    <script src="<c:url value='/resources/mypage/vendor/chart.js/Chart.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/datatables/jquery.dataTables.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/datatables/dataTables.bootstrap4.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/jquery.selectbox-0.2.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/retina-replace.min.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/jquery.magnific-popup.min.js'/>"></script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value='/resources/mypage/js/admin.js'/>"></script>
	<!-- Custom scripts for this page-->
	<script src="<c:url value='/resources/mypage/vendor/dropzone.min.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/bootstrap-datepicker.js'/>"></script>
	<script>$('input.date-pick').datepicker();</script>
	<!-- WYSIWYG Editor -->
	<script src="<c:url value='/resources/mypage/js/editor/summernote-bs4.min.js'/>"></script>
	<script>
      $('.editor').summernote({
    fontSizes: ['10', '14'],
    toolbar: [
      // [groupName, [list of button]]
      ['style', ['bold', 'italic', 'underline', 'clear']],
      ['font', ['strikethrough']],
      ['fontsize', ['fontsize']],
      ['para', ['ul', 'ol', 'paragraph']]
      ],
        placeholder: 'Write here your description....',
        tabsize: 2,
        height: 200
      });
    </script>

</body>
</html>