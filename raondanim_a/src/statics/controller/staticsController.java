package statics.controller;
//기본 컨트롤러 : 네브바, 로그인, 유저 관련 기능 담당

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/statics")
public class staticsController {

	@RequestMapping("/home")
	public String main() {
		System.out.println("statics : 메인 화면 요청 받음");
		return "statics/main";
	}
	@RequestMapping("/login")
	public String login() {
		System.out.println("statics : 로그인 화면 요청 받음");
		return "statics/login";
	}
	
	@RequestMapping("/join")
	public String join() {
		System.out.println("statics : 회원가입 화면 요청 받음");
		return "statics/join";
	}
	
	
}
