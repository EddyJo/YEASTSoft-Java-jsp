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
                <h2>사원정보</h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>사원정보</li>
                    <li class="active">사원정보조회</li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
		${message}
		<%-- EL이용 --%>
		<h1>Employees Information</h1>
		사원번호 : ${emp.employeeId}<br>
		이름 : ${emp.firstName} ${emp.lastName}<br>
		이메일 : ${emp.email}<br>
		전화번호 : ${emp.phoneNumber}<br>
		잡아이디 : ${emp.jobId}<br>
		급여 : ${emp.salary}<br>
		보너스율 : ${emp.commissionPct}<br>
		매니저 : ${emp.managerId}<br>
		부서번호 : ${emp.departmentId}<br>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>