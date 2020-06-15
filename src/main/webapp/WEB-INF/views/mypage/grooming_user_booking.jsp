<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking</title>
</head>
<body>
<!-- nav start -->
<jsp:include page="mypage_nav.jsp"></jsp:include>
<!-- nav end -->

<!-- booking contents start -->
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">일반회원</a>
        </li>
        <li class="breadcrumb-item active">예약정보</li>
      </ol>
		<div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">예약정보</h2>
				<div class="filter">
					<select name="orderby" class="selectbox">
						<option value="Any status">모든 예약</option>
						<option value="Pending">예약확인전</option>
						<option value="Approved">완료</option>
						<option value="Cancelled">취소된 예약</option>
					</select>
				</div>
			</div>
			<div class="list_general">
				<ul>
					<c:forEach var="i" items="${revs}">
					<li>
						<figure><img src="img/item_1.jpg" alt=""></figure>
						<h4>jstl 가게이름 <i class="pending">Pending(jstl 예약정보)</i></h4>
						<ul class="booking_list">
							<li><strong style="font-weight: bold;">예약일</strong>${i.re_date}</li>
							<li><strong style="font-weight: bold;">견종</strong>${i.re_species}</li>
							<li><strong style="font-weight: bold;">몸무게</strong>${i.re_weight}</li>
							<li><strong style="font-weight: bold;">원하는컷</strong>${i.re_cut}</li>
							<li><strong style="font-weight: bold;">가게번호</strong>${i.de_licencenum}</li>
							<li><strong style="font-weight: bold;">예약번호</strong>${i.re_num}</li>
						</ul>
						<p><a href="#0" class="btn_1 gray"><i class="fa fa-fw fa-envelope"></i>1대1대화</a></p>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i>취소</a></li>
						</ul>
					</li>
					<li>
						<figure><img src="img/item_2.jpg" alt=""></figure>
						<h4>Da Alfredo <i class="cancel">Cancelled</i></h4>
						<ul class="booking_list">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking details</strong> 2 People</li>
							<li><strong>Client</strong> Mark Twain</li>
						</ul>
						<p><a href="#0" class="btn_1 gray"><i class="fa fa-fw fa-envelope"></i>Send Message</a></p>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!-- booking contents end -->
		<!-- /box_general-->
		
		<!-- pagination -->
		<nav aria-label="...">
			<ul class="pagination pagination-sm add_bottom_30">
				<li class="page-item disabled">
					<a class="page-link" href="#" tabindex="-1">Previous</a>
				</li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item">
					<a class="page-link" href="#">Next</a>
				</li>
			</ul>
		</nav>
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
