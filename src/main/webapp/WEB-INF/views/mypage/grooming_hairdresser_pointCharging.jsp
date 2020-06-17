<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pointCharging</title>

<!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->

</head>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- 결제에 필요한 것들 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
				
				//결제 페이지
				 var msg = "";
			     var buyer_name ="";
			     var totalm = $('#payment-amount').val()
			     
			      var IMP = window.IMP; // 생략가능
			      IMP.init('imp94723924');
			   
			      IMP.request_pay({
			          pg : 'inicis', // version 1.1.0부터 지원.
			          pay_method : 'kakao',
			          merchant_uid : 'merchant_' + new Date().getTime(),
			          name : '주문명:결제테스트',
			          amount : totalm,
			          buyer_email : 'iamport@siot.do',
			          buyer_name : '구매자',
			          //company_nane : 'SAFETY' 
			          buyer_tel : '010-1234-5678',
			          buyer_addr : '서울특별시 강남구 삼성동',
			          buyer_postcode : '123-456',
			          m_redirect_url : 'http://www.naver.com'
			      }, function(rsp) {
			          if ( rsp.success ) {
			              msg = '결제가 완료되었습니다.';
			              // msg += '고유ID : ' + rsp.imp_uid;
			             // msg += '구매자 이름 : ' + rsp.buyer_name;   
			              // msg += '상점 거래ID : ' + rsp.merchant_uid;
			            //  msg += '결제 금액 : ' + rsp.paid_amount;
			              // msg += '카드 승인번호 : ' + rsp.apply_num;
			              
			        
			         alert(msg);
			      	  document.frm.action = "<c:url value='/pointchargingok'/>";
					  document.frm.submit();
			          location.href = 'control/updateok';					/* 결제 후 가고싶은 페이지로 이동 */
			     
			         checkUp();
			        
			         
			          } else {
			              msg = '결제에 실패하였습니다.';
			              msg += '에러내용 : ' + rsp.error_msg; 
			              alert(msg);
			              
			              location.href = 'pointcharging';					/* 결제 후 가고싶은 페이지로 이동 */    
			          }
			          
			          
			          
			      });
			      function checkUp() {
			    	  var totalmy = $('#payment-amount').val()
			         var params = "total=" + encodeURIComponent(totalmy) + "&names="+encodeURIComponent('김');
			         console.log("ddddd");
			         sendRequest('/updateok', params, callback, 'POST');
			         console.log("=================================");
			        
			     }

			      function callback() {
			         if(xhr.readyState==4 & xhr.status==200){
			         msg = '결제가 완료되었습니다.';
			         alert(msg);
			         /*  msg += '구매자 이름 : ' + rsp.buyer_name;*/ 
			         }
			     }
				
			     
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
			
   		<form method="post" name="frm">
			
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
				<!-- ============================================================================= -->
			 <input type="hidden" name="de_licencenum" value="${dInfo.de_licencenum }" />
				<p id="myprofile-savebtn">
					<input type="button" id="btn" value="결제" class="btn_1 medium" />
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

    <script src="<c:url value='/resources/mypage/js/admin.js'/>"></script>

	<script src="<c:url value='/resources/mypage/vendor/dropzone.min.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/bootstrap-datepicker.js'/>"></script>


	
</body>
</html>