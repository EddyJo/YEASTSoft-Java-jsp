<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />

<style>
@import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css');
li{
	font-size: 15px;
	font-weight: bold;
	font-family: 'nanumgothic';
}
</style>

<!-- HEADER -->
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="<c:url value='/forward.do?url=/menu/intro.jsp'/>">HOME</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">


				<li><a
					href='<c:url value="/forward.do?url=/menu/aboutus.jsp"/>'>소개</a></li>
				<li class="dropdown"><a href='<c:url value="/"/>'
					class="dropdown-toggle" data-toggle="dropdown">검색이력 조회</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value='/searchId.do'/>">개인검색이력 조회</a>
						<c:if test="${sessionScope.userid eq 'admin'}">
							<li><a href="<c:url value='/searchAll.do'/>">모든 검색이력 조회</a>
						</c:if>
					</ul></li>
								
				<li class="dropdown"><a href='<c:url value="/"/>'
					class="dropdown-toggle" data-toggle="dropdown">통계분석</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value='/showmedfrequency.do'/>">약품검색 통계분석</a>
						<li><a href="<c:url value='/showfoodfrequency.do'/>">식품검색 통계분석</a>
						<li><a href="<c:url value='/showlocationfrequency.do'/>">지역별검색 통계분석</a>
						<li><a href="<c:url value='/forward.do?url=/chart/mcountperlocchart.jsp'/>">식품,약품별 지역통계분석</a>
					</ul></li>
				
				<li class="dropdown"><a href='<c:url value="/"/>'
					class="dropdown-toggle" data-toggle="dropdown">마이페이지</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value='/member/mypage.do'/>">마이페이지</a>
						<li><a href="<c:url value='/member/update.do'/>">개인정보수정</a>
						<li><a href="<c:url value='/member/delete.do'/>">회원탈퇴</a>
						<li><a href="<c:url value='/member/logout.do'/>">로그아웃</a>
						<li><a href="<c:url value='/member/insert.do'/>">회원가입</a>
					</ul></li>

				<c:if test="${sessionScope.userid eq 'admin'}">
					<li class="dropdown"><a href='<c:url value="/"/>'
						class="dropdown-toggle" data-toggle="dropdown">관리자메뉴</a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/insertmedinfo.do'/>">약품 DB추가</a>
							<li><a href="<c:url value='/insertFoodInfo.do'/>">식품 DB추가</a>
							<li><a href="<c:url value='/searchlogselect.do'/>">유저 로그 관리</a>
						</ul></li>
				</c:if>
				<li><div style="margin-top: 10px;">
						<c:if test="${empty userid}">

							<a href="<c:url value='/member/login.do'/>"
								class="btn btn-danger">Sign In</a>
						</c:if>
						<c:if test="${!empty userid}">

							<a href="<c:url value='/forward.do?url=/member/login.jsp'/>"
								class="btn btn-danger">My Info</a>
						</c:if>
					</div></li>

			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>


