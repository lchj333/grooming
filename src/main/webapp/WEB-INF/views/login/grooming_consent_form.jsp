<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html class>
<html>
<head>
<meta charset="UTF-8">
<title>grooming_consent_form</title>
<!-- Favicons-->
    <link rel="shortcut icon" href="img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/Grooming_icon_144.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<!-- header -->
<jsp:include page="../include/header.jsp" />
<!-- header end -->
<body>

	<div id="page" class="theia-exception">
		<main>
			<div class="container margin_60_35">
				<div class="row" id="row_consent_form">


					<div class="col-lg-9" id="faq">

						<form action="">
							<h5>서비스 이용약관, 개인정보 제공, GROOMING 활동 안내 수신에 모두 동의합니다.</h5>
							<input type="submit" class="btn_1 rounded" value="전체동의">
							<br>
						</form>
						<div role="tablist" class="add_bottom_45 accordion_2" id="tips">
							<!-- card div start -->
							<div class="card">
								<div class="card-header" role="tab">
									<label class="container_check"> <input type="checkbox">
										<span class="checkmark"></span>
										<h5 class="mb-0">
											<a data-toggle="collapse" href="#collapseOne_tips"
												aria-expanded="true"> <i class="indicator ti-plus"></i>
												(필수)서비스 이용약관
											</a>
										</h5>
									</label>

								</div>
								<!-- card div end -->
								<!-- card div detail start -->
								<div id="collapseOne_tips" class="collapse" role="tabpanel"
									data-parent="#tips">
									<div class="card-body">

										<p>개인정보 제공동의 1. 회사는 이용자의 동의가 있거나 관련법령의 규정에 의한 경우를 제외하고는
											제2조에서 고지한 범위를 넘어 이용자의 개인정보를 이용하거나 제3자에게 제공하지 않습니다. 2. 회사는
											이용자의 개인정보 관리 및 보다 다양한 서비스 제공을 위하여 이용자의 별도 동의를 얻어 다음과 같이 개인정보를
											제공합니다. 제공받는 자 제공 목적 제공하는 개인정보 항목 보유 및 이용기간 Facebook 페이스북 맞춤
											타겟(Custom Audiences) 마케팅 이메일, 휴대폰 번호 페이스북 캠페인 대상선정 이후 14일 3.
											다만, 다음 각 호의 경우는 이용자의 별도 동의 없이 제공될 수 있습니다. - 서비스 제공에 따른 요금정산을
											위하여 필요한 경우 - 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는
											형태로 가공하여 연구단체, 설문조사, 리서치 기관 등에 제공하는 경우 - 개인정보보호법, 정보통신망 이용촉진
											및 정보보호 등에 관한 법률, 통신비밀보호법, 국세기본법, 금융실명거래 및 비밀보장에 관한 법률, 신용정보의
											이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자보호법, 형사소송법 등 법률상
											특별한 규정이 있는 경우 4. 이용자는 제3자에 대한 개인정보 제공 동의를 거부할 수 있으며, 동의를 거부할
											때에는 제3자 제공에 따른 서비스 이용에 제한을 받을 수 있습니다. 5. 회사는 개인정보를 국외의 제3자에게
											제공할 때에는 이용자에게 내용을 알리고 동의를 받습니다.</p>

									</div>
								</div>
							</div>
							<!-- card div detail end -->
							<!-- card div start -->
							<div class="card">
								<div class="card-header" role="tab">
									<label class="container_check"> <input type="checkbox">
										<span class="checkmark"></span>
										<h5 class="mb-0">
											<a data-toggle="collapse" href="#collapseTwo_payment"
												aria-expanded="true"> <i class="indicator ti-plus"></i>
												(필수)서비스 이용약관
											</a>
										</h5>
									</label>

								</div>
								<!-- card div end -->
								<!-- card div detail start -->
								<div id="collapseTwo_payment" class="collapse" role="tabpanel"
									data-parent="#tips">
									<div class="card-body">

										<p>개인정보 제공동의 1. 회사는 이용자의 동의가 있거나 관련법령의 규정에 의한 경우를 제외하고는
											제2조에서 고지한 범위를 넘어 이용자의 개인정보를 이용하거나 제3자에게 제공하지 않습니다. 2. 회사는
											이용자의 개인정보 관리 및 보다 다양한 서비스 제공을 위하여 이용자의 별도 동의를 얻어 다음과 같이 개인정보를
											제공합니다. 제공받는 자 제공 목적 제공하는 개인정보 항목 보유 및 이용기간 Facebook 페이스북 맞춤
											타겟(Custom Audiences) 마케팅 이메일, 휴대폰 번호 페이스북 캠페인 대상선정 이후 14일 3.
											다만, 다음 각 호의 경우는 이용자의 별도 동의 없이 제공될 수 있습니다. - 서비스 제공에 따른 요금정산을
											위하여 필요한 경우 - 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는
											형태로 가공하여 연구단체, 설문조사, 리서치 기관 등에 제공하는 경우 - 개인정보보호법, 정보통신망 이용촉진
											및 정보보호 등에 관한 법률, 통신비밀보호법, 국세기본법, 금융실명거래 및 비밀보장에 관한 법률, 신용정보의
											이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자보호법, 형사소송법 등 법률상
											특별한 규정이 있는 경우 4. 이용자는 제3자에 대한 개인정보 제공 동의를 거부할 수 있으며, 동의를 거부할
											때에는 제3자 제공에 따른 서비스 이용에 제한을 받을 수 있습니다. 5. 회사는 개인정보를 국외의 제3자에게
											제공할 때에는 이용자에게 내용을 알리고 동의를 받습니다.</p>

									</div>
								</div>
								<!-- card div detail end -->
							</div>
							<!-- card end -->
						</div>
						<!-- tips end -->

					</div>
					<!-- /col -->

				</div>
				<!-- /row -->
			</div>
			<!--/container-->

		</main>
		<!--/main-->

	</div>
	<!-- footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- footer end -->


</body>
</html>