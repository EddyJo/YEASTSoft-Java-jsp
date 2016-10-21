<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />




<style>
@import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css');

li, div, a ,button{
	font-size: 15px;
	font-weight: bold;
	font-family: 'nanumgothic';
}


</style>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->
	<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i
		class="fa fa-bars"></i></a>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle">
				<i class="fa fa-times"></i></a>
			<!--  <li class="sidebar-brand"><a
				href='<c:url value="/forward.do?url=/menu/aboutus.jsp"/>' onclick=$("#menu-close").click();>약빵소개</a></li>-->
			<li><a href="<c:url value='/member/login.do'/>" onclick=$("#menu-close").click();>로그인/회원가입</a>
			<li><a href="#top" onclick=$("#menu-close").click();>Home</a></li>
			<li><a href="#about" onclick=$("#menu-close").click();>궁합도
					검색</a></li>
			<li><a href="#services" onclick=$("#menu-close").click();>약빵
					사용법</a></li>
			<li><a href="#portfolio" onclick=$("#menu-close").click();>About
					US</a></li>
		</ul>
	</nav>

	<!-- Header -->
	<header id="top" class="header">
		<div class="text-vertical-center">
			<h2>식품 &amp; 약품 궁합 분석 플랫폼</h2>
			<h1>약 빵</h1>
			<br> <a href="#about" class="btn btn-dark btn-lg">궁합 분석
				Start</a>
		</div>
	</header>

	<!-- About -->
	<section id="about" class="about">
		<!-- Page Content -->
		<center>
			<div class="container1" align=center>
				<!-- First Featurette -->
				<form action="<c:url value='search.do'/>" method="post"
					class="form-horizontal" style="">
					<div class="form-group">
						<br> <br>
						<h1 class="text-vertical-center" style="">식품 & 약품 궁합도 분석</h1>
						<br> <br>
					
						<input type="text" class="searchname" name="foodKey"
							style="text-align: center; width: 300px; height: 60px;"
							placeholder="'식품명'을 입력하세요""><br> <br> 
						<input type="text" class="searchname" name="medKey"
							style="text-align: center; width: 300px; height: 60px;"
							placeholder="'약품명'을 입력하세요"><br> <br> <br>
												
						<button type="submit" class="btn btn-dark btn-lg">궁합도 검색</button>
						
						
					</div>


				</form>
			</div>
			<center>

				<!-- /.container -->
	</section>

	<!-- Services -->
	<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
	<section id="services" class="services bg-primary">
		<div class="container">
			<div class="row text-center">
				<div class="col-lg-10 col-lg-offset-1">
					<h2>Our Services</h2>
					<hr class="small">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="service-item">
								<span class="fa-stack fa-4x"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-stethoscope fa-stack-1x text-primary"></i>
								</span>
								<h4>
									<strong>궁합도 분석</strong>
								</h4>
								<p style="font-weight: normal; font-size: 0.8em">
									식품명과 약품명을 입력받아<br>둘 사이의 궁합도를 분석합니다.
								</p>
								<a href="#about" class="btn btn-light">START</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="service-item">
								<span class="fa-stack fa-4x"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-search fa-stack-1x text-primary"></i>
								</span>
								<h4>
									<strong>검색이력 조회</strong>
								</h4>
								<p style="font-weight: normal; font-size: 0.8em">
									사용자의 궁합도 검색이력을<br>조회합니다.
								</p>
								<a href="#" class="btn btn-light">START</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="service-item">
								<span class="fa-stack fa-4x"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-bar-chart fa-stack-1x text-primary"></i>
								</span>
								<h4>
									<strong>통계분석</strong>
								</h4>
								<p style="font-weight: normal; font-size: 0.8em">
									모든 사용자의 검색이력을<br>주제별로 시각화하여 제공합니다.
								</p>
								<a href="<c:url value='/chartintro.do'/>" class="btn btn-light">START</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="service-item">
								<span class="fa-stack fa-4x"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-user fa-stack-1x text-primary"></i>
								</span>
								<h4>
									<strong>마이 페이지</strong>
								</h4>
								<p style="font-weight: normal; font-size: 0.8em">
									개인정보 관리페이지를<br>제공합니다.
								</p>
								<a href="<c:url value='/member/mypage.do'/>"
									class="btn btn-light">START</a>
							</div>
						</div>

					</div>
					<!-- /.row (nested) -->
				</div>
				<!-- /.col-lg-10 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- Callout-->
	<aside class="callout">
		<div class="text-vertical-center"></div>
	</aside>

	<!-- Portfolio -->
	<section id="portfolio" class="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-lg-offset-1 text-center">
					<h2>About US</h2>
					<hr class="small">
					<div class="row">
						<div class="col-md-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="img/portfolio-1.jpg">
								</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="img/portfolio-2.jpg">
								</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="img/portfolio-3.jpg">
								</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="img/portfolio-4.jpg">
								</a>
							</div>
						</div>
					</div>
					<!-- /.row (nested) -->
					<a href="#" class="btn btn-dark">View More Items</a>
				</div>
				<!-- /.col-lg-10 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- Call to Action 
	<aside class="call-to-action bg-primary">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h3>The buttons below are impossible to resist.</h3>
					<a href="#" class="btn btn-lg btn-light">Click Me!</a> <a href="#"
						class="btn btn-lg btn-dark">Look at Me!</a>
				</div>
			</div>
		</div>
	</aside>-->

	<!-- Footer--> 
	<footer>
	<div id="footer_wrap">
		<div class="footer_box">
			<ul>
				<li>Yeastsoft@yeastsoft.com</li>
			</ul>
		</div>
	</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    //#to-top button appears after scrolling
    var fixed = false;
    $(document).scroll(function() {
        if ($(this).scrollTop() > 250) {
            if (!fixed) {
                fixed = true;
                // $('#to-top').css({position:'fixed', display:'block'});
                $('#to-top').show("slow", function() {
                    $('#to-top').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function() {
                    $('#to-top').css({
                        display: 'none'
                    });
                });
            }
        }
    });
    // Disable Google Maps scrolling
    // See http://stackoverflow.com/a/25904582/1607849
    // Disable scroll zooming and bind back the click event
    var onMapMouseleaveHandler = function(event) {
        var that = $(this);
        that.on('click', onMapClickHandler);
        that.off('mouseleave', onMapMouseleaveHandler);
        that.find('iframe').css("pointer-events", "none");
    }
    var onMapClickHandler = function(event) {
            var that = $(this);
            // Disable the click handler until the user leaves the map area
            that.off('click', onMapClickHandler);
            // Enable scrolling zoom
            that.find('iframe').css("pointer-events", "auto");
            // Handle the mouse leave event
            that.on('mouseleave', onMapMouseleaveHandler);
        }
        // Enable map zooming with mouse scroll when the user clicks the map
    $('.map').on('click', onMapClickHandler);
    </script>

</body>

</html>