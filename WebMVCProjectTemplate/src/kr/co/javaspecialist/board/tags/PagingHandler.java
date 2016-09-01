package kr.co.javaspecialist.board.tags;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

public class PagingHandler extends TagSupport {
	private static final long serialVersionUID = 1L;
	private String total;
	private String now;
	public void setTotal(String total){
		this.total = total;
	}
	public void setNow(String now) {
		this.now = now;
	}
	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();
		Integer tempTotalPageCount = (Integer)pageContext.getAttribute(total, PageContext.REQUEST_SCOPE);
		if(tempTotalPageCount==null) tempTotalPageCount=new Integer(1);
		Integer tempNowPage = (Integer)pageContext.getAttribute(now, PageContext.REQUEST_SCOPE);
		if(tempNowPage==null) tempNowPage=new Integer(1);
		int totalPageCount = tempTotalPageCount.intValue();
		int nowPage = tempNowPage.intValue();
		int totalPageBlock = (int)(Math.ceil(totalPageCount/10.0));
		int nowPageBlock = (int) Math.ceil(nowPage/10.0);
		int startPage = (nowPageBlock-1)*10 + 1;
		int endPage = 0;
		String contextPath = pageContext.getServletContext().getContextPath();
		
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
		try {
			if(nowPageBlock>1) {
				out.print("<A HREF=\"" + contextPath + "/board/list.do?bbsno=" + (startPage-1) + "\">");
				out.print("◀</A>");
			}
			for(int i=startPage; i<=endPage; i++) {
				out.print(" ");
				out.print("<A HREF=\"" + contextPath + "/board?/list.do?bbsno=" + (i) + "\">");
				out.print(i);
				out.print("</A> ");
			} 
			if(nowPageBlock<totalPageBlock) {
				out.print("<A HREF=\"" + contextPath + "board/list.do?bbsno=" + (endPage+1) + "\">");
				out.print("▶</A>");
			}
		} catch (IOException ioe) {
			throw new JspException(ioe);
		}
		return SKIP_BODY;
	}//end doStartTag() method
}//end PagingHandler class
