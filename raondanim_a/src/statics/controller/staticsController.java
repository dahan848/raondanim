package statics.controller;
//기본 컨트롤러 : 네브바, 로그인, 유저 관련 기능 담당

import java.security.Principal;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import statics.service.tsetService;

@Controller
@RequestMapping("/statics")
public class staticsController {
	
	@Autowired
	private tsetService service;

	@RequestMapping("/home")
	public String main() {
		System.out.println("statics : 메인 화면 요청 받음");
		return "statics/main";
	}
	
	@RequestMapping(value = "/loginForm")
	public String login() {
		System.out.println("statics : 로그인 화면 요청 받음");
		return "statics/loginForm";
	}
		
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() { //화면 요청
		System.out.println("statics : 회원가입 화면 요청 받음");
		return "statics/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(@RequestParam Map<String, Object> s) { //가입 요청
		System.out.println("statics : 회원가입 요청 받음");
		System.out.println("statics : join = "+s);
		if(service.join(s)) {
			return "statics/main";
		}else {
			return "statics/join";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response,Principal principal) {
		System.out.println(principal.getName());
		service.logout(request, response);
		return "redirect:home";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "statics/profile-update";
	}
	
	@RequestMapping("/test2")
	public String test2() {
		return "statics/test02";
	}
	
	@RequestMapping("/test3")
	public String test3() {
		return "statics/test03";
	}
	
	
}
