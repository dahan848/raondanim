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
		JSONArray tripLatLng = new JSONArray(tripService.getListlatlng());
		
/*		Gson gson = new Gson();
		String tripLatLng = gson.toJson(tripService.getListlatlng());
		System.out.println("위도경도 확인용 list->json : "+tripLatLng);*/
		model.addAttribute("tripLatLng", tripService.getListlatlng());
		System.out.println(tripService.getListlatlng());
		
		return "trip/TripBoardList";
	}

	@RequestMapping("/view")
	public String boardView() {
		System.out.println("요청받음");
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
		System.out.println(tripBoard);
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
