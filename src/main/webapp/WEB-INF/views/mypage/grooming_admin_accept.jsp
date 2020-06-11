<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Ansonika">
  <title>accept</title>

  <!-- Favicons-->
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
  <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){

		$(".text-num").css("display", "none");
		$("#btn").click(function(){
			document.frm.action = "<c:url value='registShop'/>";
			document.frm.submit();
		});
	});
</script>



<body class="fixed-nav sticky-footer" id="page-top">

<jsp:include page="mypage_nav.jsp"></jsp:include>

  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">미용사</a>
        </li>
        <li class="breadcrumb-item active">충전</li>
      </ol>
		<!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>충전내역</div>
	        <div class="card-body">
	          <div class="table-responsive">
		        <form action="#" method="get" name="frm">
		            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		              <thead>
		                <tr>
		                  <th style="width: 10%;">번호</th>
		                  <th>실명</th>
		                  <th>이미지파일</th>
		                  <th style="width: 25%">확인여부</th>
		                </tr>
		              </thead>
		              <tfoot>
		                <tr>
		                  <th>번호</th>
		                  <th>실명</th>
		                  <th>이미지파일</th>
		                  <th>확인여부</th>
		                </tr>
		              </tfoot>
		              <tbody>
			          	<c:forEach var="i" begin="1" end="2">
				               	<tr>
				                  <td style="text-align: center;">
				                  	${i}<input type="text" name="text-num" class="text-num" readonly="readonly" value="${i}" /></td>
				                  <td>jstl실명 <%-- ${ } --%></td>
				                  <td><%-- <img src="${ }" alt="" /> --%></td>
				                  <td>
				                  	<div id="radio-outline">
					                  	<input type="radio" name="radio+${i }" id="yes" value="y" checked="checked" />YES
					                  	<input type="radio" name="radio+${i }" id="no" value="n" />NO
				                  	</div>
				                  	<%-- <c:if test="${yes }=yes"> yes로 들어오면 --%>
				                  		<div id="present-condition1">현재승인여부: yes</div>
				                  	<%-- </c:if> --%>
				                  	<%-- <c:if test="${no }=no"> no로 들어오면 --%>
				                  		<div id="present-condition2">현재승인여부: no</div>
				                  	<%-- </c:if> --%>
				                  </td>
				                </tr>
			          	</c:forEach>
		              </tbody>
		            </table>
			  	</form>
	          </div>
	        </div>
        <div class="card-footer small text-muted"><input type="button" value="저장" id="btn" /></div>
      </div>
	  <!-- /tables-->
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
