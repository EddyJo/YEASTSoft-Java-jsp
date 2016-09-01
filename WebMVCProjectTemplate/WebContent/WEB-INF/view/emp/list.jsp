<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/emp" />
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
                <h2><fmt:message key="EMP_LIST"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="EMP_TEST"/></li>
                    <li class="active"><fmt:message key="EMP_LIST"/></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content">
    	<table class="table table-bordered">
    		<tr>
    			<td><fmt:message key="EMPNO"/></td>
    			<td><fmt:message key="ENAME"/></td>
    			<td><fmt:message key="JOB"/></td>
    			<td><fmt:message key="MANAGER"/></td>
    			<td><fmt:message key="HIREDATE"/></td>
    			<td><fmt:message key="SAL"/></td>
    			<td><fmt:message key="COMM"/></td>
    			<td><fmt:message key="DEPTNO"/></td>
    			<td><fmt:message key="DELETE"/></td>
    		</tr>
    		<c:forEach var="emp" items="${empList}">
    		<tr>
    			<td><a href="<c:url value='/emp/update.do?empno=${emp.empno}'/>">${emp.empno}</a></td>
    			<td>${emp.ename}</td>
    			<td>${emp.job}</td>
    			<td>${emp.mgr}</td>
    			<td>${emp.hiredate}</td>
    			<td>${emp.sal}</td>
    			<td>${emp.comm}</td>
    			<td>${emp.deptno}</td>
    			<td><a href="<c:url value='/emp/delete.do?empno=${emp.empno}'/>">DELETE</a></td>
    		</tr>
    		</c:forEach>
    	</table>
    </div>
	<%--div class="content">
		<fmt:message key="EMPNO" var="empno"/>
		<fmt:message key="DEPTNO" var="deptno"/>
		<fmt:message key="ENAME" var="ename"/>
		<fmt:message key="JOB" var="job"/>
		<fmt:message key="MANAGER" var="manager"/>
		<fmt:message key="HIREDATE" var="hiredate"/>
		<fmt:message key="SAL" var="salary"/>
		<fmt:message key="COMM" var="commission"/>
		<fmt:message key="DELETE" var="delete"/>
		<datatables:table id="emps" data="${empList}" row="emp" theme="bootstrap3" cssClass="table table-striped" pageable="true" export="pdf">
			<datatables:column title="${empno}" sortInitDirection="desc" display="html">
			   <a href="<c:url value='/emp/update.do?empno=${emp.empno}'/>"><c:out value="${emp.empno}"/></a>
			</datatables:column>
			<datatables:column title="${ename}" property="ename"/>
			<datatables:column title="${job}" property="job"/>
			<datatables:column title="${manager}" property="mgr" cssClass="pc" cssCellClass="pc"/>
			<datatables:column title="${hiredate}" property="hiredate" cssClass="pc" cssCellClass="pc"/>
			<datatables:column title="${salary}" property="sal" cssClass="pc" cssCellClass="pc"/>
			<datatables:column title="${commission}" property="comm" cssClass="pc" cssCellClass="pc"/>
			<datatables:column title="${deptno}" property="deptno" cssClass="pc" cssCellClass="pc" cssStyle="text-align: center;"/>
			<datatables:column title="${delete}" cssClass="pc" cssCellClass="pc">
			   <a href="<c:url value='/emp/delete.do?empno=${emp.empno}'/>">${delete}</a>
			</datatables:column>
			<datatables:export type="pdf" cssClass="btn pc" cssStyle="height: 25px;" />
			<datatables:export type="xls" cssClass="btn pc" cssStyle="height: 25px;" />
			<datatables:export type="csv" cssClass="btn pc" cssStyle="height: 25px;" />
		</datatables:table>
	</div--%>
</div>
<%--
<c:forEach var="emp" items="${empList}">
${emp.empno}, ${emp.ename}, ${emp.job}<br>
</c:forEach>
 --%>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>