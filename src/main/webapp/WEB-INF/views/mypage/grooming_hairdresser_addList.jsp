<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addlist</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function openDaumPost(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('adress-text').value = data.zonecode;
            document.getElementById("addr1").value = data.roadAddress;
             
        }
    }).open();
}// openDaumPost() end
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		var num = /[^0-9]/g;
		
		$("#btn").click(function(){
			
			if($("#reg_shopname").val() == ""){
		    	alert("가게이름 입력해주세요");
			    $("#reg_shopname").focus();
			    return false;
			}
			
			if($("#reg_con").val() == ""){
		    	alert("상세내용을 적어주세요");
			    $("#reg_con").focus();
			    return false;
			}
			
			if($("#reg_img").val() == ""){
		    	alert("썸네일 이미지를 등록해주세요");
			    $("#reg_img").focus();
			    return false;
			}
			
			if($("#addr1").val() == ""){
		    	alert("주소를 입력해주세요");
			    $("#addr1").focus();
			    return false;
			}
			
			if($("#addr2").val() == ""){
		    	alert("상세주소를 입력해주세요");
			    $("#addr2").focus();
			    return false;
			}
			
			if($("#reg_price").val() == ""){
		    	alert("최소가격을 입력해주세요");
			    $("#reg_price").focus();
			    return false;
			}
							
			document.frm.action = "<c:url value='/mypage/registShop'/>";
			document.frm.submit();
		});

	});
</script>
</head>
<body>

<jsp:include page="mypage_nav.jsp"></jsp:include>

 <div class="content-wrapper">
    <div class="container-fluid">
    	<form action="" method="post" name="frm" enctype="multipart/form-data">
	      <!-- Breadcrumbs-->
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item">
	          <span>미용사</span>
	        </li>
	        <li class="breadcrumb-item active">가게 등록</li>
	      </ol>
			<div class="box_general padding_bottom">
				<div class="header_box version_2">
					<h2><i class="fa fa-file"></i>가게등록</h2>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>가게이름</label>
							<input type="text" id="reg_shopname" class="form-control" name="reg_shopname" placeholder="가게이름" > 
						</div>
					</div>
				</div>
				
				<!-- /row-->
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label>상세내역</label>
							<textarea name="reg_con" id="reg_con" class="editor">
							</textarea>
						</div>
					</div>
				</div>
	
	
				
				<!-- 썸네일 이미지 input file -->
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label>썸네일 이미지</label>
							<br />
							<input type="file" name="file" id="reg_img" />
						</div>
					</div>
				</div>
				<!-- /row-->
			</div>
			<!-- /box_general-->
			
			<div class="row">
					<div class="col-md-6">
						<div class="box_general padding_bottom">
							<div class="header_box version_2">
								<h2><i class="fa fa-map"></i>가게 위치</h2>
							</div>
							<div class="form-group">
								<label>우편번호</label>
								<div id="address-search-outline">
									<input class="form-control" id="adress-text" type="text" readonly="readonly" placeholder="jstl로 주소" style="background-color: #e9ecef">
									<input class="form-control" id="adress-btn" type="button" value="검색" onclick="openDaumPost()">
								</div>
							</div>
							<div class="form-group">
								<label>도로명주소</label>
								<input class="form-control" name="addr1" id="addr1" type="text" readonly="readonly" placeholder="jstl로 주소" style="background-color: #e9ecef">
							</div>
							<div class="form-group">
								<label>상세주소</label>
								<input class="form-control" name="addr2" id="addr2" type="text">
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="box_general padding_bottom">
							<div class="header_box version_2">
								<h2><i class="fa fa-dollar"></i>가격</h2>
							</div>
							<div class="form-group">
								<label>최소가격</label>
								<input class="form-control" type="text" name="reg_price" id="reg_price" placeholder="숫자만 입력" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
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
	<script src="vendor/dropzone.js"></script>
	<script src="vendor/bootstrap-datepicker.js"></script>
	<script>$('input.date-pick').datepicker();</script>
  <!-- WYSIWYG Editor -->
  <script src="js/editor/summernote-bs4.min.js"></script>
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
        height: 300
      });
    </script>
    
    	<!-- dropzone -->
	<script src="./custome_dropzone.js"></script>
	
</body>
</html>
