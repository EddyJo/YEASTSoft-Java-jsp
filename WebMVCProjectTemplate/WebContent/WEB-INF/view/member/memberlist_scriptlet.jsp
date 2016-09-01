
<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ page import="kr.co.javaspecialist.member.model.MemberVO"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
<div class="content">
<h1>회원 전체 정보</h1>
<%
//자바코드를 입력, scriptlet
//JSP파일은 웹디자이너가 담당, 그래서 scriptlet코드는 되도록이면 지양
//JSTL, EL등을 이용하면 scriptlet코드들을 없앨 수 있다.
//JSP 내장객체(묵시적 객체) : 객체를 생성하지 않아도
//JSP 코드(scriptlet) 내에서 사용할 수 있는 객체들 9개
//application, request, response, session, out, page, pageContext
//config, exception
//request객체는 서블릿의 HttpServletRequest 타입 객체와 동일한 객체
ArrayList<MemberVO> members = (ArrayList<MemberVO>)request.getAttribute("members");
/*
for(MemberVO member : members) {//enhanced for문, for each문
	out.println(member.getUserid());
	out.println(member.getName());
	out.println(member.getPassword());
	out.println(member.getPhone());
	out.println(member.getAddress());
	out.println("<br>");
}
*/
%>
<table border="1" width="800">
<tr>
	<th>아이디</th><th>이름</th><!-- th>비밀번호</th--><th>전화번호</th><th>주소</th>
</tr>
<% //scriptlet
for(MemberVO member : members) {
%>
<tr>
	<td><%=member.getUserid()%></td>
	<td><%=member.getName()%></td>
	<%-- <td><%=member.getPassword()%></td>--%>
	<td><%=member.getPhone()%></td>
	<td><%=member.getEmail()%></td>
</tr>
<%
}
%>
</table>
</div></div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>