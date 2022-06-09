<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<title>Bootstrap 4 theme for developers and startups</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    
    <style>
	*{
	font-family: 'Jua', sans-serif;
	}
	
	.header {
	
	position: static;
	}
	
	.title {
	
	background-color: pink;
	position: absolute;
	top: 0px;
	left: 0px
	
	}
	
	#map {
	
	margin-bottom: 50px;
	position: fixed!important;
	
	}
	
	 .title2 {
	 font-size: 30px;
	 font-weight: bolder;
	 
	 }
	 
    </style>
</head>
<body style="background-color: skyblue;">
	
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
    
    
    <div id="map" style=" width :100%;height:800px; "></div>
    
    <div>
		<div class="input-group mb-3 search title"  style=" display:block; margin-top: 60px; height: 800px; width: 300px; background-color:#9b979757;" >
	  		
	  		<h4 style="margin-top: 30px; margin-left: 25px; font-weight: bold; font-size: 30px;">🚨SOS🚨<h4>
	  		<br><br>
	  		<table style='margin-left: 25px; height: 600px'>
	  			
	  			<tr>
					<th>사고번호  </th>	  		
					<td>143143</td>	  		
	  			</tr>
	  			
	  			<tr>
					<th>고객이름  </th>	  		
					<td>김이름</td>	  		
	  			</tr>
	  			
	  			<tr>
					<th>아이디　  </th>	  		
					<td>test</td>	  		
	  			</tr>
	  		
				<tr>
					<th>비상연락  </th>	  		
					<td>010-3331-3333</td>	  		
	  			</tr>	
	  			
	  			<tr>
					<th>혈액형　  </th>	  		
					<td>ab</td>	  		
	  			</tr>
	  			
	  			<tr>
					<th>사고유형  </th>	  		
					<td>교통사고</td>	  		
	  			</tr>
						  		
	  			<tr>
					<th>이용번호  </th>	  		
					<td>1431</td>	  		
	  			</tr>
	  			
	  			<tr>
					<th>발생시간  </th>	  		
					<td>2021.06.08</td>	  		
	  			</tr>

	  		</table>
			  	
			</div>
	  		
	  		
		</div>
    </div>
		

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cf65f305eeffb142807ebc9a6025b896"></script>
	<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
// 위치좌표변경해주기~
var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
</body>
</html>



