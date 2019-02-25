package trip.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import trip.dao.TripBoardDao;
import trip.model.TripBoard;
import trip.model.TripCity;
import trip.model.TripRel;

@Service
public class TripBoardServiceImp implements TripBoardService {

	@Autowired
	TripBoardDao tripDao;

	public static final int PER_PAGE = 10;
	public static final int NAVI_PAGE = 10;

	@Override
	public boolean insertBoard(TripBoard tripBoard) {

		if (tripDao.insertBoard(tripBoard) > 0) {
			return true;
		}

		return false;
	}

	@Override
	public TripBoard selectOneByBoardKey(int TripKey) {

		return tripDao.selectOneByBoardKey(TripKey);
	}

	@Override
	public TripBoard selectOneByUserNum(int userNum) {

		return tripDao.selectOneByUserNum(userNum);
	}

	@Override
	public List<TripBoard> selectAll() {

		return tripDao.selectAll();
	}

//////////////////////////////////////////////////////////////
	// 페이징 관련 메소드
	@Override
	public Map<String, Object> getTenBoardPage(Map<String, Object> params) {
		int pageNum = (int) params.get("pageNum");
		int type = (int) params.get("type");
		String keyword = (String) params.get("keyword");

		int startRow = PER_PAGE * (pageNum - 1) + 1;
		int endRow = PER_PAGE * pageNum;
//		System.out.println("서비스 가져올 거 시작 : "+startRow);
//		System.out.println("서비스 가져올 거 끝: "+endRow);
		
		
		params.put("start", startRow);
		params.put("end", endRow);
		params.put("type", type);
		
/*		System.out.println("서비스 파라메터 확인 pageNum :"+pageNum);
		System.out.println("서비스 파라메터 확인  type :"+type);
		System.out.println("서비스 파라메터 확인  keyword :"+keyword);
		System.out.println("서비스 파라메터 확인 start :"+startRow);
		System.out.println("서비스 파라메터 확인  end :"+endRow);
		System.out.println("서비스 파라메터 확인  type :"+type);*/
		
		if (type == 1) {
			params.put("title", keyword);
		} else if (type == 2) {	
			params.put("tripStart", keyword);			
		} else if (type == 3) {
			params.put("tripEnd", keyword);
		} else if (type == 4) {
			params.put("userNick", keyword);
		} 
		System.out.println("서비스 파라메터 확인  params :"+params);
		
		List<Map<String, Object>> tripBoardList = tripDao.getTenBoardPage(params);
		
		Map<String, Object> tripData = new HashMap<>();
		tripData.put("tripBoardList", tripBoardList);
		tripData.put("start", getStartPage(pageNum));
		tripData.put("end", getEndPage(pageNum));
		tripData.put("total", getTotalPage(params));
		tripData.put("page", pageNum);
		

		return tripData;
	}

	@Override
	public int getStartPage(int pageNum) {

		return ((pageNum - 1) / NAVI_PAGE) * NAVI_PAGE + 1;
	}

	@Override
	public int getEndPage(int pageNum) {

		return getStartPage(pageNum) + (NAVI_PAGE - 1);
	}

	@Override
	public int getTotalPage(Map<String, Object> params) {
		int totalPage = 0;
		int boardCount = tripDao.getTotalCount(params);

		totalPage = (boardCount - 1) / PER_PAGE + 1;

		return totalPage;
	}

//////////////////////////////////////////////////////
	// 도시테이블 메소드
	@Override
	public boolean insertCity(String tripCity) {
		// String 형태의 json변수 받아서
		// json으로 변환후 파싱해서 디비에 집어넣어야함

		// 파라메터 Gson 디펜던시 이용 json으로 변경
		String jsonCity = new Gson().toJson(tripCity);
		// JSONObject jso = new JSONObject(jsonCity);

		JsonParser jsonParser = new JsonParser();

		JsonObject jsonObject = (JsonObject) jsonParser.parse(jsonCity);

		return false;
	}

	@Override
	public TripCity selectOneByCity(Map<String, Object> params) {

		return tripDao.selectOneByCity(params);
	}

	@Override
	public List<TripCity> selectAllByCity() {

		return tripDao.selectAllByCity();
	}
	
	@Override
	public List<Map<String, Object>> getListlatlng() {
		List<Map<String, Object>> params = tripDao.getListlatlng();
		//System.out.println("위도경도 변환전 : "+params);
		List<Map<String, Object>> tripLatLng =new ArrayList<>();
		
		
		for(Map<String, Object> a :params) {
			Map<String, Object> latlng = new LinkedHashMap<>();
			latlng.put("lat", Float.parseFloat((String) a.get("TRIP_CITY_LAT")));
			latlng.put("lng", Float.parseFloat((String) a.get("TRIP_CITY_LNG")));
			tripLatLng.add(latlng);
		}
		
		
		
		return tripLatLng;
	}
	
	
	

	// 각 테이블의 키를 가지고 있는 관계형 테이블
	@Override
	public boolean insertRel(TripRel tripRel) {
		// 글을 쓸때 각 테이블의 키를 집어넣어야함 게시판, 도시, 유저, 의 키

		if (tripDao.insertRel(tripRel) > 0) {
			return true;
		}

		return false;
	}

	@Transactional
	@Override
	public boolean totalWrite(TripBoard tripBoard, String tripCity) {
		// String 형태의 json변수 받아서
		// json으로 변환후 파싱해서 디비에 집어넣어야함
		// json 파싱
		// 내가 한방식 출력할때 "" 남아잇음
		// gson의 jsonarr
		// gson의 jsonparser 이용해서 json의 형식의 문자열 파싱한거 json배열에 넣은거로 추정
		// 그러니 "" 남아있는거같음
		JsonParser parser = new JsonParser();
		JsonArray jsonArray = (JsonArray) parser.parse(tripCity);
		//System.out.println("서비스 jsonarr확인 :" + jsonArray);

		/*
		 * for (int i = 0; i < jsonArray.size(); i++) { JsonObject object = (JsonObject)
		 * jsonArray.get(i); System.out.println("city Name :" + object.get("cityName"));
		 * System.out.println("lat :" + object.get("lat")); System.out.println("lng :" +
		 * object.get("lng")); }
		 */

		/*
		 * //강사님 방식 //json의 jsonarr // 얘는 "" 따로 안보이게 처리해주는듯 JSONArray jArr = new
		 * JSONArray(tripCity); for (int i = 0; i < jArr.length(); i++) { JSONObject
		 * jObject = jArr.getJSONObject(i); System.out.println(jObject.get("cityName"));
		 * System.out.println(jObject.get("lat"));
		 * System.out.println(jObject.get("lng")); }
		 */

		try {
			// 게시판 insert

			tripDao.insertBoard(tripBoard);

			int boardKey = tripBoard.getTrip_Board_Key();
			int userKey = tripBoard.getUser_Num();

			//System.out.println("서비스 셀렉트 키 확인용 :" + boardKey);
			//System.out.println("서비스 셀렉트 키 확인용 :" + userKey);
			// 키값 제대로 가져왔음 여까진 넘어옴

			// city insert
			for (int i = 0; i < jsonArray.size(); i++) {
				// 이렇게 해도 값 뽑음 이건 값 따로 분리해서 객체에 넣어줘야하는 형태
				// 바로 객체에 넣어주는게 실패한건 아마 json안에 있는 이름이랑 모델의 변수명이랑 틀려서 그런걸로 보임

				TripCity city = new TripCity();
				TripRel rel = new TripRel();
				JsonElement element = jsonArray.get(i);

				city.setTrip_City_Town(element.getAsJsonObject().get("cityName").getAsString());
				city.setTrip_City_Lat(element.getAsJsonObject().get("lat").getAsString());
				city.setTrip_City_Lng(element.getAsJsonObject().get("lng").getAsString());
				city.setTrip_City_Pid(element.getAsJsonObject().get("placeId").getAsString());

				tripDao.insertCity(city);
				// rel insert
				int cityKey = city.getTrip_City_Key();
				rel.setTrip_Board_Key(boardKey);
				rel.setUser_Num(userKey);
				rel.setTrip_City_Key(cityKey);
				tripDao.insertRel(rel);

			}

			return true;

		} catch (Exception e) {
			System.out.println("트랜잭션중 실패");
			e.printStackTrace();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();

			return false;
		}

	}
//게시판 상세화면용 메소드
	@Override
	public Map<String, Object> getTripBoardOneInfo(int boardKey) {
		//게시판 상세화면용 유저 정보 , 게시판 정보 가지고있음
		//리스트 가져와서 링크드 해시맵으로 필요한것만 빼서 순서 맞춘뒤 json으로 변환후 반환
		return tripDao.getTripBoardOneInfo(boardKey);
	}

	@Override
	public String getTripBoardCityOneInfo(int boardKey) {
		// 게시판에 속한 도시 정보 몇개일지 알수없기 때문에 따로 분리함
	
		List<Map<String, Object>> temp = tripDao.getTripBoardCityOneInfo(boardKey);
		
		List<Map<String, Object>> cityList = new ArrayList<>();
		
		for(Map<String, Object> t:temp) {
			Map<String, Object> city = new LinkedHashMap<>();
			city.put("cityName", t.get("TRIP_CITY_TOWN"));
			city.put("lat", t.get("TRIP_CITY_LAT"));
			city.put("lng", t.get("TRIP_CITY_LNG"));
			cityList.add(city);
		}
		Gson gson = new Gson();
		String cityInfo = gson.toJson(cityList);
		
		return cityInfo;
	}



}
