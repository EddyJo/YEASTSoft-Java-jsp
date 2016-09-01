<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1>
<fmt:setLocale value="en_US"/>
<c:forEach var="emp" items="${emps}">
<tr>
	<td>${emp.employeeId}</td>
	<td>${emp.firstName}, ${emp.lastName}</td>
	<td>${emp.email}</td>
	<td>${emp.phoneNumber}</td>
	<td><fmt:formatDate value="${emp.hireDate}" pattern="YYYY년 MM월 dd일"/></td>
	<td>${emp.jobId}</td>
	<td><fmt:formatNumber value="${emp.salary}" type="currency"/></td>
	<td><fmt:formatNumber value="${emp.commissionPct}" type="percent"/></td>
	<td>${emp.managerId}</td>
	<td>${emp.departmentId}</td>
</tr>
</c:forEach>
</table>
</body>
</html>







