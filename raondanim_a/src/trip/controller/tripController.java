package trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//여행관련 컨트롤러

@Controller
@RequestMapping("/trip")
public class tripController {

	
	@RequestMapping("/list")
	public String boardList() {
		System.out.println("요청받음");
		return "trip/TripBoardList";
	}
	
	@RequestMapping("/view")
	public String boardView() {
		System.out.println("요청받음");
		return "trip/TripBoardView";
	}
	
	
	@RequestMapping("/write1")
	public String boardWrite1() {
		System.out.println("요청받음");
		return "trip/TripBoardWriteForm1";
	}
	
	
	@RequestMapping("/write2")
	public String boardWrite2() {
		System.out.println("요청받음");
		return "trip/TripBoardWriteForm2";
	}
	
	
	
}
