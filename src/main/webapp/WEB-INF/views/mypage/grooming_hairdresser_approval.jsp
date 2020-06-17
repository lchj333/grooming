<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function because(num) {
		var con = prompt("사유를 입력하여 주세요.");
		document.frm.bc_con.val = con;
		yesman(num);
	}
	function yesman(num) {
		console.log(num);

		document.frm.action = "<c:url value="/appReservation"/>";
		document.frm.re_num.val = num;
		
		document.frm.submit();
	}
</script>
</head>
<body>
<!-- nav start -->
<jsp:include page="mypage_nav.jsp"></jsp:include>
<!-- nav end -->

<!-- booking contents start -->
<form name="frm" method="post" >
	<input type="hidden" name="re_num" id="re_num"/>
	<input type="hidden" name="bc_con" id="bc_con"/>
</form> 
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">미용사</a>
        </li>
        <li class="breadcrumb-item active">예약정보</li>
      </ol>
		<div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">예약정보</h2>
			</div>
			<div class="list_general">
				<ul>
					<c:forEach var="myList" items="${myList}" varStatus="status">
					<c:if test="${myList.re_approval eq '승인 대기'}">
					<li>
					<figure><img src="<c:url value="/resources/shopimags/${myList.reg_img}"/>" alt=""></figure>
						<h4>${myList.ref_shopname } 
						<i class="pending">${myList.re_approval }</i></h4>
						<ul class="booking_list">
							<li><strong style="font-weight: bold;">예약번호</strong><c:out value="${myList.re_num}"></c:out></li>
							<li><strong style="font-weight: bold;">예약일</strong><fmt:formatDate value="${myList.re_date}" pattern="YYYY-MM-dd hh:mm:ss"/></li>
							<li><strong style="font-weight: bold;">견종</strong>${myList.re_species}</li>
							<li><strong style="font-weight: bold;">몸무게</strong>${myList.re_weight}</li>
							<li><strong style="font-weight: bold;">원하는컷</strong>${myList.re_cut}</li>
							<li><strong style="font-weight: bold;">신청인 연락처</strong>${myList.mb_phone}</li>
						</ul>
						<p><a href="#0" class="btn_1 gray"><i class="fa fa-fw fa-envelope"></i>1대1대화</a></p>
						<ul class="buttons">
						<!-- <input type="button" value="" class="btn_1 gray approve" /> -->
							<li><input type="button" value="승인" class="btn_1 gray approve" id="btn2" onclick="yesman(${myList.re_num})"/></li>
							<li data-toggle="modal" data-target="#cancel"><input type="button" class="btn_1 gray delete" value="취소" onclick="because(${myList.re_num})" /> </li>
						</ul>
						<ul>
						</ul>
					</li>
					<!-- 예약취소 사유 창 -->
<!-- 			       <div class="modal fade" id="cancel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"> -->
<!-- 			         <div class="modal-dialog" role="document"> -->
<!-- 			           <div class="modal-content"> -->
<!-- 			             <div class="modal-header"> -->
<!-- 			               <h5 class="modal-title" id="exampleModalLabel">이 유저의 예약을 취소하시겠습니까?</h5> -->
<!-- 			               <button class="close" type="button" data-dismiss="modal" aria-label="Close"> -->
<!-- 			                 <span aria-hidden="true">×</span> -->
<!-- 			               </button> -->
<!-- 			             </div> -->
<!-- 			             <div class="modal-body"><input type="text" name="bc_con" id="cancel-btn" placeholder="취소사유" style="width: 100%; height: 50px;" /></div> -->
										
<!-- 			             <div class="modal-footer"> -->
<%-- 			               <button class="btn btn-secondary" type="button" data-dismiss="modal" id="btn1" onclick="because(${myList.de_licencenum})">예약취소</button> --%>
<!-- 			               <button class="btn btn-secondary" type="button" data-dismiss="modal">닫기</button> -->
<!-- 			             </div> -->
<!-- 			           </div> -->
<!-- 			         </div> -->
<!-- 			       </div> -->
					</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- </form> -->
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