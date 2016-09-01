<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<%--@ taglib prefix="jk" uri="/WEB-INF/tlds/taglib.tld" --%>
<%@ taglib prefix="jk2" tagdir="/WEB-INF/tags" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
	    <div class="row">
	        <div class="col-md-6 pc">
	            <h2><fmt:message key="BOARD_LIST"/></h2>
	        </div>
	        <div class="col-md-6">
	            <ol class="breadcrumb">
	                <li><fmt:message key="BOARD"/></li>
	                <li class="active"><fmt:message key="BOARD_LIST"/></li>
	            </ol>
	        </div>
	    </div>
    </div>

	<div class="content">
	    <table class="table table-bordered">
		<thead>
		<tr>
			<td><fmt:message key="NO"/></td>
			<td class="pc"><fmt:message key="BOARD_ID"/></td>
			<td><fmt:message key="WRITER"/></td>
			<td><fmt:message key="SUBJECT"/></td>
			<td class="pc"><fmt:message key="READ_COUNT"/></td>
		</tr>
		</thead>
		<c:set var="seq" value="0" scope="page" />
		<c:forEach var="board" items="${boardList}">
		<tr>
			<c:set var="seq" value="${seq + 1}" scope="page"/>
			<td class="pc">${seq}</td>
			<td>${board.bbsno}</td>
			<td>${board.name}</td>
			<td>
			<jk2:reply replynum="${board.replynumber}" replystep="${board.replystep}"/>
			<a href='<c:url value="/board/view.do?bbsno=${board.bbsno}&page=${page}"/>'>
			${board.subject}</a>
			</td>
			<td class="pc">${board.readcount}</td>
		</tr>
		</c:forEach>
		</table>
		<nav class=.center><ul class="pagination"><li><jk2:paging totalPageCount="${totalPageCount}" nowPage="${page}"/></li></ul></nav>
		<div align="right"><a href='<c:url value="/board/write.do"/>'><button type="button" class="btn btn-info"><fmt:message key="WRITE_NEW_ARTICLE"/></button></a></div><p>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
