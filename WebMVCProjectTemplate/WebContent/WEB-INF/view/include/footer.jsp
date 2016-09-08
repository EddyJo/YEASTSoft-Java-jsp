<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
#footer_wrap {
	color: #FFFFFF;
	float: left;
	background: #003399;
	width: 100%;
	height: 150px;
	text-align: center;
}

.footer_box {
	width: 100%;
	margin: 0 auto;
}

.footer_box ul {
	float: left;
	width: 100%;
	margin: 20px auto 50px auto;
	padding-top: 30px;
	text-align: center; 
}

.footer_box ul li {
	display: inline-block;
	padding: 0 20px;
	text-align: center;
	no-repeat
	100%
	50%;
}

.footer_box ul .last {
	background: none;
}
</style>
<meta name="viewport"  content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
<!-- FOOTER -->
<footer>
	<div id="footer_wrap">
		<div class="footer_box">
			<ul>
				<li><a href="#">회사소개</a></li>
				<li><a href="#">개인정보취급방침</a></li>
				<li><a href="#">찾아오시는길</a></li>
				<li class="last"><a href="#">사이트맵</a></li>
				<br>
				<br>
				<li>yeastsoft@yeastsoft.com</li>
			</ul>
		</div>
	</div>

</footer>


<%
	application
			.log(new java.util.Date().toString() + " : "
					+ request.getRemoteAddr() + " : "
					+ request.getRequestURI());
%>