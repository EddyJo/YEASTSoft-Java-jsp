<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />
<meta charset="UTF-8">
<title>박지인</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
<form action="<c:url value='/medperloc.do'/>" method="post">
         <div class="form-group">
			<input type="text" class="searchname" name="medName"
			       style="width: 300px; height: 50px; margin: 10px;" placeholder="약품명을 입력하세요">
            <button type="submit" class="btn btn-primary btn-lg active">검색</button>
         </div>
</form>
<form action="<c:url value='/foodperloc.do'/>" method="post">
         <div class="form-group">
			<input type="text" class="searchname" name="foodName"
			       style="width: 300px; height: 50px; margin: 10px;" placeholder="식품명을 입력하세요">
            <button type="submit" class="btn btn-primary btn-lg active">검색</button>
         </div>
</form>
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
	<c:if test="${!empty locfoodData}">
		<c:if test="${locfoodData eq '[]' }">데이터가 없습니다</c:if>
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
  "dataProvider": ${locfoodData},
  "valueField": "countFoodPerLoc",
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
<jsp:include page="/WEB-INF/view/include/footer.jsp" />

</body>
</html>
