<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- FOOTER -->
<footer>
	<div class="row">
		<div class="col-lg-12">
			<p>Copyright &copy; YEASTsoft project 2016</p>
		</div>
	</div>
	<div class="col-md-3">
		<div class="col">
			<h4>Contact us</h4>
			<ul>
				<li>서울특별시</li>
				<li>Phone: <%= application.getInitParameter("phone")%>
				</li>
				<li>Email: <a href="mailto:${initParam.email}" title="Email Us">${initParam.email}</a></li>
			</ul>
		</div>
	</div>

	<div class="col-md-3">
		<div class="col">
			<h4>About us</h4>
			<p class="no-margin">
				데이터 사이언티스트 양성과정 1차 프로젝트
			 <a href="#" class="btn btn-block btn-base btn-icon fa-check">
			 <span>Try it now</span></a>
			</p>
		</div>
	</div>
</footer>


<%
	application.log(new java.util.Date().toString() + " : " + 
					request.getRemoteAddr() + " : " +
					request.getRequestURI());
%>