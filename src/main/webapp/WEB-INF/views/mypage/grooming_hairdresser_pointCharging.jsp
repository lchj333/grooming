<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pointCharging</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	/* 라디오 버튼 클릭시 value값 입력 */
	$(function(){
		$("input:radio[name=point]").click(function(){
			 if($('input:radio[id=point1]').is(':checked')==true){
				 $('#payment-amount').val($('input:radio[id=point1]').val());
			 }else if($('input:radio[id=point2]').is(':checked')==true){
				 $('#payment-amount').val($('input:radio[id=point2]').val());
			 }else if($('input:radio[id=point3]').is(':checked')==true){
				 $('#payment-amount').val($('input:radio[id=point3]').val());
			 }else if($('input:radio[id=point4]').is(':checked')==true){
				 $('#payment-amount').val($('input:radio[id=point4]').val());
			        }
			 });
	});
	
	
	/* 유효성 검사  */
	$(function(){
		$("#btn").click(function(){
			if($('#payment-amount').val()==""){
				alert("충전금액을 선택해주세요.");
			}else{
				document.frm.action = "<c:url value='/survey/survey.ok'/>";
				document.frm.submit();
			}
		});
	});
		
		


</script>

<body>

<jsp:include page="mypage_nav.jsp"></jsp:include>

 <div class="content-wrapper">
    <div class="container-fluid">
	      <!-- Breadcrumbs-->
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item">
	          <a href="#">미용사</a>
	        </li>
	        <li class="breadcrumb-item active">포인트</li>
	      </ol>
			<div class="box_general padding_bottom">
				<div class="header_box version_2">
					<h2><i class="fa fa-dollar"></i>포인트충전</h2>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input type="radio" name="point" id="point1" value="10000"/> <span>10000point(10000원)</span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<input type="radio" name="point" id="point2" value="50000" /> <span>50000point(50000원)</span>
						</div>
					</div>
				</div>
				<!-- /row-->
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input type="radio" name="point" id="point3" value="100000" /> <span>100000point(100000원)</span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<input type="radio" name="point" id="point4" value="200000" /> <span>200000point(200000원)</span>
						</div>
					</div>
				</div>

			</div>
			<!-- /box_general-->
			
   		<form action="#" name="frm">
			
			<div class="row">
					<div class="col-md-6">
						<div class="box_general padding_bottom">
							<div class="header_box version_2">
								<h2>결제금액</h2>
							</div>
							<div class="form-group">
								<input type="text" name="payment-amount" id="payment-amount" readonly="readonly" style="text-align: right;" />
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="box_general padding_bottom">
							<div class="header_box version_2">
								<h2>결제수단</h2>
							</div>
							<div class="form-group">
								<input type="radio" id="point5" checked="checked" /> <span>카카오페이</span>
							</div>
						</div>
					</div>
				</div>
			
				<p id="myprofile-savebtn">
					<input type="button" id="btn" value="저장" class="btn_1 medium" />
				</p>
	  	</form>
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


	
</body>
</html>
