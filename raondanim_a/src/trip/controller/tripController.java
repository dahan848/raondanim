package trip.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


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
		System.out.println("write1 요청받음");

		return "trip/TripBoardWriteForm1";
	}

	@RequestMapping("/write2")
	public String boardWrite2(TripBoard tripBoard, Model model) {
		System.out.println("write2요청받음");
		// System.out.println(tripBoard);
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
