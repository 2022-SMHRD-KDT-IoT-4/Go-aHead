<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap FAQ example with tabs and accordions</title>


<<<<<<< HEAD
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'
	href='https://files.krve.io/f/eyespot.css'>
<link rel='stylesheet prefetch'
	href='https://cdn.cloudcache.dk/materialdesignicons/1.6.50/css/materialdesignicons.min.css'>
=======
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootstrap 4 landing page template for developers and startups">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
    <link rel="shortcut icon" href="favicon.ico">  
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!-- FontAwesome JS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- Global CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="assets/css/styles.css">

<style >

.header {
	
	position: static;
	}
	
	.title {
	
	background-color: pink;
	position: absolute;
	top: 0px;
	left: 0px
	
	}
	
	 .title2 {
	 font-size: 30px;
	 font-weight: bolder;
	 
	 }

body {
  margin-top: 30px;
  background-color: #eee;
}

.list-group.help-group {
  margin-bottom: 20px;
  padding-left: 0;
  margin: 0;
}
.list-group.help-group .faq-list {
  display: block;
  top: auto;
  margin: 0 0 32px;
  border-radius: 2px;
  border: 1px solid #ddd;
  box-shadow: 0 1px 5px rgba(85, 85, 85, 0.15);
}
.list-group.help-group .faq-list .list-group-item {
  position: relative;
  display: block;
  margin: 0;
  padding: 13px 16px;
  background-color: #fff;
  border: 0;
  border-bottom: 1px solid #ddd;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  color: #616161;
  transition: background-color .2s;
}
.list-group.help-group .faq-list .list-group-item i.mdi {
  margin-right: 5px;
  font-size: 18px;
  position: relative;
  top: 2px;
}
.list-group.help-group .faq-list .list-group-item:hover {
  background-color: #f6f6f6;
}
.list-group.help-group .faq-list .list-group-item.active {
  background-color: #f6f6f6;
  font-weight: 700;
  color: rgba(0, 0, 0, 0.87);
}
.list-group.help-group .faq-list .list-group-item:last-of-type {
  border-bottom-left-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom: 0;
}

.tab-content.panels-faq {
  padding: 0;
  border: 0;
}

.panel.panel-help {
  box-shadow: 0 1px 5px rgba(85, 85, 85, 0.15);
  padding-bottom: 0;
  border-radius: 2px;
  overflow: hidden;
  background-color: #fff;
  margin: 0 0 16px;
}
.panel.panel-help a[href^="#"],
.panel.panel-help a[href^="#"]:hover,
.panel.panel-help a[href^="#"]:focus {
  outline: none;
  cursor: pointer;
  text-decoration: none;
}
.panel.panel-help .panel-heading {
  background-color: #f6f6f6;
  padding: 0 16px;
  line-height: 48px;
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  color: rgba(0, 0, 0, 0.87);
}
.panel.panel-help .panel-heading h2 {
  margin: 0;
  padding: 14px 0 14px;
  font-size: 18px;
  font-weight: 400;
  line-height: 20px;
  letter-spacing: 0;
  text-transform: none;
}
.panel.panel-help .panel-body {
  background-color: #fff;
  border-top: 1px solid #ddd;
  border-radius: 2px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
  margin-top: 0;
}
.panel.panel-help .panel-body p {
  margin: 0 0 16px;
}
.panel.panel-help .panel-body p:last-of-type {
  margin: 0;
}


</style>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-IoT-4/Go-aHead.git


</head>

<body style="background-color: skyblue;">
<<<<<<< HEAD
	<header id="header" class="header">
		<div class="container">
			<h1 class="logo">
				<a class="scrollto" href="viewMain.do"> <span
					class="logo-icon-wrapper"><img class="logo-icon"
						src="appkit-landing-v2.3/assets/images/kick_icon_F.png" alt="iccon"
						style="width: 40px; height: 40px;"></span> <span class="text"><span	class="highlight">GO</span>AHEAD</span></a>
			</h1>
			<!--//logo-->
			</nav>
			<!--//main-nav-->
		</div>
		<!--//container-->
	</header>
	<!--//header-->
=======
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-IoT-4/Go-aHead.git

 <!-- header 상단바 부분 --> 
    <header id="header" class="header" >  
        <div class="container">       
            <h1 class="logo">
                <a class="scrollto" href="#hero">
                    <span class="logo-icon-wrapper"><img class="logo-icon" src="assets/images/kick_icon_F.png" alt="iccon" style=" width: 40px; height: 40px;"></span>
                    <span class="text"><span class="highlight">GO</span>AHEAD</span></a>
            </h1><!--//logo-->
            <nav class="main-nav navbar-expand-md float-right navbar-inverse" role="navigation">
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                
                <div id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewLogin.do'">고객위치확인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" href="헬멧위치확인">헬멧위치확인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" href="고객센터">고객센터</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" href="Logout.do">로그아웃</a></li>                        

                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->


	<!-- left부분  -->
	<div class="container">
		<div class="col-md-4">
			<ul class="list-group help-group">
				<div class="faq-list list-group nav nav-tabs">
					<a href="#tab1" class="list-group-item active" role="tab"data-toggle="tab">이용안내시간</a>
					<a href="#tab2"	class="list-group-item " role="tab" data-toggle="tab">요금결제</a>
					<a href="#tab3" class="list-group-item" role="tab" data-toggle="tab"><i class="mdi mdi-account-settings"></i>가입로그인</a>
					<a href="#tab4" class="list-group-item" role="tab" data-toggle="tab"><i class="mdi mdi-star"></i>고장장애</a>
					<a href="#tab5" class="list-group-item" role="tab" data-toggle="tab"><i	class="mdi mdi-cart"></i> 안전수칙</a>
				</div>
			</ul>
		</div>
		
		
		<!-- f&a -->
		<div class="col-md-8">
			<div class="tab-content panels-faq">
				<div class="tab-pane active" id="tab1">
					<div class="panel-group" id="help-accordion-1">
						<div class="panel panel-default panel-help">
							<a href="#a1" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>1. Goahead는 어떻게 탑승하나요?</h2>
								</div>
							</a>
							<div id="a1" class="collapse in">
								<div class="panel-body">
									<p>[대여 방법]</p>
									<p>결제카드 & 면허증 등록 > 지도에서 킥보드 선택 > 쿠폰 사용 여부 선택 > QR 스캔</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#a2" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>2. Goahead는 누구나 탈 수 있나요?</h2>
								</div>
							</a>
							<div id="a2" class="collapse">
								<div class="panel-body">
									<p>전동킥보드는 도로교통법 상 원동기 면허 이상(소형, 보통 운전면허 포함)의 먼허증을 소지하고
										계신분들은 누구나 이용 가능합니다.</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#a3" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>3. 고객센터(1:1문의 게시판)운영 시간</h2>
								</div>
							</a>
							<div id="a3" class="collapse">
								<div class="panel-body">
									<p>고객센터 응대 시간은 평일 오전 10:00 ~ 오후 4:00까지 입니다.</p>
									<br />
									<p>1:1 문의 게시판은 실시간 응답이 아닌 순차적으로 답변 진행 중입니다.</p>
									<p>영업일 기준으로 최대 2일까지 소요될 수 있는 부분 양해 부탁드립니다.</p>
									<br />
									<p>*주말, 공휴일 제외</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#a4" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>4. 탑승 가능한 시간은 언제인가요?</h2>
								</div>
							</a>
							<div id="a4" class="collapse">
								<div class="panel-body">
									<p>Goahead는 24시간 이용 가능합니다.</p>
									<p>야간 탑승 시에는 킥보드의 전조등을 활용하여 안전하게 이용하세요!</p>
									<p>(전조등은 핸들 부분 전원 버튼을 누르면 ON /OFF 가능합니다.)</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#a5" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>5. 지도에는 킥보드가 안 뜨는데 앞에 있어요! 타도 되나요?</h2>
								</div>
							</a>
							<div id="a5" class="collapse">
								<div class="panel-body">
									<p>배터리가 부족한 킥보드는 지도에 표시 되지 않으며, QR코드 스캔 또한 불가능합니다.</p>
									<p>앱 내 지도에 표시 된 킥보드만 탑승 부탁드립니다!</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 요기서 시작 했음 -->
				<div class="tab-pane" id="tab2">
					<div class="panel-group" id="help-accordion-2">
						<div class="panel panel-default panel-help">
							<a href="#b1" data-toggle="collapse"
								data-parent="#help-accordion-2">
								<div class="panel-heading">
									<h2>1. Goahead 탑승 요금은 어떻게 지불하나요?</h2>
								</div>
							</a>
							<div id="b1" class="collapse in">
								<div class="panel-body">
									<p>[대여 방법]</p>
									<p>결제카드 & 면허증 등록 > 지도에서 킥보드 선택 > 쿠폰 사용 여부 선택 > QR 스캔</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#b2" data-toggle="collapse"
								data-parent="#help-accordion-2">
								<div class="panel-heading">
									<h2>2. 카드 등록만 했는데 왜 요금이 결제 되나요?</h2>
								</div>
							</a>
							<div id="b2" class="collapse">
								<div class="panel-body">
									<p>전동킥보드는 도로교통법 상 원동기 면허 이상(소형, 보통 운전면허 포함)의 먼허증을 소지하고
										계신분들은 누구나 이용 가능합니다.</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#b3" data-toggle="collapse"
								data-parent="#help-accordion-2">
								<div class="panel-heading">
									<h2>3. 서비스 이용 요금이 궁금해요!</h2>
								</div>
							</a>
							<div id="b3" class="collapse">
								<div class="panel-body">
									<p>고객센터 응대 시간은 평일 오전 10:00 ~ 오후 4:00까지 입니다.</p>
									<br />
									<p>1:1 문의 게시판은 실시간 응답이 아닌 순차적으로 답변 진행 중입니다.</p>
									<p>영업일 기준으로 최대 2일까지 소요될 수 있는 부분 양해 부탁드립니다.</p>
									<br />
									<p>*주말, 공휴일 제외</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#b4" data-toggle="collapse"
								data-parent="#help-accordion-2">
								<div class="panel-heading">
									<h2>4. 주 결제 카드를 변경 하고 싶어요!</h2>
								</div>
							</a>
							<div id="b4" class="collapse">
								<div class="panel-body">
									<p>Goahead는 24시간 이용 가능합니다.</p>
									<p>야간 탑승 시에는 킥보드의 전조등을 활용하여 안전하게 이용하세요!</p>
									<p>(전조등은 핸들 부분 전원 버튼을 누르면 ON /OFF 가능합니다.)</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#b5" data-toggle="collapse"
								data-parent="#help-accordion-2">
								<div class="panel-heading">
									<h2>5. 패널티 요금은 뭔가요?</h2>
								</div>
							</a>
							<div id="b5" class="collapse">
								<div class="panel-body">
									<p>배터리가 부족한 킥보드는 지도에 표시 되지 않으며, QR코드 스캔 또한 불가능합니다.</p>
									<p>앱 내 지도에 표시 된 킥보드만 탑승 부탁드립니다!</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
				<script
					src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>
<<<<<<< HEAD
=======
				<script src="appkit-landing-v2.3/assets/js/faq.js"></script>

	<script>
	$(function() {
	    // Since there's no list-group/tab integration in Bootstrap
	    $('.list-group-item').on('click',function(e){
	     	  var previous = $(this).closest(".list-group").children(".active");
	     	  previous.removeClass('active'); // previous list-item
	     	  $(e.target).addClass('active'); // activated list-item
	   	});
	});
	
	</script>

>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-IoT-4/Go-aHead.git
</body>
</html>
