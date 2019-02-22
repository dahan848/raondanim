package trip.service;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;

import trip.model.TripBoard;
import trip.model.TripCity;
import trip.model.TripRel;

public interface TripBoardService {

	//입력메소드
	public boolean insertBoard(TripBoard tripBoard);
	//검색 메소드
	public TripBoard selectOneByBoardKey(int TripKey);
	public TripBoard selectOneByUserNum(int userNum);
	public List<TripBoard> selectAll();	
	//페이징관련 메소드
	public Map<String, Object> getTenBoardPage(Map<String, Object> params);
	public int getStartPage(int pageNum);
	public int getEndPage(int pageNum);
	public int getTotalPage(Map<String, Object> params);
	
	//도시관련 메소드
	public boolean insertCity(String tripCity);
	public TripCity selectOneByCity(Map<String, Object> params);
	public List<TripCity> selectAllByCity();
	public List<Map<String, Object>> getListlatlng();
	
	//관계테이블 관련 메소드
	public boolean insertRel(TripRel tripRel);
	
	//기존 글쓰기 폐기 트랜잭션 이용 통합 글쓰기 
	public boolean totalWrite(TripBoard tripBoard, String tripCity);
	
	
	
}
