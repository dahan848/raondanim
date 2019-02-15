package trip.dao;

import java.util.List;
import java.util.Map;

import trip.model.TripBoard;

public interface TripBoardDao {
	//입력메소드
	public int insertBoard(TripBoard tripBoard);
	//검색 메소드
	public TripBoard selectOneByBoardKey(int TripKey);
	public TripBoard selectOneByUserNum(int userNum);
	public List<TripBoard> selectAll();	
	//페이징관련 메소드
	public List<TripBoard> getTenBoardPage(Map<String, Object> params);
	public int getTotalCount();

	
	
	
	/////////////////////////////////////////////
	//여행도시 관련 테이블도 같이 작성?
	//아님 모델하고 dao따로 빼서?
	
	
	
	
}
