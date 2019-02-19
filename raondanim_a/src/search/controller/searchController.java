package search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class searchController {
	
	@RequestMapping("/home")
	public String searchBase() {
		System.out.println("search : 화면 요청 받음");
		return "search/main";
	}
}