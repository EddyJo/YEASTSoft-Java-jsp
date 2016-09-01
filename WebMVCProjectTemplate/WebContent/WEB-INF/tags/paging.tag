<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag body-content="empty" %>
<%@ attribute name="totalPageCount" type="java.lang.Integer" required="true"%>
<%@ attribute name="nowPage" type="java.lang.Integer" required="true"%>
<%
int totalPageBlock = (int)(Math.ceil(totalPageCount/10.0));
int nowPageBlock = (int) Math.ceil(nowPage/10.0);
int startPage = (nowPageBlock-1)*10 + 1;
int endPage = 0;
String contextPath = application.getContextPath();

if(contextPath == null || contextPath.trim().equals("")) {
	contextPath = "";
}else {
	//contextPath = "/"+contextPath;
}
if(totalPageCount > nowPageBlock*10) {
	endPage = nowPageBlock*10;
}else {
	endPage = totalPageCount;
} 

if(nowPageBlock>1) {
	out.print("<A HREF=\"" + contextPath + "/board/list.do?page=" + (startPage-1) + "\">");
	out.print("◀</A>");
}
for(int i=startPage; i<=endPage; i++) {
	out.print(" ");
	out.print("<A HREF=\"" + contextPath + "/board/list.do?page=" + (i) + "\">");
	out.print(i);
	out.print("</A> ");
} 
if(nowPageBlock<totalPageBlock) {
	out.print("<A HREF=\"" + contextPath + "/board/list.do?page=" + (endPage+1) + "\">");
	out.print("▶</A>");
}
%>