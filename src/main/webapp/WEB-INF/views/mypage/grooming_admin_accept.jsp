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
	/* 이건 안보이게 */
	$(function(){
		$(".text-num").css("display", "none");
		$("#btn").click(function(){
			document.frm.action = "<c:url value='registShop'/>";
			document.frm.submit();
		});
	
		
		/* 데이터 */
		$(".tr-button").click(function(){
			var str = "";
			var tdArr = new Array();
			var button = $(this);
			
			/* 현재 클릭된 버튼의 tr들 */
			var tr = button.parent().parent();
			var td = tr.children();
			var num = td.eq(0).text();
			var yes = td.eq(3).children().children("input:radio[class=yes]");
			var no = td.eq(3).children().children("input:radio[class=no]");		

	
 			if(yes.is(':checked')==true){
 				location.href = "ewqew?no="+num+"&we=true";
			}else if(yes.is(':checked')==false){
				location.href = "ewqew?no=1&we=false";
			} 			
		});
	});
	
	/* 이미지 팝업창 */
	function popimage(imagesrc,winwidth,winheight){
	    var look='width='+winwidth+',height='+winheight+','
	        popwin=window.open("","",look)
	        popwin.document.open()
	        popwin.document.write('<title>Image Window</title><body topmargin=0 leftmargin=0><img style=cursor:hand; onclick="self.close()" src="'+imagesrc+'"></body>')
	        popwin.document.close()
	}	
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
		                  <th style="width: 20%">실명</th>
		                  <th style="width: 30%">이미지파일</th>
		                  <th style="width: 40%">확인여부</th>
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
				                  <td style="text-align: center;">${i}</td>         
				                  <td>jstl실명 <%-- ${ } --%></td>
				                  <td>
				                  	<a href="#" onClick="popimage('img/logo_2x.png',600,1000);return false">
				                  		<img src="img/logo_2x.png" alt="이미지" style="width: 100px; height: 30px" />
				                  	</a>
				                  </td>
				                  <td>
				                  	<div id="radio-outline">
					                  	<input type="radio" name="radio${i }" class="yes" value="y" checked="checked" />YES
					                  	<input type="radio" name="radio${i }" class="no" value="n" />NO
				                  	</div>
				                  	<%-- <c:if test="${yes }=yes"> yes로 들어오면 --%>
				                  		<div id="present-condition1">현재승인여부: yes</div>
				                  	<%-- </c:if> --%>
				                  	<%-- <c:if test="${no }=no"> no로 들어오면 --%>
				                  		<!-- <div id="present-condition2">현재승인여부: no</div> -->
				                  	<%-- </c:if> --%>
					                <div class="tr-button">저장</div>
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
    <script src="js/admin-datatables.js"></script>
	
</body>
</html>
