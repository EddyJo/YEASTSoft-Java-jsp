<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<style>
div.form-group {
	margin: 0px;
	width: 1140px;
	height: 128px;
}

.text-placeholder {
	text-align: center;
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


				<li><a href='<c:url value="/forward.do?url=/menu/aboutus.jsp"/>'>About US</a></li>
				<li><a href='<c:url value="/searchId.do"/>'>Log History</a></li>
				<li><a href='<c:url value="/emp/list.do"/>'>Trend Analysis</a></li>
				<li class="dropdown"><a href='<c:url value="/"/>'
					class="dropdown-toggle" data-toggle="dropdown">Member Service</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value='/member/login.do'/>">(메뉴5-1)<fmt:message
									key="MY_INFO" /></a>
						<li><a href="<c:url value='/member/update.do'/>">(메뉴5-2)<fmt:message
									key="UPDATE_USER_INFO" /></a>
						<li><a href="<c:url value='/member/delete.do'/>">(메뉴5-3)<fmt:message
									key="EXIT_MEMBER" /></a>
						<li><a href="<c:url value='/member/logout.do'/>">(메뉴5-4)<fmt:message
									key="SIGN_OUT" /></a>
						<li role="separator" class="divider"></li>
						<li><a href="<c:url value='/member/insert.do'/>">(메뉴5-5)<fmt:message
									key="JOIN_MEMBER" /></a>
					</ul></li>


				<c:if test="${sessionScope.userid eq 'admin'}">
					<li class="dropdown"><a href='<c:url value="/"/>'
						class="dropdown-toggle" data-toggle="dropdown">관리자메뉴</a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/insertmedinfo.do'/>">약품 DB추가</a>
							<li><a href="<c:url value='/insertFoodInfo.do'/>">식품
									DB추가</a>
						</ul></li>
				</c:if>
				<li><div style="margin-top: 10px;">
						<c:if test="${empty userid}">
							
							<a href="<c:url value='/member/login.do'/>"
								class="btn btn-danger">(로그인)<fmt:message key="SIGN_IN" /></a>
						</c:if>
						<c:if test="${!empty userid}">
							
							<a href="<c:url value='/forward.do?url=/member/login.jsp'/>"
								class="btn btn-danger"><fmt:message key="MY_INFO" /></a>
						</c:if>
					</div></li>

			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>


