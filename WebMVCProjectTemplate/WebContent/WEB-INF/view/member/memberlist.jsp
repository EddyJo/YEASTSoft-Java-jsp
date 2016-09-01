<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
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
                <h2><a href="<c:url value='#'/>">Member</a></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Member</li>
                    <li class="active"><a href="<c:url value='#'/>">List</a></li>
                </ol>
            </div>
        </div>
    </div>
<div class="content">
  <datatables:table id="member" data="${members}" row="member" theme="bootstrap3" cssClass="table table-striped" pageable="true" export="csv">
	 <datatables:column title="USERID" cssStyle="width: 150px;" display="html">
	    <c:out value="${member.userid}"/>
	 </datatables:column>
	 <datatables:column title="NAME" property="name" cssStyle="width: 200px;"/>
	 <datatables:column title="PHONE" property="phone"/>
	 <datatables:column cssClass="pc" cssCellClass="pc" title="ADDRESS" property="address"/>
	 <datatables:export type="csv" cssClass="btn pc" cssStyle="height: 25px;" />
  </datatables:table>
</div>
</div>
<%--
<c:forEach var="emp" items="${empList}">
${emp.empno}, ${emp.ename}, ${emp.job}<br>
</c:forEach>
 --%>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>

