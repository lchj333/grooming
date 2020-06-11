<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Ansonika">
  <title>PANAGEA - Admin dashboard</title>
	

  <!-- GOOGLE WEB FONT -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
	
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Main styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/css/admin.css" rel="stylesheet">
  <!-- Icon fonts-->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Plugin styles -->
<<<<<<< HEAD
  <link href="${pageContext.request.contextPath}/resources/mypagen/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
=======
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
>>>>>>> master
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/dropzone.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/mypage/css/date_picker.css" rel="stylesheet">
  <!-- WYSIWYG Editor -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/mypage/js/editor/summernote-bs4.css">
  <!-- Your custom styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/css/custom.css" rel="stylesheet">
     

</head>

<body class="fixed-nav sticky-footer" id="page-top">
<jsp:include page="../include/header.jsp"/>
  <!-- /Navigation-->
  <div class="content-wrapper" id="grooming_noticeboard_write_maindiv">
    <div class="container-fluid">
		<div class="box_general padding_bottom" >
			<!-- 페이지 TITLE -->
			<div class="header_box version_2">
				<h2><i class="fa fa-file"></i>공지사항</h2>
			</div>
     		 <!-- 제목-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>제 목</label>
						<input type="text" class="form-control" placeholder="제목을 입력하세요">
					</div>
				</div>
	
			</div>
			<!-- 내용-->
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>내 용</label>
						<div class="editor"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- /box_general-->
		<!-- /box_general-->
		<input type="submit" value="저장" class="btn_1 medium" />
		
	  </div>
	  <!-- /.container-fluid-->
   	</div>
    <!-- /.container-wrapper-->
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
        placeholder: '내용을 입력하세요',
        tabsize: 2,
<<<<<<< HEAD
 
=======
>>>>>>> master
        height: 500
      });
    </script>
<jsp:include page="../include/footer.jsp"/>
</body>
</html>