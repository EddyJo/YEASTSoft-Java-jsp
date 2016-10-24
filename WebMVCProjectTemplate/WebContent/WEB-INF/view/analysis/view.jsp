<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
@import url('https://fonts.googleapis.com/css?family=Lobster');
@import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css');

.featurette {
	/*margin: 200px 0;*/
	height: 730px;
	text-align: center;
	position: absloute;
}

.liquidFillGaugeText {
	font-family: Helvetica;
	font-weight: bold;
}

#top1 {
	width: 100%;
	height: 100px;
	background-color: rgba(255, 0, 102, 0.7);
	line-height: 100px;
	font-family: 'Lobster', cursive;
	font-size: 40px;
	color: white;
	text-align: center;
}

#middle1 {
	width: 700px;
	height: 330px;
	background-color: #F6F6F6;
	margin-left: 700px;
	margin-top: 100px;
}

#middle_left {
	float: left;
	width: 500px;
	height: 500px;
	margin-left: 100px;
	margin-top: 10px;
}

#good {
	text-weight: normal;
}

#name {
	color: #AF1903;
}


</style>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<head lang="en">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>YEASTsoft - 약빵 template</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


<script src="http://d3js.org/d3.v3.min.js" language="JavaScript"></script>
<script src="js/analysis.ui.js" language="JavaScript"></script>


</head>
<body>
	<div id="top1">Yakstagram</div>
	<center>
		<div class="featurette" id="about">

			<center>

				<br>
				<h1>
					<span id="name">${result.getMed_name()}</span>과 <span id="name">${result.getFood_name()}</span>의
					궁합도
				</h1>
				<br>
				<br>

				<div id="middle_left">

					<c:if test="${result.getScore()<0}">
						<br>
						<svg id="fillgauge5" width="100%" height="100%";"></svg>

						<script language="JavaScript">
							var config4 = liquidFillGaugeDefaultSettings();
							config4.circleThickness = 0.15;
							config4.circleColor = "#FF7777";
							config4.textColor = "#FF4444";
							config4.waveTextColor = "#FFFFAA";
							config4.waveColor = "#FFDDDD";
							config4.textVertPosition = 0.8;
							config4.waveAnimateTime = 1000;
							config4.waveHeight = 0.05;
							config4.waveAnimate = true;
							config4.waveRise = false;
							config4.waveHeightScaling = false;
							config4.waveOffset = 0.25;
							config4.textSize = 0.75;
							config4.waveCount = 3;
							var gauge5 = loadLiquidFillGauge("fillgauge5",
									"${result.getScore()}", config4);
						</script>
					</c:if>

					<c:if test="${result.getScore()>=0}">

						<svg id="fillgauge5" width="100%" height="100%";"></svg>

						<script language="JavaScript">
							var config4 = liquidFillGaugeDefaultSettings();
							config4.circleThickness = 0.15;
							config4.circleColor = "#178BCA";
							config4.textColor = "#045681";
							config4.waveTextColor = "#A4DBf8";
							config4.waveColor = "#178BCA";
							config4.textVertPosition = 0.8;
							config4.waveAnimateTime = 1000;
							config4.waveHeight = 0.05;
							config4.waveAnimate = true;
							config4.waveRise = false;
							config4.waveHeightScaling = false;
							config4.waveOffset = 0.25;
							config4.textSize = 0.75;
							config4.waveCount = 3;
							var gauge5 = loadLiquidFillGauge("fillgauge5",
									"${result.getScore()}", config4);
						</script>

					</c:if>

				</div>



				<div id="middle1">

					<div
						style="text-align: left; margin-left: 30px; margin-right: 30px;">
						<h3>
							<br> Good Food

							<p id="good">
								<c:forEach var="good_food" items="${result.getGoodfoods()}">
									<a
										href=https://search.naver.com/search.naver?where=nexearch&query=${good_food}&sm=top_hty&fbm=1&ie=utf8>#${good_food}</a>
								</c:forEach>
							</p>



							Bad Food
							<p id="bad">
								<c:forEach var="bad_food" items="${result.getBadfoods()}">
									<a
										href=https://search.naver.com/search.naver?where=nexearch&query=${bad_food}&sm=top_hty&fbm=1&ie=utf8>#${bad_food}</a>
								</c:forEach>
							</p>
						</h3>

					</div>
					<div
						style="font-weight: normal; font-size: 1em; border-style: double; width: 650px; text-align: left">
						<b>※궁합도 기준※</b><br> 80점~100점 : 궁합이 매우 좋음. 섭취 적극 권장(약품 효과 극대화)<br>
						40점~70점 : 궁합이 좋음. 섭취 권장<br> 10점~30점 : 약품 효과와 큰 관계가 없지만 긍정적인
						관계의 궁합.<br> -40점~-10점 : 좋지 않은 궁합. 섭취 권장하지 않음.<br>
						-60점~-100점 : 궁합이 매우 좋지 않음. 섭취 제한(부작용 발생 위험)
					</div>

				</div>

				<br>
			</center>

		</div>


	</center>
</body>
</html>