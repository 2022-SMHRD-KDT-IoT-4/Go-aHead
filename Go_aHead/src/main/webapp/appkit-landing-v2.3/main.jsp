<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>GO AHEAD - 킥보드에 안전을 더하다</title>
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
    
</head>
<body class="main-body">

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
                        <li class="nav-item"><a class="nav-link scrollto" onclick="location.href='faq.do'">고객센터</a></li>            
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->     
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
                        
                        <h2 class="heading">GO AHEAD<br class="d-none d-md-block"></h2>
                        <p class="intro">
                        <br>
                        <br></p>
                        <a class="btn btn-primary btn-cta" href="if(로그인==바로대여.java) else if (로그인!= 로그인페이지.java) /" target="_blank">대여하기</a>
                        
                   </div><!--//item-content-inner-->
               </div><!--//item-content-->
            </div><!--//item-->
            
            <div class="carousel-item item-2">
               <div class="item-content container">
                  <div class="item-content-inner">
                        
                        <h2 class="heading">GO AHEAD<br class="d-none d-md-block"></h2>
                        <p class="intro">
                        <br>
                        <br>
                        </p>
                     <a class="btn btn-primary btn-cta" href="if(로그인==바로대여.java) else if (로그인!= 로그인페이지.java)/" target="_blank">대여하기</a>                        
                   </div><!--//item-content-inner-->
               </div>
            </div><!--//item-->
            
            <div class="carousel-item item-3">
               <div class="item-content container">
                  <div class="item-content-inner">
                       <h2 class="haunted-text" class="heading" data-haunted-text>GO AHEAD</h2>
                        <p class="intro">
                        <br><br></p>
                        <a class="btn btn-primary btn-cta" href="if(로그인==바로대여.java) else if (로그인!= 로그인페이지.java)/" target="_blank">대여하기</a>
                        
                   </div><!--//item-content-inner-->
               </div>
            </div><!--//item-->
         </div><!--//carousel-inner-->

      </div><!--//carousel-->
    </div><!--//hero-->
    
    
    
    <div id="about" class="about-section">
        <div class="container text-center">
            <h2 class="section-title">킥보드에 안전을 더하다</h2>
            <p class="intro">이동의 패러다임을 바꾸는 GO AHEAD<br>가고 싶은 곳으로 언제든 갈 수 있도록, 하고 싶었던 것을 언제든 할 수 있도록👌<br>
            다양한 공유킥보드가 나왔지만 GO AHEAD는 더욱 안전을 위해👌<br>교통혼잡, 대기오염, 주차공간 부족과 같은 문제 개선에 적극 기여하며 <br>
사람과 도시를 연결하기 위하여 오늘도 노력합니다.<br> 우리는 이동을 통해 아낀 시간이 우리의 삶을 조금 더 나아지게 할 수 있다고 믿습니다.</p>
           
           
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
                        <h3 class="item-title">분실 방지</h3>
                        <div class="item-desc mb-3">
                            GPS를 이용해 헬멧 분실시 고객센터 문의를 통해 위치를 찾아 낼 수 있습니다!
                        </div><!--//item-desc-->
                      <!--  <a class="btn btn-primary" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Find out more</a>-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-md-4 col-12">
                    <div class="item-inner">
                        <div class="figure-holder">
                            <img class="figure-image" src="appkit-landing-v2.3/assets/images/KICK2.png" alt="image" style="width: 300px">
                        </div><!--//figure-holder-->
                        <h3 class="item-title">SOS </h3>
                        <div class="item-desc mb-3">
                           헬멧을 통해 사고를 감지하여 일정 시간내 반응이 없을시 가입시 입력한 비상연락망과 119에 도움을 요청합니다!
                            </div><!--//item-desc-->
                        <!-- <a class="btn btn-primary" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Find out more</a> -->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-md-4 col-12">
                    <div class="item-inner">
                        <div class="figure-holder">
                            <img class="figure-image" src="appkit-landing-v2.3/assets/images/KICK1.png" alt="image" style="width: 300px">
                        </div><!--//figure-holder-->
                        <h3 class="item-title">블랙박스</h3>
                        <div class="item-desc mb-3">
                            사고 발생 시 사용자가 홈페이지에서 SD카드에 자동 저장되는 블랙박스를 확인하여 처리 할 수 있다!
                            </div><!--//item-desc-->
                       <!-- <a class="btn btn-primary" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/appkit-landing-free-bootstrap-theme-for-developers-and-startups/" target="_blank">Find out more</a> -->
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//items-wrapper-->
        </div><!--//container-->
    </div><!--//about-section-->
    
    
    <div id="features" class="features-section" style="background-color: pink">
        <div class="container text-center">
            <h2 class="section-title">GO AHEAD 이용하기!</h2>
            <p class="intro">GO AHEAD의 대표적 기능</p>
            
            <section id="safety" class="s-safety target-section"  >
      
              <div class="section-content" style=" padding-bottom: 100px; border-radius: 1rem">
                  <div class="content-item"><span style="margin-right: 40px">✔ 사고 감지</span></div>
                  <div class="content-item">✔ sos 상태확인</div>
                  <div class="content-item">✔ 블랙 박스</div>
                  <div class="content-item">✔ 착용 감지</div>
              </div>
      
          </section>
           
            
            
            <div class="tabbed-area row">
                
     

                
            </div><!--//tabbed-area-->
            
        </div><!--//container-->
    </div><!--//features-->
    
    <div class="team-section" id="team">
        <div class="container text-center">
            <h2 class="section-title">GO AHEAD Team</h2>
            <div class="story">
                <p><strong>▶우리는 빠르게 성장하고 발전합니다 -</strong>
               그래서 매일 조금씩 더 나아지기 위해 노력합니다.<br><br>
               <strong>▷우리는 모두 리더입니다 -</strong>
               내가 시작한 작은 행동이 우리의 모습을 만듭니다.<br><br>
               <strong>▶우리는 전문가입니다 -</strong>
               치밀하게 일하는 섬세함이 우리의 경쟁력입니다.<br><br>
               <strong>▷우리는 서로 이해하기 위해 소통합니다 -</strong>
               의견을 말할 때 이유와 대안을 충분히 설명합니다.<br><br>
               <strong>▶우리는 동료와 함께 일합니다 -</strong>
               혼자 할 수 없는 일도 팀으로는 가능합니다.<br><br>
               <strong>▷우리는 빠르게 실행합니다 -</strong>
               깊게 고민했다면 즉시 공유하고 움직입니다.<br><br>
               <strong>▶우리는 모두 리더입니다 -</strong>
               GO AHEAD와 라이더님의 행복을 위해 노력합니다.</p>
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
    
    <footer class="footer text-center">
        <div class="container">
            <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
            <small class="copyright">Designed with <i class="fas fa-heart"></i> by <a href="https://themes.3rdwavemedia.com/" target="_blank">GO AHEAD TEAM</a> for users</small>
            
            
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