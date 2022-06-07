<%@page language="java" contentType="text/html; charset=UTF-8"
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
    
</head>
<body>

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
                    	<li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewJoin.do'">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='viewLogin.do'">로그인</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" href="#">관리자</a></li>
                        <li class="nav-item"><a class="nav-link scrollto" href="#">고객센터</a></li>            
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->     
                                    

<!-- 상단바 바꿀 코드 작성하기! -->                   
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->
    
    <!-- header 상단바 아래 이미지+소개글 부분 -->
    <div id="hero" class="hero-section">
        
        <div id="hero-carousel" class="hero-carousel carousel carousel-fade slide" data-ride="carousel" data-interval="10000">
            
            <div class="figure-holder-wrapper">
        		<div class="container">
            		<div class="row justify-content-end">
                		<div class="figure-holder">
                	        <img class="figure-image img-fluid" src="appkit-landing-v2.3/assets/images/Img_Home.png" alt="image" style="width: 1000px" />
                        </div><!--//figure-holder-->
            		</div><!--//row-->
        		</div><!--//container-->
    		</div><!--//figure-holder-wrapper-->
            
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li class="active" data-slide-to="0" data-target="#hero-carousel"></li>
				<li data-slide-to="1" data-target="#hero-carousel"></li>
				<li data-slide-to="2" data-target="#hero-carousel"></li>
			</ol>
			
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
    			
				<div class="carousel-item item-1 active">
					<div class="item-content container">
    					<div class="item-content-inner">
    				        
				            <h2 class="heading">GO AHEAD <br class="d-none d-md-block">킥보드에 안전을 더하다</h2>
				            <p class="intro">
				            사고가 걱정되시나요?
				            <br>블랙박스에대한 장점 부각
				            <br>블라블라2
				            <br>블라블라2</p>
				            <a class="btn btn-primary btn-cta" href="if(로그인==바로대여.java) else if (로그인!= 로그인페이지.java) /" target="_blank">바로 대여</a>
    				        
    					</div><!--//item-content-inner-->
					</div><!--//item-content-->
				</div><!--//item-->
				
				<div class="carousel-item item-2">
					<div class="item-content container">
						<div class="item-content-inner">
    				        
				            <h2 class="heading" style="color: black">GO AHEAD</h2>
				            <p class="intro" style="color: black">안전이 걱정되시나요?
				            <br>낙상감지기능 부각
				            <br>골든타임을 확보할 수 있습니다~!!
				            </p>
							<a class="btn btn-primary btn-cta" href="if(로그인==바로대여.java) else if (로그인!= 로그인페이지.java)/" target="_blank">바로 대여</a>    				        
    					</div><!--//item-content-inner-->
					</div>
				</div><!--//item-->
				
				<div class="carousel-item item-3">
					<div class="item-content container">
						<div class="item-content-inner">
  							<h2 class="haunted-text" class="heading" data-haunted-text>GO AHEAD</h2>
				            <p class="intro">장점또쓰기~</p>
				            <a class="btn btn-primary btn-cta" href="if(로그인==바로대여.java) else if (로그인!= 로그인페이지.java)/" target="_blank">Get Started</a>
    				        
    					</div><!--//item-content-inner-->
					</div>
				</div><!--//item-->
			</div><!--//carousel-inner-->

		</div><!--//carousel-->
    </div><!--//hero-->
    
    
    
    <div id="about" class="about-section">
        <div class="container text-center">
            <h2 class="section-title">GO ADHEAD</h2>
            <p class="intro">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
           
           
            <!-- 필요여부 확인해볼게요 
            <ul class="technologies list-inline">
                <li class="list-inline-item"></li>
                <li class="list-inline-item"></li>
                <li class="list-inline-item"></li>
                <li class="list-inline-item"></li>
                <li class="list-inline-item"></li>
            </ul> -->
            
            <div class="items-wrapper row">
                <div class="item col-md-4 col-12">
                    <div class="item-inner">
                        <div class="figure-holder">
                            <img class="figure-image" src="appkit-landing-v2.3/assets/images/KICK3.png" alt="image" style="width: 300px">
                        </div><!--//figure-holder-->
                        <h3 class="item-title">GO AHEAD 1</h3>
                        <div class="item-desc mb-3">
                            List one of your product's benefits here. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. 
                        </div><!--//item-desc-->
                      <!--  <a class="btn btn-primary" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Find out more</a>-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-md-4 col-12">
                    <div class="item-inner">
                        <div class="figure-holder">
                            <img class="figure-image" src="appkit-landing-v2.3/assets/images/KICK2.png" alt="image" style="width: 300px">
                        </div><!--//figure-holder-->
                        <h3 class="item-title">GO AHEAD 2</h3>
                        <div class="item-desc mb-3">
                            List one of your product's benefits here. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. </div><!--//item-desc-->
                        <!-- <a class="btn btn-primary" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Find out more</a> -->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-md-4 col-12">
                    <div class="item-inner">
                        <div class="figure-holder">
                            <img class="figure-image" src="appkit-landing-v2.3/assets/images/KICK1.png" alt="image" style="width: 300px">
                        </div><!--//figure-holder-->
                        <h3 class="item-title">GO AHEAD 3</h3>
                        <div class="item-desc mb-3">
                            List one of your product's benefits here. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. </div><!--//item-desc-->
                       <!-- <a class="btn btn-primary" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Find out more</a> -->
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//items-wrapper-->
        </div><!--//container-->
    </div><!--//about-section-->
    
    
    <div id="features" class="features-section" style="background-color: pink">
        <div class="container text-center">
            <h2 class="section-title">GO AHEAD 이용하기!</h2>
            <p class="intro">You can use this section to list your product features. The screenshots used here were taken from <a href="https://www.uxfordev.com/appify/index.html" target="_blank">Bootstrap 4 admin theme Appify</a></p>
            
            <section id="safety" class="s-safety target-section"  >
      
              <div class="section-content" style=" padding-bottom: 100px; border-radius: 1rem">
                  <div class="content-item"><span style="margin-right: 40px">✔ 헬멧 착용</span></div>
                  <div class="content-item">✔ 운전면허증</div>
                  <div class="content-item">✔ 동반탑승 금지</div>
                  <div class="content-item">✔ 음주운전 금지</div>
              </div>
      
          </section>
           
            
            
            <div class="tabbed-area row">
                
     

                
            </div><!--//tabbed-area-->
            
        </div><!--//container-->
    </div><!--//features-->
    
    <div class="team-section" id="team">
        <div class="container text-center">
            <h2 class="section-title">Our Team</h2>
            <div class="story">
                <p>Introduce your team here. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.  Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue</p>
            </div>
            <div class="members-wrapper row">
                <div class="item col-md-6 col-12">
                    <div class="item-inner">
                        <div class="profile mb-2">
                            <img class="profile-image" src="appkit-landing-v2.3/assets/images/team-1.png" alt="Xiaoying Riley" />
                        </div>
                        
                        <div class="member-content">
                            <h3 class="member-name">Xiaoying Riley</h3>
                            <div class="member-title">Full-Stack Designer</div>
                            <ul class="social list-inline">
                                <li class="list-inline-item"><a class="twitter" href="https://twitter.com/3rdwave_themes" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                
                                <li class="list-inline-item"><a class="facebook" href="https://www.facebook.com/3rdwavethemes/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="list-inline-item"><a class="github" href="https://github.com/xriley" target="_blank"><i class="fab fa-github"></i></a></li>
                                <li class="list-inline-item"><a class="dribbble" href="https://dribbble.com/Xiaoying" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                               <li class="list-inline-item"><a class="medium" href="https://uk.linkedin.com/in/xiaoying" target="_blank"><i class="fab fa-medium-m"></i></a></li>
                                
                            </ul>
                            <div class="member-desc">
                               <p>Xiaoying is the UX/UI designer behind AppKit Landing. She makes <a href="https://themes.3rdwavemedia.com/bootstrap-templates/free/" target="_blank">free Bootstrap themes</a> for developers. You can find her sharing useful UX and webdev related content on <a href="https://twitter.com/3rdwave_themes" target="_blank">Twitter</a> and <a href="https://www.facebook.com/3rdwavethemes/" target="_blank">Facebook</a>. Follow her if you like what she does!</p>
                            </div><!--//member-desc-->
                        </div><!--//member-content-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-md-6 col-12">
                    <div class="item-inner">
                        <div class="profile mb-2">
                            <img class="profile-image" src="appkit-landing-v2.3/assets/images/team-2.png" alt="Tom Najdek" />
                        </div>
                        
                        <div class="member-content">
                            <h3 class="member-name">Tomasz Najdek</h3>
                            <div class="member-title">Full-Stack Developer</div>
                            <ul class="social list-inline">
                                <li class="list-inline-item"><a class="twitter" href="http://twitter.com/tnajdek" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="https://www.doppnet.com/" target="_blank"><i class="fas fa-globe"></i></a></li>
                                <li class="list-inline-item"><a class="github" href="https://github.com/tnajdek" target="_blank"><i class="fab fa-github"></i></a></li>
                               
                                
                            </ul>
                            <div class="member-desc">
                                <p>Tom is a full-stack developer specialising in building large, scalable and user-friendly web apps. Follow him on <a href="https://twitter.com/tnajdek" target="_blank">Twitter</a> for fresh developer tips and check out his <a href="https://github.com/tnajdek" target="_blank">Github</a> for useful open-source tools.
</p>
                            </div><!--//member-desc-->
                        </div><!--//member-content-->
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//members-wrapper-->
            <div class="text-center mt-5">
	            <a class="btn btn-cta btn-primary" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Contact Us</a>
            </div>
        </div>
    </div><!--//team-section-->
    
    <div id="pricing" class="pricing-section">
        <div class="container text-center">
            <h2 class="section-title">로그인</h2>
            <div class="intro">AppKit Landing's future updates are 100% FREE for existing customers</div>
            <div class="pricing-wrapper row">
                <div class="item item-1 col-md-4 col-12">
                    <div class="item-inner">
                        <h3 class="item-heading">FREE<br><span class="item-heading-desc">(Attribution Required)</span></h3>
                        <div class="price-figure">
                            <span class="currency">$</span><span class="number">0</span>
                        </div><!--//price-figure-->
                        <ul class="list-unstyled mb-3">
	                        <li class="mb-2"><i class="fas fa-check"></i> Single installation</li>
	                        <li class="mb-2"><i class="fas fa-check"></i> Multiple installations</li>
                            <li class="mb-2"><i class="fas fa-times"></i> Use without attribution link</li>
                        </ul>
                        <div class="mb-3"><a href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">License Details</a></div>
                        <a class="btn btn-inverse btn-cta" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/">Get it now</a>
                        
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item item-2 col-md-4 col-12">
                    <div class="item-inner">
                        <h3 class="item-heading">Single Application<br><span class="item-heading-desc">(Commercial License)</span></h3>
                       
                        <div class="price-figure">
                            <span class="currency">$</span><span class="number">29</span>
                        </div><!--//price-figure-->
                        <ul class="list-unstyled mb-3">
	                        <li class="mb-2"><i class="fas fa-check"></i> Single installation</li>
	                        <li class="mb-2"><i class="fas fa-times"></i> Multiple installations</li>
	                        <li class="mb-2"><i class="fas fa-check"></i> Use without attribution link</li>
                        </ul>
                        <div class="mb-3"><a href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">License Details</a></div>
                        <a class="btn btn-inverse btn-cta" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/">Get it now</a>
                        
                    </div><!--//item-inner-->
                </div><!--//item-->
                
                <div class="item item-3 col-md-4 col-12">
                    <div class="item-inner">
                        <h3 class="item-heading">Multiple Applications<br><span class="item-heading-desc">(Commercial License)</span></h3>
                        <div class="price-figure">
                            <span class="currency">$</span><span class="number">99</span>
                        </div><!--//price-figure-->
                        <ul class="list-unstyled mb-3">
	                        <li class="mb-2"><i class="fas fa-check"></i> Single installation</li>
	                        <li class="mb-2"><i class="fas fa-check"></i> Multiple installations</li>
	                        <li class="mb-2"><i class="fas fa-check"></i> Use without attribution link</li>
                        </ul>
                        <div class="mb-3"><a href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">License Details</a></div>
                        <a class="btn btn-inverse btn-cta" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Get it now</a>
                        
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//pricing-wrapper-->
            
        </div><!--//container-->
    </div><!--//pricing-section-->
   
    
    <footer class="footer text-center">
        <div class="container">
            <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
            <small class="copyright">Designed with <i class="fas fa-heart"></i> by <a href="https://themes.3rdwavemedia.com/" target="_blank">Xiaoying Riley</a> for developers</small>
            
            
        </div><!--//container-->
    </footer>
     
    <!-- Javascript -->          
    <script type="text/javascript" src="appkit-landing-v2.3/assets/plugins/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="appkit-landing-v2.3/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="appkit-landing-v2.3/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>     
    <script type="text/javascript" src="appkit-landing-v2.3/assets/js/main.js"></script> 
    <script>
    
    var $hauntedText = $('[data-haunted-text]');
    var maxDuration = 2000;
    var maxDelay = 500;
    var minDuration = maxDuration - maxDelay;

    $hauntedText.blast({
      delimiter: 'character',
    });

    setTimeout(function() {
      $hauntedText.find('.blast').each(function(i, el) {
        var $el = $(el);

        var duration = getRandomValue(minDuration, maxDuration);
        var delay = maxDuration - duration;
        var blur = getRandomValue(2, 10);

        // From
        $el.velocity({
          opacity: 0,
          blur: blur,
        }, {
          duration: 0,
        });

        // To
        $el.velocity({
          opacity: 1,
          blur: 0,
        }, {
          duration: duration,
          delay: delay,
          ease: [250, 0],
        });
      });
      
      $hauntedText.css({visibility: 'visible'});
    }, 500);

    var getRandomValue = function(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
    }
    </script>
</body>
</html>