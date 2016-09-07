<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>YEASTsoft - 약빵 template</title>


<!-- Favicon -->
<link href="<c:url value='/favicon.png'/>" rel="icon" type="image/png">

<link rel="stylesheet" href="<c:url value='/css/default.css'/>">

<!-- Essential styles -->
<link rel="stylesheet"
	href="<c:url value='/assets/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/fancybox/jquery.fancybox.css?v=2.1.5" media="screen'/>">


<!-- Required JS -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>


<!-- Essentials -->
<script src="<c:url value='/assets/bootstrap/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/js/jquery.hoverup.js'/>"></script>
<script src="<c:url value='/js/jquery.hoverdir.js'/>"></script>
<script src="<c:url value='/js/jquery.stellar.js'/>"></script>

<!-- Boomerang mobile nav - Optional  -->
<script
	src="<c:url value='/assets/responsive-mobile-nav/js/jquery.dlmenu.js'/>"></script>
<script
	src="<c:url value='/assets/responsive-mobile-nav/js/jquery.dlmenu.autofill.js'/>"></script>


<!-- Assets -->
<script
	src="<c:url value='/assets/hover-dropdown/bootstrap-hover-dropdown.min.js'/>"></script>
<script
	src="<c:url value='/assets/page-scroller/jquery.ui.totop.min.js'/>"></script>
<script src="<c:url value='/assets/mixitup/jquery.mixitup.js'/>"></script>
<script src="<c:url value='/assets/mixitup/jquery.mixitup.init.js'/>"></script>
<script
	src="<c:url value='/assets/fancybox/jquery.fancybox.pack.js?v=2.1.5'/>"></script>
<script src="<c:url value='/assets/waypoints/waypoints.min.js'/>"></script>
<script
	src="<c:url value='/assets/milestone-counter/jquery.countTo.js'/>"></script>


<!-- Mouse Hover menu App JS -->
<script src="<c:url value='/js/wp.app.js'/>"></script>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/one-page-wonder.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <script src="<c:url value='/js/html5shiv.js'/>"></script>
	    <script src="<c:url value='/js/respond.min.js'/>"></script>
    <![endif]-->


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-63011984-1', 'auto');
  ga('send', 'pageview');

</script>

</head>