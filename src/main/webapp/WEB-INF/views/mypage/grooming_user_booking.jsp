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
          <a href="#">마이페이지</a>
        </li>
        <li class="breadcrumb-item active">예약정보</li>
      </ol>
		<div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">예약정보</h2>
				<div class="filter">
					<select name="orderby" class="selectbox">
						<option value="Any status">모든 예약</option>
						<option value="Approved">완료</option>
						<!-- <option value="Pending">Pending</option> -->
						<option value="Cancelled">취소된 예약</option>
					</select>
				</div>
			</div>
			<div class="list_general">
				<ul>
					<c:forEach var="i" begin="1" end="2">
					<li>
						<figure><img src="img/item_1.jpg" alt=""></figure>
						<h4>jstl 가게이름 <i class="pending">Pending</i></h4>
						<ul class="booking_list">
							<li><strong>예약일</strong>jstl 예약일</li>
							<li><strong>견종</strong>jstl 강아지 견종</li>
							<li><strong>가게번호</strong> jstl 가게번호</li>
						</ul>
						<p><a href="#0" class="btn_1 gray"><i class="fa fa-fw fa-envelope"></i> Send Message</a></p>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
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
						<p><a href="#0" class="btn_1 gray"><i class="fa fa-fw fa-envelope"></i> Send Message</a></p>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
					<li>
						<figure><img src="img/item_3.jpg" alt=""></figure>
						<h4>Pompidue Museum <i class="approved">Approved</i></h4>
						<ul class="booking_list">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking details</strong> 2 People</li>
							<li><strong>Client</strong> Mark Twain</li>
						</ul>
						<p><a href="#0" class="btn_1 gray"><i class="fa fa-fw fa-envelope"></i> Send Message</a></p>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
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
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="vendor/jquery.selectbox-0.2.js"></script>
	<script src="vendor/retina-replace.min.js"></script>
	<script src="vendor/jquery.magnific-popup.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/admin.js"></script>
	<!-- Custom scripts for this page-->
	<script src="vendor/dropzone.min.js"></script>

</body>
</html>