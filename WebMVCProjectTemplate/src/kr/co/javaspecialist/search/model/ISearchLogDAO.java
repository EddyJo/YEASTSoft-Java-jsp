package kr.co.javaspecialist.search.model;

import java.util.Collection;

import kr.co.javaspecialist.search.model.SearchMedLogChartVO;
import kr.co.javaspecialist.search.model.SearchLogVO;

public interface ISearchLogDAO {
	
	void insertLog(SearchLogVO searchlog);
	Collection<SearchLogVO> selectUserId(String userId);

	SearchLogVO getSearchLogDetails(String userId);
	Collection<SearchMedLogChartVO> getFrequencyGroupingbyMedcine();
	Collection<SearchFoodLogChartVO> getFrequencyGroupingbyFood();
	Collection<MemberLocationChartVO> getFrequencyGroupingbyLocation();
	Collection<MedLocationChartVO> getMedCountGroupingbyLocation(String medName);
	Collection<FoodLocationChartVO> getFoodCountGroupingbyLocation(String foodName);
	Collection<MedTopChartVO> getTop10Medicine();
	Collection<GenderVO> getGendertop10(String gender);
}
