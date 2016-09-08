package kr.co.javaspecialist.search.model;

import java.util.ArrayList;
import java.util.Collection;

import kr.co.javaspecialist.search.model.SearchLogChartVO;
import kr.co.javaspecialist.emp.model.AvgSalChartVO;

public interface ISearchLogDAO {
	
	void insertLog(SearchLogVO searchlog);
	Collection<SearchLogVO> selectUserId(String userId);
	Collection<SearchLogVO> selectAllList();
	String searchLogDelete(String userId);
	SearchLogVO getSearchLogDetails(String userId);
	Collection<SearchLogChartVO> getFrequencyGroupingbyMedcine();
}