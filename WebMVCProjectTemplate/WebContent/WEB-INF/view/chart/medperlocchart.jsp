<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />
<meta charset="UTF-8">
<title>박지인</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
<form>
         <div class="form-group">
			<input type="text" class="searchname" name="medName"
			       style="width: 300px; height: 70px;" placeholder="약품명을 입력하세요">
            <button type="submit" class="btn btn-primary btn-lg active">검색</button>
         </div>
</form>

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
  "dataProvider": ${locmedData},
  "valueAxes": [{
    "axisAlpha": 0,
    "position": "left",
    "title": "MedCount of Location"
  }],
  "startDuration": 1,
  "graphs": [{
    "balloonText": "<b>[[category]]: [[value]]</b>",
    "fillColorsField": "color",
    "fillAlphas": 0.9,
    "lineAlpha": 0.2,
    "type": "column",
    "valueField": "countMedPerLoc"
  }],
  "chartCursor": {
    "categoryBalloonEnabled": false,
    "cursorAlpha": 0,
    "zoomable": false
  },
  "categoryField": "locationName",
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
<jsp:include page="/WEB-INF/view/include/footer.jsp" />

</body>
</html>
