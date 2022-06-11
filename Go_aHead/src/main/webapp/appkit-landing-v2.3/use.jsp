<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Bootstrap 4 theme for developers and startups</title>
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
    <link rel="stylesheet" href="appkit-landing-v2.3/assets/startmodal.scss">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

 <% Member member = (Member)session.getAttribute("member"); %>

<script>
	
$(document).ready(function() {
	$('#start-btn').click(function() {
		kickStart();
		motorStart();
		
	})
	
	$('#stop-btn').click(function() {
		kickStop();
	})

})


function kickStart() {

	$.ajax({
		url : "use.do",
		type : "get",
		dataType : "json",
		data : {
			"kick_num" : $('#kick_num_input').val(),
			"hel_num" : $('#het_num_input').val()
		},
		
		success : useList, 
		error: function () {
			alert('error');
		}
		
	})
	
}

function motorStart() {
	$.ajax({
		url : "moduleController",
		type : "get",
		data : {"motor" : 1},
		success : console.log("success"),
		error : function(){
			alert('error');
		}
	})
}

	function useList(data) {
		
		console.log("성공")
		console.log(data)

		document.querySelector(".background").className = "background show";
		
		var list = "<table>";
		
		list += "<tr>"
			list += "<td>이용시작 시간</td>"
			list += "<td>"+data.start_time+"</td>"
		list += "</tr>"
		
		list += "<tr>"
			list += "<td>헬멧번호</td>"
			list += "<td>"+data.hel_number+"</td>"
		list += "</tr>"
		
			list += "<tr>"
				list += "<td>아이디</td>"
				list += "<td>"+data.mem_id+"</td>"
			list += "</tr>"

		list +="</table>"
	
		$('#useListTable').html(list)

		
	}


	function kickStop() {
		   
		   $.ajax({
		      url : "stop.do",
		      type : "get",
		      data : {
		         "mem_id" : $('#mem_id').val()
		      },
		      dataType : "json",
		      success : stop, 
		      error: function () {
		         alert('error');
		      }
		      
		   })
		   
		}
	
	
	function stop () { 
		console.log('종료완료');
	  	document.querySelector(".background").className = "background";
	}

</script>



 <body>
    <!-- header 상단바 부분 --> 
    <header id="header" class="header" style = "position: static;">  
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
                </div><!--//navabr-collapse-->     
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->
    
<!-- ------------------------------------------------------------------------------------------------------------------ -->



<div id="map"></div>
 <div class="start-section">

<div class ="start-tag">
   		<input type="text" class="form-control start-input" id ="kick_num_input" placeholder="킥보드 번호를 입력하세요." name="kick_num">
   		<input type="text" class="form-control start-input" id ="het_num_input" placeholder="헬멧 번호를 입력하세요." name="hel_num">
   		<input type="hidden" id="mem_id" value=<%=member.getMem_id()%>>
   		<button  type="button" class="btn btn-success" id ="start-btn">이용시작</button>           
</div>
 
 
 
<div class="background">
  <div class="window">
    <div class="popup">
	
	<div id ="useListTable">
	</div>
	
     <button type="submit" class="btn btn-success" id ="stop-btn" >이용종료</button>  
    </div>
  </div>
</div>
 

 
 
 
 
 </div>  

<h3 class="use-title">킥보드 위치확인</h3>
   
   
<div style="display: block; margin-top:30px" >

</div>
      


   
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17b3f4afc77e1401ad704210c028726b"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(35.110494, 126.877761), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: '킥보드01', 
        latlng: new kakao.maps.LatLng(35.110494, 126.877761)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}




</script>
</body>
</html>