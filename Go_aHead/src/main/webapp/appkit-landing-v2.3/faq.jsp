
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap FAQ example with tabs and accordions</title>


<link rel='stylesheet prefetch'	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'	href='https://files.krve.io/f/eyespot.css'>
<link rel='stylesheet prefetch'	href='https://cdn.cloudcache.dk/materialdesignicons/1.6.50/css/materialdesignicons.min.css'>
<link rel="stylesheet" href="appkit-landing-v2.3/assets/css/faq.css">

<!-- 헤드바 css -->
<link id="theme-style" rel="stylesheet" href="appkit-landing-v2.3/assets/css/styles.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

<style>
.header {
   
   position: static;
   }
   
   .title {
   
   background-color: skyblue;
   position: absolute;
   top: 0px;
   left: 0px
   
   }
   
    .title2 {
    font-size: 30px;
    font-weight: bolder;
    
    }

</style>
</head>

<body style="background-color: skyblue;">
    <!-- header 상단바 부분 --> 
    <header id="header" class="header">  
        <div class="container">       
            <h1 class="logo">
                <a class="scrollto" href="#hero">
                    <span class="logo-icon-wrapper"><img class="logo-icon" src="appkit-landing-v2.3/assets/images/kick_icon_F.png" alt="iccon" style=" width: 40px; height: 40px;"></span>
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
                    <% Member member = (Member)session.getAttribute("member"); %>
                    <%if (member == null) {%>
                    <!-- 로그인 전 -->
                    <ul class="nav navbar-nav">
                       <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewJoin.do'">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewLogin.do'">로그인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='faq.do'">고객센터</a></li>            
                    </ul><!--//nav-->
                    
                    <%} else if (member.getMem_num() == 1) { %>
                    
                    <!-- admin 로그인 -->
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='memberlist.do'">회원정보관리</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewUlocation.do'">고객위치확인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewHlocation.do'">킥보드위치</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='faq.do'">고객센터</a></li>            
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='logout.do'">로그아웃</a></li>            
                    </ul><!--//nav-->
                    
                    <%} else {%>
                    
                    <!-- user 로그인 -->
                    
                     <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="nav-link scrollto" href="마이페이지">마이페이지</a></li>
                        <li class="nav-item">
                              <div class="dropdown nav-link scrollt ">
                          <p>킥보드</p>
                          <div class="dropdown-content">
                     <a href="viewUse.do">이용시작</a>
                     <a href="blackbox">블랙박스 확인</a>
                    </div></div></a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='logout.do'">로그아웃</a></li>                        
                    </ul><!--//nav-->
                    
                    <%} %>
                    
                </div><!--//navabr-collapse-->     
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->

	<!--FAQ 시작 -->
	<div class="container">
		<div class="col-md-4">
			<ul class="list-group help-group">
				<div class="faq-list list-group nav nav-tabs">
					<a href="#tab1" class="list-group-item active" role="tab"data-toggle="tab">이용안내시간</a>
					<a href="#tab2"	class="list-group-item active" role="tab" data-toggle="tab">요금결제</a>
					<a href="#tab3" class="list-group-item" role="tab" data-toggle="tab"><i class="mdi mdi-account-settings"></i>가입로그인</a>
					<a href="#tab4" class="list-group-item" role="tab" data-toggle="tab"><i class="mdi mdi-star"></i>고장장애</a>
					<a href="#tab5" class="list-group-item" role="tab" data-toggle="tab"><i	class="mdi mdi-cart"></i> 안전수칙</a>
				</div>
			</ul>
		</div>
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
				<script src="appkit-landing-v2.3/assets/js/faq.js"></script>
</body>
</html>
