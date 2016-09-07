package kr.co.javaspecialist.search.model;

import java.util.Collection;

public interface ISearchLogDAO {
	
	void insertLog(SearchLogVO searchlog);
	Collection<SearchLogVO> selectUserId(String userId);
	Collection<SearchLogVO> selectAllList();
	void searchLogDelete(String userId);
	SearchLogVO getSearchLogDetails(String userId);
	
}