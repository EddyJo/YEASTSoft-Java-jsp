<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
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
                <h2><fmt:message key="SEARCH"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="BOARD"/></li>
                    <li class="active"><fmt:message key="SEARCH"/></li>
                </ol>
            </div>
        </div>
    </div>
<div class="content">
<fmt:message key="NO" var="bbsno"/>
<fmt:message key="WRITER" var="name"/>
<fmt:message key="SUBJECT" var="subject"/>
<fmt:message key="READ_COUNT" var="readcount"/>

<datatables:table id="boardList" data="${boardList}" row="board" theme="jqueryui" cssClass="table table-striped" pageable="true" export="pdf">
	<datatables:column title="${bbsno}" property="bbsno" sortInitDirection="desc"/>
	<datatables:column title="${name}" cssClass="pc" cssCellClass="pc" property="name"/>
	<datatables:column title="${subject}">
		<a href='<c:url value="/board/view.do?bbsno=${board.bbsno}"/>'>${board.subject}</a>
	</datatables:column>
	<datatables:column title="${readcount}" property="readcount" cssClass="pc" cssCellClass="pc"/>
	<datatables:export type="pdf" cssClass="btn pc" cssStyle="height: 25px;" />
	<datatables:export type="xls" cssClass="btn pc" cssStyle="height: 25px;" />
	<datatables:export type="csv" cssClass="btn pc" cssStyle="height: 25px;" />
</datatables:table>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>