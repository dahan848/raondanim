package trip.dao;

import java.util.List;
import java.util.Map;

import trip.model.TripBoard;
import trip.model.TripCity;
import trip.model.TripRel;

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
	//도시테이블 메소드
	public int insertCity(TripCity tripCity);
	public TripCity selectOneByCity(Map<String, Object> params);
	public List<TripCity> selectAllByCity();
	
	
	
	
	////////////////////////////////////////////
	//관계테이블 메소드
	public int insertRel(TripRel tripRel);
	//관계 테이블 낀 조회 메소드는 테스트 데이터 집어놓고 나서 
	
	
}
