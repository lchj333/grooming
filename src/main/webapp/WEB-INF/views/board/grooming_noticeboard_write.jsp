<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Ansonika">
  <title>noticeinsert</title>

  <!-- GOOGLE WEB FONT -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
   
  <!-- Bootstrap core CSS-->  
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
  <link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">

</head>

<jsp:include page="../include/header.jsp"/>
<body class="fixed-nav sticky-footer" id="page-top">
  <!-- /Navigation-->
  <div class="content-wrapper" id="grooming_noticeboard_write_maindiv">
    <div class="container-fluid">
      <div class="box_general padding_bottom" >
         <!-- 페이지 TITLE -->
         <div class="header_box version_2">
            <h2><i class="fa fa-file"></i>공지사항</h2>
         </div>
            <!-- 제목-->
            <form action="noticeInsert" method="post">
         <div class="row">
            <div class="col-md-6">
               <div class="form-group">
                  <label>제 목</label>
                  <input type="text" class="form-control" name="nt_title" placeholder="제목을 입력하세요">
               </div>
            </div>
         </div>
         <!-- 내용-->
         <div class="row">
            <div class="col-md-12">
               <div class="form-group">
                  <label>내 용</label>
                  <textarea class="editor" name="nt_con" placeholder="내용을 입력하세요"> </textarea>
               </div>
            </div>
         </div>
      <input type="submit" value="작성" class="btn_1 medium" />
            </form>
      </div>
      <!-- /box_general-->
      <!-- /box_general-->
     </div>
     <!-- /.container-fluid-->
      </div>
   <jsp:include page="../include/footer.jsp"/>
    <!-- /.container-wrapper-->
    <!-- Scroll to Top Button-->
    <!-- Logout Modal-->
    <!-- Bootstrap core JavaScript-->
    <%-- <script src="<c:url value='/resources/mypage/vendor/jquery/jquery.min.js'/>"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/datatables/dataTables.bootstrap4.js"></script>
   <script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery.selectbox-0.2.js"></script>
   <script src="${pageContext.request.contextPath}/resources/mypage/vendor/retina-replace.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery.magnific-popup.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/mypage/js/admin.js"></script>
   <!-- Custom scripts for this page-->
   <script src="${pageContext.request.contextPath}/resources/mypage/vendor/dropzone.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap-datepicker.js"></script>
   <!-- WYSIWYG Editor -->
   <%-- <script src="<c:url value='/resources/mypage/js/editor/summernote-bs4.min.js'/>"></script> --%>
   <script src="${pageContext.request.contextPath}/resources/mypage/js/editor/summernote-bs4.min.js"></script>
   <!-- include libraries(jQuery, bootstrap) -->
   <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
   <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
   <!-- include summernote css/js-->
   <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/summernote.js"></script>
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
        height: 500,
      });
    </script>     
</body>
</html>