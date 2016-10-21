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
<a id="menu-toggle" href="<c:url value="/forward.do?url=/menu/aboutus.jsp"/>" class="btn btn-dark btn-lg toggle"><i class="fa fa-home" ></i></a>
<br>
<center>
<div class="container">
	<a href="<c:url value='/forward.do?url=/chart/mcountperlocchart.jsp'/>" class="btn btn-dark btn-lg">지역별 약품 검색통계</a>
	<a href="<c:url value='/forward.do?url=/chart/fcountperlocchart.jsp'/>" class="btn btn-dark btn-lg">지역별 식품 검색통계</a>
	<a href="<c:url value='/foodmedlog.do'/>" class="btn btn-dark btn-lg">식품-약품 RANK</a>
	<a href="<c:url value='/showmedfrequency.do'/>" class="btn btn-dark btn-lg">약품별 검색통계</a>
	<a href="<c:url value='/showfoodfrequency.do'/>" class="btn btn-dark btn-lg">식품별 검색통계</a>
</div>	
<center>

<!-- Styles -->
<style>
#chartdiv {
	width		: 100%;
	height		: 500px;
	font-size	: 11px;
}

.amcharts-export-menu-top-right {
  top: 10px;
  right: 0;
}		
</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<!-- Chart code -->

<script>
var chart = AmCharts.makeChart("chartdiv", {
  "type": "serial",
  "theme": "light",
  "marginRight": 70,
  "dataProvider": ${logData},
  "valueAxes": [{
    "axisAlpha": 0,
    "position": "left",
    "title": "Frequency of medicine"
  }],
  "startDuration": 1,
  "graphs": [{
    "balloonText": "<b>[[category]]: [[value]]</b>",
    "fillColorsField": "color",
    "fillAlphas": 0.9,
    "lineAlpha": 0.2,
    "type": "column",
    "valueField": "countMed"
  }],
  "chartCursor": {
    "categoryBalloonEnabled": false,
    "cursorAlpha": 0,
    "zoomable": false
  },
  "categoryField": "medName",
  "categoryAxis": {
    "gridPosition": "start",
    "labelRotation": 45
  },
  "export": {
    "enabled": true
  }

});
</script>

<!-- HTML -->
<div id="chartdiv"></div>

</body>
</html>