package kr.co.javaspecialist.board.web;

import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.model.BoardDAO;
import kr.co.javaspecialist.board.model.BoardVO;

@WebServlet("/board")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BoardDAO dao;
	String contextPath;

	public void init(ServletConfig config) throws ServletException {
		dao = new BoardDAO();
		contextPath = config.getServletContext().getContextPath();
		if(contextPath == null) contextPath = "";
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			
			String pageStr = request.getParameter("page");
			int page = 1;
			if(pageStr != null && !pageStr.equals("")) {
				page = Integer.parseInt(pageStr);
			}
			request.setAttribute("page", page);
			
			if(path.equals("write")) {
				//nothing
			}else if(path.equals("reply")) {
//				int bbsno = Integer.parseInt(request.getParameter("reply"));
//				BoardVO board = dao.selectArticle(bbsno);
//				board.setName("");
//				board.setEmail("");
//				board.setSubject("[Re]"+board.getSubject());
//				board.setContent("\n\n\n----------\n" + board.getContent());
//				request.setAttribute("board", board);
//				request.setAttribute("next", "reply");
			}else if(path.equals("update")) {
//				String bbsnoStr = request.getParameter("update");
//				int bbsno = 0;
//				if(bbsnoStr != null) {
//					bbsno = Integer.parseInt(bbsnoStr);
//					BoardVO board = dao.selectArticle(bbsno);
//					request.setAttribute("board", board);
//					request.setAttribute("next", "update");
//				}else {
//					request.setAttribute("message", "게시글번호가 없습니다.");
//					path = "error";
//				}
			} else if("delete".equals(path)) {
//				String bbsno = request.getParameter("delete");
//				String replynumber = request.getParameter("replynumber");
//				request.setAttribute("bbsno", bbsno);
//				request.setAttribute("replynumber", replynumber);
//				request.setAttribute("next", "delete_do");
			} else if("list".equals(path)) {
//				Collection<BoardVO> boardList = dao.selectArticleList(page, 10);
//				request.setAttribute("boardList", boardList);
//
//				// paging start
//				int bbsCount = dao.selectTotalArticleCount();
//				int totalPage = 0;
//				if(bbsCount > 0) {
//					totalPage= bbsCount/10;
//				}
//				if( (bbsCount % 10) != 0 || totalPage==0 ) {
//					totalPage = totalPage+1;
//				}
//				request.setAttribute("totalPageCount", totalPage);
//				request.setAttribute("page", page);
			} else if("view".equals(path)) {
//				String bbsnoStr = request.getParameter("view");
//				int bbsno = 1;
//				if(bbsnoStr != null) {
//					bbsno = Integer.parseInt(bbsnoStr);
//				}
//				dao.updateReadCount(bbsno);
//				BoardVO board = dao.selectArticle(bbsno);
//				if(board.getContent() != null) {
//					board.setContent(board.getContent().replaceAll("\n", "<br>"));
//				}
//				request.setAttribute("board", board);
			} else {
				request.setAttribute("message", "잘못된 명령.");
				path = "error";
			}
		}else {
			Collection<BoardVO> boardList = dao.selectArticleList();
			request.setAttribute("boardList", boardList);
			path = "list"; 
		}
		
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/board/" + path + ".jsp");
		disp.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		
		String pageStr = request.getParameter("page");
		int page = 1;
		if(pageStr != null && !pageStr.equals("")) {
			page = Integer.parseInt(pageStr);
		}
		request.setAttribute("page", page);
		
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			if("write".equals(path)) {
//				String name = request.getParameter("name");
//				String email = request.getParameter("email");
//				String subject = request.getParameter("subject");
//				String content = request.getParameter("content");
//				String password = request.getParameter("password");
//				BoardVO board = new BoardVO();
//				board.setName(name);
//				board.setEmail(email);
//				board.setSubject(subject);
//				board.setContent(content);
//				board.setPassword(password);
//				dao.insertArticle(board);
//				String url = contextPath + "/board?list";
//				response.sendRedirect(response.encodeRedirectURL(url));
//				return;
			} else if("reply".equals(path)) {
//				String name = request.getParameter("name");
//				String email = request.getParameter("email");
//				String subject = request.getParameter("subject");
//				String content = request.getParameter("content");
//				String password = request.getParameter("password");
//				int masterid = Integer.parseInt(request.getParameter("masterid"));
//				int replynumber = Integer.parseInt(request.getParameter("replynumber"));
//				int replystep = Integer.parseInt(request.getParameter("replystep"));
//				
//				BoardVO board = new BoardVO();
//				board.setName(name);
//				board.setEmail(email);
//				board.setSubject(subject);
//				board.setContent(content);
//				board.setPassword(password);
//				board.setMasterid(masterid);
//				board.setReplynumber(replynumber);
//				board.setReplystep(replystep);
//				
//				dao.replyArticle(board);
//				
//				response.sendRedirect(response.encodeRedirectURL(contextPath + "/board?list&page="+page));
//				return;
			} else if("update".equals(path)) {
//				String password = request.getParameter("password");
//				String bbsnoStr = request.getParameter("bbsno");
//				int bbsno = Integer.parseInt(bbsnoStr);
//				String dbpw = dao.getPassword(bbsno);
//				if(dbpw.equals(password)) {
//					BoardVO board = new BoardVO();
//					board.setBbsno(bbsno);
//					board.setName(request.getParameter("name"));
//					board.setEmail(request.getParameter("email"));
//					board.setSubject(request.getParameter("subject"));
//					board.setContent(request.getParameter("content"));
//					dao.updateArticle(board);
//					String url = contextPath + "/board?view="+bbsno + "&page="+page;
//					response.sendRedirect(response.encodeRedirectURL(url));
//					return;
//				}else {
//					request.setAttribute("message", "비밀번호가 다릅니다. 수정되지 않았습니다.");
//					path = "error";
//				}
			} else if("delete".equals(path)) {
//				String bbsnoStr = request.getParameter("delete");
//				int bbsno = Integer.parseInt(bbsnoStr);
//				String replynumberStr = request.getParameter("replynumber");
//				int replynumber =0 ;
//				if(replynumberStr != null && !replynumberStr.equals("")) {
//					replynumber = Integer.parseInt(replynumberStr);
//				}
//				String password = request.getParameter("password");
//				String dbpw = dao.getPassword(bbsno);
//				if(dbpw.equals(password)) {
//					dao.deleteArticle(bbsno, replynumber);
//					String url = contextPath + "/board?list" + "&page="+page;
//					response.sendRedirect(response.encodeRedirectURL(url));
//					return;
//				}else {
//					request.setAttribute("message", "비밀번호가 다릅니다. 삭제되지 않았습니다.");
//					path = "error";
//				}
			} else {
				request.setAttribute("message", "잘못된 명령입니다.");
				path = "error";
			}
		}else {
			request.setAttribute("message", "명령어가 존재하지 않습니다.");
			path = "error";
		}
		
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/board/" + path + ".jsp");
		disp.forward(request, response);
	}

}

