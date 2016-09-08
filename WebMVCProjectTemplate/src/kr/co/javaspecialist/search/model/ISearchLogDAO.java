package kr.co.javaspecialist.search.model;

import java.util.Collection;

import kr.co.javaspecialist.search.model.SearchLogChartVO;
import kr.co.javaspecialist.search.model.SearchLogVO;

public interface ISearchLogDAO {
	
	void insertLog(SearchLogVO searchlog);
	Collection<SearchLogVO> selectUserId(String userId);
	Collection<SearchLogVO> selectAllList();
	String searchLogDelete(String userId);
	SearchLogVO getSearchLogDetails(String userId);
	Collection<SearchLogChartVO> getFrequencyGroupingbyMedcine();
	Collection<SearchLogFoodChartVO> getFreqeuncyGroupingbyFood();
}
