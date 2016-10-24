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
	<a href="<c:url value='/#'/>" class="btn btn-dark btn-lg">빈칸</a>
	<a href="<c:url value='/showtop10.do'/>" class="btn btn-dark btn-lg">약품 TOP 10</a>
</div>	
<br><br>

<form action="<c:url value='/medperloc.do'/>" method="post">
         <div class="form-group">
			<input type="text" class="searchname" name="medName"
			       style="width: 300px; height: 60px; margin: 10px" placeholder="약품명을 입력하세요">
            <button type="submit" class="btn btn-dark btn-lg" style="background-color: 660066">검색</button>
         </div>
</form>
<center>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
  font-size: 11px;
}

.amcharts-pie-slice {
  transform: scale(1);
  transform-origin: 50% 50%;
  transition-duration: 0.3s;
  transition: all .3s ease-out;
  -webkit-transition: all .3s ease-out;
  -moz-transition: all .3s ease-out;
  -o-transition: all .3s ease-out;
  cursor: pointer;
  box-shadow: 0 0 30px 0 #000;
}

.amcharts-pie-slice:hover {
  transform: scale(1.1);
  filter: url(#shadow);
}							
</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<!-- Chart code -->
<h1>
	<c:if test="${!empty locmedData}">
		<c:if test="${locmedData eq '[]' }">데이터가 없습니다</c:if>
	</c:if>
</h1>


<script>
var chart = AmCharts.makeChart("chartdiv", {
  "type": "pie",
  "startDuration": 0,
   "theme": "light",
  "addClassNames": true,
  "legend":{
   	"position":"right",
    "marginRight":100,
    "autoMargins":false
  },
  "innerRadius": "30%",
  "defs": {
    "filter": [{
      "id": "shadow",
      "width": "200%",
      "height": "200%",
      "feOffset": {
        "result": "offOut",
        "in": "SourceAlpha",
        "dx": 0,
        "dy": 0
      },
      "feGaussianBlur": {
        "result": "blurOut",
        "in": "offOut",
        "stdDeviation": 5
      },
      "feBlend": {
        "in": "SourceGraphic",
        "in2": "blurOut",
        "mode": "normal"
      }
    }]
  },
  "dataProvider": ${locmedData},
  "valueField": "countMedPerLoc",
  "titleField": "locationName",
  "export": {
    "enabled": true
  }
});

chart.addListener("init", handleInit);

chart.addListener("rollOverSlice", function(e) {
  handleRollOver(e);
});

function handleInit(){
  chart.legend.addListener("rollOverItem", handleRollOver);
}

function handleRollOver(e){
  var wedge = e.dataItem.wedge.node;
  wedge.parentNode.appendChild(wedge);
}
</script>

<!-- HTML -->
<div id="chartdiv"></div>	


</body>
</html>
