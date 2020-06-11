<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
   $(function(){
      
      
     var msg = "";
     var buyer_name ="";
     
      var IMP = window.IMP; // 생략가능
      IMP.init('imp94723924');
   
      IMP.request_pay({
          pg : 'inicis', // version 1.1.0부터 지원.
          pay_method : 'kakao',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : '주문명:결제테스트',
          amount : "${point1}",
          buyer_email : 'iamport@siot.do',
          buyer_name : '갓오현',
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
              
         checkUp();
        
         alert(msg);
         
          } else {
              msg = '결제에 실패하였습니다.';
              msg += '에러내용 : ' + rsp.error_msg; 
              alert(msg);
              
              
          }
          location.href = 'list';						/* 결제 후 가고싶은 페이지로 이동 */
      });
      function checkUp() {
 					
         var params = "total=" + encodeURIComponent("${point1}") + "&names="+encodeURIComponent("${point2}");
         console.log("ddddd");
         sendRequest('/list', params, callback, 'post');
        
     }


      function callback() {
         if(xhr.readyState==4 & xhr.status==200){
         msg = '결제가 완료되었습니다.';
         alert(msg);
         /*  msg += '구매자 이름 : ' + rsp.buyer_name;*/ 
         }
     }
      
   });
   
   </script>
</head>
<body>
	<h3>현재 유효성 검사 미구현 상태임 </h3>
	<form action="updateOK" method="post">
		<table>
			<tr>
				<th>포인트 충전금</th>
				<td><h4>${point1}</h4></td>
				<input type="text" name="pt1" id="" value="${point1}" />
			</tr>
			
			<tr>
				<th>디자이너 라이센스 넘버</th>
				<td><h4>${point2}</h4></td>
				<input type="text" name="pt2" id="" value="${point2}" />
			</tr>
			
			
			<tr>
				<td colspan="2">
					<input type="submit" value="충전" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>