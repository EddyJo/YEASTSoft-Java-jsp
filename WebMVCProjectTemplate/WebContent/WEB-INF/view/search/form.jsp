<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<style>
div.form-group {
   margin: 0px;
   width: 1140px;
   height: 100px;
}

.text-placeholder {
   text-align: center;
}

</style>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>YEASTsoft - 약빵 template</title>



<!-- Custom CSS -->
<link href="css/one-page-wonder.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->   


   <!-- Full Width Image Header -->
   <header class="header-image">
   <div class="headline">
      <div class="container">
         <h1>세상을 바꾸는 약빵</h1>
         <h2>식품과 약품의 궁합 정보</h2>
      </div>
   </div>
   </header>


<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
   
   
   <!-- Page Content -->
   <div class="container" align=center style="height: 525px;">
      <hr class="featurette-divider">
      <!-- First Featurette -->
      <form action="<c:url value='search.do'/>" method="post"
         class="form-horizontal" style="height: 300px;">
         <div class="form-group">

            <input type="text" class="searchname" name="foodKey"
               style="width: 300px; height: 70px;" placeholder="식품명을 입력하세요""><br>
            <br> <input type="text" class="searchname" name="medKey"
               style="width: 300px; height: 70px;" placeholder="약품명을 입력하세요"><br>
            <br>
            <button type="submit" class="btn btn-primary btn-lg active">궁합
               검색</button>
         </div>
      </form>
   </div>

   <jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>