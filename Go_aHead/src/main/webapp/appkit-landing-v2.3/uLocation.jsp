<%@page import="com.smhrd.domain.UlocationVO"%>
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
    <link rel="stylesheet" href="appkit-landing-v2.3/assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="appkit-landing-v2.3/assets/css/styles.css">
    <link id="theme-style" rel="stylesheet" href="appkit-landing-v2.3/assets/css/other.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="http://code.jquery.com/jquery-latest.js"></script>

	<!-- alert function -->
	<script type="text/javascript" src="appkit-landing-v2.3/assets/js/sos.js"></script>
    
    <script type="text/javascript">
    
    $(document).ready(function() {
    	mapload();
    	$('#inputbtn').click(function() {
			uLocationView();
		})
	})
    
		//실행확인됨    
    	//function uLocationView() {
    	//	alert('실행');
    	//	alert($('#inputbox').val());
		//}
    
	function uLocationView() {
	
		$.ajax({
			url : "Ulocation.do",
			type : "get",
			dataType : "json",
			data : {
				"mem_id" : $('#inputbox').val()
				},
			
			// 데이터보내기 성공 받는것부터 오류ㅜ..인것같음
			success : uLoList,
			error: function () {
				alert('error');
			}
			
		})
	
		
	}
	// json에서 받아온데이터 -> data로 jsp로 넘어옴! console.log(data)로 확인가능~ // console.log(data.mem_id);
	
	var lat = '33.450701';
	var long = '126.570667';
	
	function uLoList(data) {
		
		console.log(lat)
		console.log(long)
		
		alert( data.mem_id +' 님의 위치 확인');
		lat = data.hel_loc_lat;
		long = data.hel_loc_long;
		console.log(lat)
		console.log(long)
		console.log(data);
		
		mapload();
		
		var list = "<table class='ulocation-list'>";
	
			list += "<tr>"
				list += "<th colspan='2'>"+data.mem_id+ "님의 현재 위치 입니다</td>"
			list += "</tr>"

			list += "<tr>"
				list += "<th> 사용중인 헬멋번호 : </th>"
				list += "<td>"+data.hel_number+"</td>"
			list += "</tr>"

			list +="</table>"
		
		$('#list').html(list);
			
	}

    </script>
</head>

<body>
<!-- 어드민!!!!!! header 상단바 부분 --> 
    <header id="header" class="header lo-header" >  
        <div class="container" >       
            <h1 class="logo">
                <a class="scrollto" onclick='location.href="viewMain.do"'>
                    <span class="logo-icon-wrapper"><img class="logo-icon" src="appkit-landing-v2.3/assets/images/kick_icon_F.png" alt="iccon"></span>
                    <span class="text" ><span class="highlight">GO</span>AHEAD</span></a>
            </h1><!--//logo-->

            <nav class="main-nav navbar-expand-md float-right navbar-inverse" role="navigation">
                
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                
                <div id="navbar-collapse">
                    
                    <ul class="nav navbar-nav header-ul">
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='memberlist.do'">회원정보관리</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewUlocation.do'">고객위치확인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewHlocation.do'">헬멧위치확인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='faq.do'">고객센터</a></li>            
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='logout.do'">로그아웃</a></li>            
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->     
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->
    
    <div id="map"></div>
    
    <div>
		<div class="input-group mb-3 search left-box">
	  		<h4 class="lo-title">고객위치확인</h4>
	  		<div class="input-group mb-3 lo-input">
				<input id = "inputbox" type="text" class="form-control" placeholder="아이디를 입력하세요">
				<div class="input-group-append">
					<button id="inputbtn" class="btn btn-primary disabled lo-btn" type="submit">Go</button>
				</div>
			</div>
	  		<div id ="list"></div>
		</div>
    </div>
		
	
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cf65f305eeffb142807ebc9a6025b896"></script>
	<script>
	
	// mapload()함수가 없으면 지도 좌표값이 변경돼도 지도가 재실행이 안됨 에이젝스 성공하면 지도 재실행하게 
	function mapload() {
		
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
	
		center: new kakao.maps.LatLng(lat, long),
        level: 3 // 지도의 확대 레벨
    };
	
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
// 임의의 값 넣어주기? gps컬럼이 하나라 분리해서 넣어야할것같아여
		
		
var markerPosition  = new kakao.maps.LatLng(lat, long); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
	}
// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
</body>
</html>



