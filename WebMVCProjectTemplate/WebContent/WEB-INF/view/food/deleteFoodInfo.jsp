<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />


<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
	

	<div class="featurette" id="services" style="height: 700px;">
		
		<h1 class="featurette-heading" style="margin-top: 300px;">실행 결과</h1>
		<h2>
			<span class="text-muted"> 식품 정보가 삭제되었습니다</span>
		</h2>
		<p class="lead">${result}</p>
	</div>
	
	<div class="content" style="text-align: center;">
		<table border=1>
			<tr>
				<th>Food Key</th>
				<th>Search Date</th>
			</tr>
			<c:forEach var="log" items="${logListByUserId}">
				<tr>
					<td>${log.foodKey}</td>
					<td>${log.searchDate}</td>
				</tr>
			</c:forEach>
		</table>
	</div>		


	
	
	
<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>