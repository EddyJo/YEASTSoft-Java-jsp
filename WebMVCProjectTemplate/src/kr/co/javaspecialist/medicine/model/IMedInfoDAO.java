package kr.co.javaspecialist.medicine.model;

import java.util.Collection;

import kr.co.javaspecialist.board.model.BoardVO;

public interface IMedInfoDAO {
	void insertMedInfo(MedInfoVO medinfo);
	Collection<MedInfoVO> selectMedList();
//	BoardVO selectArticle(int bbsno);
//	void updateReadCount(int bbsno);
//	int selectTotalArticleCount();
//	void updateArticle(BoardVO board);
//	void deleteArticle(int bbsno, int replynumber);
}
