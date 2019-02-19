package statics.controller;
//기본 컨트롤러 : 네브바, 로그인, 유저 관련 기능 담당

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import statics.model.User;
import statics.service.UserService;

@Controller
@RequestMapping("/statics")
public class staticsController {

	@Autowired
	UserService userService;
	
	
	@RequestMapping("/home")
	public String main() {
		System.out.println("statics : 메인 화면 요청 받음");
		return "statics/main";
	}
	@RequestMapping("/login")
	public String loginForm() {
		System.out.println("statics : 로그인 화면 요청 받음");
		return "statics/login";
	}
	
	@RequestMapping("/log")
	public String login(String user_Id, String user_Pw, HttpServletRequest req) {

		int userNum = userService.selectOneById(user_Id).getUser_Num();
		
		
		if(userService.selectOneById(user_Id)!=null && userService.CheckPw(userNum, user_Pw)) {
			HttpSession session = req.getSession();
			session.setAttribute("userNum", userNum);
			session.setAttribute("userName", userService.selectOneByNum(userNum).getUser_Lnm());
			return "redirect:home";
			
		}else {
			
			return "redirect:home";
		}
		
		
		
	}
	
	@RequestMapping("/join")
	public String joinForm() {
		System.out.println("statics : 회원가입 화면 요청 받음");
		return "statics/join";
	}
	
	@RequestMapping("/register")
	public String join(User user) {
		
		if(userService.insertUser(user)) {
			
			return "redirect:login";
		}else {
			
			return "redirect:home";
			
		}
		
		
	}
	
	
}
