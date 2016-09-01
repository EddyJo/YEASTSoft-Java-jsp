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
                <h2><fmt:message key="UPDATE_EMPLOYEE_DATA_MSG"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="EMP_TEST"/></li>
                    <li class="active"><fmt:message key="UPDATE_EMPLOYEE_DATA"/></li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">
	<form action="<c:url value='/emp/update.do'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="empno"><fmt:message key="EMPNO"/></label>
      <div class="col-sm-2">
        <input type="number" name="empno" id="empno" value="${emp.empno}" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ename"><fmt:message key="ENAME"/></label>
      <div class="col-sm-4">
        <input type="text" name="ename" id="ename" value="${emp.ename}" maxlength="10" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="job"><fmt:message key="JOB"/></label>
      <div class="col-sm-8">
        <input type="text" name="job" id="job" value="${emp.job}" maxlength="9" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="mgr"><fmt:message key="MANAGER"/></label>
      <div class="col-sm-3">
        <select name="mgr" id="mgr" class="form-control" required>
        	<option value=""><fmt:message key="SELECT_MANAGER"/></option>
        	<c:forEach var="mgr" items="${mgrList}">
        	<option value="${mgr.empno}" ${emp.mgr eq mgr.empno ? "selected" : ""}>${mgr.ename}</option>
        	</c:forEach>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="hiredate"><fmt:message key="HIREDATE"/>(YYYY-MM-DD)</label>
      <div class="col-sm-4">
        <input type="date" name="hiredate" id="hiredate" value="${emp.hiredate}" class="form-control" placeholder="2015-01-01" pattern="^\(?\d{4}\)?[-]\d{2}[-]\d{2}$" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="sal"><fmt:message key="SAL"/></label>
      <div class="col-sm-3">
        <input type="number" name="sal" id="sal" value="${emp.sal}" step="any" min="0" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="comm"><fmt:message key="COMM"/></label>
      <div class="col-sm-3">
        <input type="number" name="comm" id="comm" value="${emp.comm}" step="any" min="0" class="form-control">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="deptno"><fmt:message key="DEPTNO"/></label>
      <div class="col-sm-6">
        <select name="deptno" id="deptno" class="form-control" required>
        	<option value=""><fmt:message key="SELECT_DEPARTMENT"/></option>
        	<c:forEach var="dept" items="${deptList}">
        	<option value="${dept.deptno}" ${emp.deptno eq dept.deptno ? "selected" : ""}>${dept.dname}(${dept.loc})</option>
        	</c:forEach>
        </select>
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="<fmt:message key="UPDATE"/>">
		<input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
		</div>
	</div>
	</form>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>