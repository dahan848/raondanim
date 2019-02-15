package trip.service;

import java.util.List;
import java.util.Map;

import trip.model.TripBoard;

public interface TripBoardService {

	//입력메소드
	public int insertBoard(TripBoard tripBoard);
	//검색 메소드
	public TripBoard selectOneByBoardKey(int TripKey);
	public TripBoard selectOneByUserNum(int userNum);
	public List<TripBoard> selectAll();	
	//페이징관련 메소드
	public List<TripBoard> getTenBoardPage(Map<String, Object> params);
	public int getTotalCount();
	public int getStartPage(int pageNum);
	public int getEndPage(int pageNum);
	public int getTotalPage();
	
	
	
}
