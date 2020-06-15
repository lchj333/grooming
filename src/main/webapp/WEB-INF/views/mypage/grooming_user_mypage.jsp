<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myprofile</title>

<style type="text/css">
#center{
	margin-left: auto;
	margin-right: auto;
}
.col-md-8{
	margin-left: auto;
	margin-right: auto;
}

#bottom{
	margin-bottom: 50px;
}



</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>

<jsp:include page="mypage_nav.jsp"></jsp:include>

   <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">정보</a>
        </li>
        <li class="breadcrumb-item active">Add listing</li>
      </ol>
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-user"></i>내 정보</h2>
			</div>
			<div class="row">
				<div class="col-md-6 add_top_30" id="center">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>회원등급</label>
								<!-- 아아아아아아 -->
								<input type="text" class="form-control"
							    placeholder="${dInfo.de_approval }" readonly="readonly" >
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>회원아이디</label>
								<input type="text" class="form-control" placeholder="${login.mb_id }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>회원이름</label>
								<input type="text" class="form-control" placeholder="${login.mb_name }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>생년월일</label>
								<input type="text" class="form-control" placeholder="${login.mb_birth }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>성별</label>
								<input type="text" class="form-control" placeholder="${login.mb_gender }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>이메일</label>
								<input type="text" class="form-control" placeholder="${login.mb_email }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>전화번호</label>
								<input type="text" class="form-control" placeholder="${login.mb_phone }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label>주소</label>
								<input type="text" class="form-control" placeholder="${login.mb_address1 }" readonly="readonly">
								<br />
								<input type="text" class="form-control" placeholder="${login.mb_address2 }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label>선호지역</label>
								<input type="text" class="form-control" placeholder="${login.mb_area }" readonly="readonly">
							</div>
						</div>
						<div class="col-md-12" id="bottom">
							<div class="form-group">
								<label>가입일</label>
								<input type="text" class="form-control" value="<fmt:formatDate value="${login.mb_joindate}" pattern="YYYY-MM-dd"/>" readonly="readonly">
								
							</div>
						</div>
						<!-- 세이브 -->

					</div>
					<!-- /row-->
				</div>
			</div>
		</div>
	  </div>
	  <!-- /.container-fluid-->
   	</div>
    <!-- /.container-wrapper-->
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