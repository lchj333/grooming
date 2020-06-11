<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myprofile</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function openDaumPost(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('adress-text').value = data.zonecode;
            document.getElementById("profile-addr1").value = data.roadAddress;
             
        }
    }).open();
}// openDaumPost() end
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			document.frm.action = "<c:url value='/survey/survey.ok'/>";
			document.frm.submit();
		});
		
		
	});
	
	$(function(){
		$("#btn2").click(function(){
			document.frm2.action = "<c:url value='/survey/survey.ok'/>";
			document.frm2.submit();
		});
		
	});
	
	$(function(){
		$("#btn3").click(function(){
			document.frm3.action = "<c:url value='/survey/survey.ok'/>";
			document.frm3.submit();
		});
		
		
	});
</script>

</head>

<jsp:include page="mypage_nav.jsp"></jsp:include>

  <div class="content-wrapper">
    <div class="container-fluid">
		<form action="#" name="frm">
	      <!-- Breadcrumbs-->
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item">
	     	     일반회원
	        </li>
	        <li class="breadcrumb-item active">내정보</li>
	      </ol>
			<!-- /box_general-->
			<div class="row">
				<div class="col-md-6">
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-user"></i>기본정보</h2>
						</div>
						<div class="form-group">
							<label>아이디</label>
							<input class="form-control" type="text" name="mb-id" placeholder="원래 id">
						</div>
						<div class="form-group">
							<label>핸드폰</label>
							<input class="form-control" type="text" name="mb-phone" placeholder="원래 핸드폰번호">
						</div>
						<div class="form-group">
							<label>이메일 (jstl로 *달기)</label>
							<input class="form-control" type="email" placeholder="원래 이메일 *달기" disabled="disabled" style="background-color: #e9ecef">
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map"></i>주소 변경</h2>
						</div>
						<div class="form-group">
							<label>우편번호</label>
							<div id="address-search-outline">
								<input class="form-control" id="adress-text" name="post_num" type="text" readonly="readonly" placeholder="jstl로 주소" style="background-color: #e9ecef">
								<input class="form-control" id="adress-btn" type="button" value="검색" onclick="openDaumPost()">
							</div>
						</div>
						<div class="form-group">
							<label>도로명주소</label>
							<input class="form-control" name="mb-adress1" id="profile-addr1" type="text" readonly="readonly" placeholder="jstl로 주소" style="background-color: #e9ecef">
						</div>
						<div class="form-group">
							<label>상세주소</label>
							<input class="form-control" name="mb-adress2" id="profile-addr2" type="text">
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<p id="myprofile-savebtn">
				<input type="button" id="btn" value="저장" class="btn_1 medium full" />
			</p>
		</form>
			<!-- /box_general-->
			<div class="row">
				<div class="col-md-6">
					<form action="#" name="frm2">
						<div class="box_general padding_bottom">
							<div class="header_box version_2">
								<h2><i class="fa fa-lock"></i>비밀번호 변경</h2>
							</div>
							<div class="form-group">
								<label>이전 비밀번호</label>
								<input class="form-control" type="password" name="mb-pw">
							</div>
							<div class="form-group">
								<label>새 비밀번호</label>
								<input class="form-control" type="password" name="mb-adjust-pw">
							</div>
							<div class="form-group">
								<label>비밀번호 확인</label>
								<input class="form-control" type="password" name="mb-adjust-confirmPw">
							</div>
							<p id="myprofile-savebtn">
								<input type="button" id="btn2" value="저장" class="btn_1 medium" />
							</p>
						</div>
					</form>
				</div>
				<div class="col-md-6">
					<form action="#" name="frm3">
						<div class="box_general padding_bottom">
							<div class="header_box version_2">
								<h2><i class="fa fa-envelope"></i>이메일 변경</h2>
							</div>
							<div class="form-group">
								<label>이전 이메일</label>
								<input class="form-control" name="mb-emial" id="old_email" type="email">
							</div>
							<div class="form-group">
								<label>새 이메일</label>
								<input class="form-control" name="new_email" id="new_email" type="email">
							</div>
							<div class="form-group">
								<label>이메일 확인</label>
								<input class="form-control" name="confirm_new_email" id="confirm_new_email" type="email">
							</div>
							<p id="myprofile-savebtn">
								<input type="button" id="btn3" value="저장" class="btn_1 medium" />
							</p>
						</div>
					</form>
				</div>
			</div>
			<!-- /row-->
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