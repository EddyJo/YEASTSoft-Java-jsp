<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


</head>

<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
	
	<div class="content" style="text-align: center;">
		<table border=1>
			<tr>
				<th>NO</th>
				<th>User ID</th>
				<th>Med Key</th>
				<th>Food Key</th>
				<th>Search Date</th>
			</tr>
			<c:forEach var="alog" items="${allList}">
				<tr>
					<td>${alog.serialNum}</td>
					<td>${alog.userId}</td>
					<td>${alog.medKey}</td>
					<td>${alog.searchDate}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div class="content" style="width: 500px; height: 300px; margin: auto;">
		<form action="<c:url value='insertmedinfo.do'/>" method="post"
			class="form-horizontal">

			<label class="control-label col-sm-2" for="name"></label>
			<div class="featurette">
				<h1 class="featurette-heading">약품 정보 입력</h1>
				<h2>
					<span class="text-muted">DB에 추가할 약품명과 해당하는 질병명을 입력하세요</span>
				</h2>
				<br> <input type="text" name="medname" id="name"
					class="form-control" placeholder="약품명을 입력하세요"><br> <input
					type="text" name="disease" id="name" class="form-control"
					placeholder=" 질병명을 입력하세요">
			</div>
			<br>
			<center>
				<button type="submit" class="btn btn-primary btn-lg active">저장</button>
			</center>

		</form>
		
		<form action="<c:url value='fooddelete.do'/>" method="post"
			class="form-horizontal">
			<br> <input type="text" name="foodName" id="name" class="form-control" placeholder="식품명을 입력하세요"> <br>
			<center>
				<button type="submit" class="btn btn-primary btn-lg active">삭제</button>
			</center>
		</form>
		
		<div class="featurette" id="services" style="height: 700px;">
		
		<h1 class="featurette-heading" style="margin-top: 300px;">실행 결과</h1>
		<h2>
			<span class="text-muted"> 약품 정보가 삭제되었습니다</span>
		</h2>
		<p class="lead">${result}</p>
		
	</div>
	</div>



<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>