package kr.co.javaspecialist.board.model;

import java.util.Collection;

public interface IBoardDAO {
	void insertArticle(BoardVO board);
	Collection<BoardVO> selectArticleList(int page, int maxno);
	Collection<BoardVO> selectArticleList();
	BoardVO selectArticle(int bbsno);
	void updateReadCount(int bbsno);
	int selectTotalArticleCount();
	void replyArticle(BoardVO board);
	String getPassword(int bbsno);
	void updateArticle(BoardVO board);
	void deleteArticle(int bbsno, int replynumber);
	Collection<BoardVO> searchListByContentKeyword(String keyword);
}
