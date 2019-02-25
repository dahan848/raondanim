package trip.controller;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;

import statics.service.UserService;
import trip.model.TripBoard;
import trip.service.TripBoardService;

//여행관련 컨트롤러

@Controller
@RequestMapping("/trip")
public class tripController {

	@Autowired
	TripBoardService tripService;

	@Autowired
	UserService userService;

	@RequestMapping("/list")
	public String boardList(@RequestParam(defaultValue="1")int pageNum,
			@RequestParam(defaultValue="0") int type,
			@RequestParam(required=false) String keyword,
			Model model) {
		System.out.println("list 요청받음");
		Map<String, Object> params = new HashMap<>();
		
		System.out.println("페이지 번호 : "+pageNum);
		System.out.println("타입 : "+type);
		System.out.println("키워드 : "+keyword);
		
		
		params.put("pageNum", pageNum);
		params.put("type", type);
		params.put("keyword", keyword);
		Map<String, Object> tripData = tripService.getTenBoardPage(params);
		//System.out.println("list요청  tripdata 검사:"+tripData);
		model.addAttribute("tripData", tripData);
		//지도 찍을 위도경도인데 컬럼이 구글에서 받는 형식과 다르고 자바 객체형태는 = 으로 되있다 보니까 json으로 일단 변환시켜서 보내봄
//		JSONArray tripLatLng = new JSONArray(tripService.getListlatlng());
		
		//list<map> 구조를 jsonarr 로 변경하는건 안되는데 list<map>을 json객체로 바꿔서 보내니까 됨 뭔차이가 
		Gson gson = new Gson();
		String tripLatLng = gson.toJson(tripService.getListlatlng());

		model.addAttribute("tripLatLng", tripLatLng);
		//System.out.println(tripLatLng);
		
		return "trip/TripBoardList";
	}

	@RequestMapping("/view")
	public String boardView(@RequestParam(required=false) int boardKey,@RequestParam(required=false) int userNum, Model model) {
		System.out.println(" view 요청받음");
		 
		Map<String, Object> params = new HashMap<>();
		//게시판 정보 불러오는데 보드키나 유저키가 없으면 아무것도 안불러오기 떄문에 암것도없으면 리스트로 리다이렉트
		if(boardKey==0) {
			params.put("boardKey", boardKey);
		}else if(userNum==0) {
			params.put("userNum", userNum);
		}else {
			return "redirect:list";
		}
		
		
		model.addAttribute("boardInfo", tripService.getTripBoardOneInfo(params));
		model.addAttribute("cityInfo", tripService.getTripBoardCityOneInfo(boardKey));
		System.out.println("뷰 요청 테스트 게시판 정보: "+tripService.getTripBoardOneInfo(params));
		System.out.println("뷰 요청 테스트 도시 정보: "+tripService.getTripBoardCityOneInfo(boardKey));
		
		return "trip/TripBoardView";
	}

	@RequestMapping("/write1")
	public String boardWrite1() {
		System.out.println("write1 요청받음");

		return "trip/TripBoardWriteForm1";
	}

	@RequestMapping("/write2")
	public String boardWrite2(TripBoard tripBoard, Model model) {
		System.out.println("write2요청받음");
		//System.out.println(tripBoard);
		model.addAttribute("tripBoard", tripBoard);
		return "trip/TripBoardWriteForm2";
	}

	@RequestMapping("/write3")
	public String boardWrite3(TripBoard tripBoard, String tripCity) {
		System.out.println("write3요청받음(글 db에 저장단계)");

	
		  if(tripService.totalWrite(tripBoard, tripCity)) {
			  System.out.println("성공");
			  return "redirect:list";
		  }else {
			  System.out.println("실패");
			  return "redirect:list";
		  }
		 

		
	}


	

	
	
	
}

