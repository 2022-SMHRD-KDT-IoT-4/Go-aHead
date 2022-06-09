<%@page import="com.smhrd.domain.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.dao.MemberDAO"%>
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
     <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    
    .button {
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
		-webkit-transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
		-ms-transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
		transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
		background-color: transparent;
		border: 0;
		border-radius: 0;
		box-shadow: inset 0 0 0 2px #ffffff;
		color: #ffffff;
		cursor: pointer;
		display: inline-block;
		font-size: 0.8em;
		font-weight: 600;
		height: 3.5em;
		letter-spacing: 0.25em;
		line-height: 3.5em;
		padding: 0 1.75em;
		text-align: center;
		text-decoration: none;
		text-transform: uppercase;
		white-space: nowrap;
	}
  </style>
</head>
    
    
    
</head>

<body>
<%
ArrayList<Member> list = (ArrayList)request.getAttribute("list");
%>

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
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="nav-link scrollto" href="고객위치확인">고객위치확인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" href="킥보드위치확인">킥보드위치확인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" href="고객센터">고객센터</a></li>                        
                        <li class="nav-item"><a class="nav-link scrollto" href="Logout.do">로그아웃</a></li>                        

                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->


<div class="container mt-3" style= "padding-top : 150px;" !important">
  <h2>GO AHEAD 고객정보조회</h2>     
  <table class="table">
    <thead>
      <tr>
       	<th>ID</th>
        <th>NAME</th>
        <th>GENDER</th>
        <th>B_TYPE</th>
        <th>PHONE</th>
        <th>SUBPHONE</th>
        <th>DRIVENUM</th>
      </tr>
    </thead>
    <tbody>


	<%
	for(Member vo : list){
		%>
	 <tr>
	  <td><%=vo.getMem_id() %></td>
	 <td><%=vo.getMem_name() %></td>
	 <td><%=vo.getMem_gender() %></td>
	 <td><%=vo.getMem_blood() %></td>
	 <td><%=vo.getMem_phone() %></td>
	 <td><%=vo.getMem_subphone() %></td>
	 <td><%=vo.getDrivenum() %></td>

      </tr>
	
	<%} %>
      
     
    </tbody>
  </table>    
  

		<a href="main.do" class="button next scrolly">되돌아가기</a>

	</div>

  
    
    <!-- Javascript -->          
    <script type="text/javascript" src="appkit-landing-v2.3/assets/plugins/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="appkit-landing-v2.3/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="appkit-landing-v2.3/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>     
    <script type="text/javascript" src="appkit-landing-v2.3/assets/js/main.js"></script> 
    <script src="appkit-landing-v2.3/assets/js/jquery.min.js"></script>
	<script src="appkit-landing-v2.3/assets/js/skel.min.js"></script>
	<script src="appkit-landing-v2.3/assets/js/util.js"></script>
	<!—[if lte IE 8]><script src="appkit-landing-v2.3/assets/js/ie/respond.min.js"></script><![endif]—>
	<script src="appkit-landing-v2.3/assets/js/main.js"></script>
      
       
</body>
</html>