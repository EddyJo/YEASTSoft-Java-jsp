<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2><fmt:message key="HOME"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="DASHBOARD"/></li>
                    <li class="active"><fmt:message key="HOME"/></li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
	<h3><fmt:message key="WELCOME_MESSAGE"/></h3>

	<div class="row">
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Java</h3>
			<ul>
				<li>Java Programming
				<li>Java Window Programming 
				<li>JDBC Programming
				<li>Servlet/JSP Web Programming
				<li>Spring Framework
				<li>MyBatis Framework
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>BigData</h3>
			<ul>
				<li>Hadoop
				<li>R Analytics/Visualization 
				<li>NoSQL
				<li>BigData Analytics
				<li>Host Virtualization
				<li>Cloud Computing
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Mobile, Web</h3>
			<ul>
				<li>Android
				<li>Hybrid Mobile App 
				<li>HTML5, Web Standard
				<li>CSS3
				<li>JavaScript, JQuery
				<li>Responsive Web
			</ul>
			</div>
		</div>
		</div>
	</div>
	<div class="alert alert-info">
		<ol>
			<li><a href="http://cafe.naver.com/javaspecialistgroup.cafe" class="alert-link pc" target="_blank"><fmt:message key="NAVER_CAFE_MESSAGE"/></a>
		</ol>
	</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>