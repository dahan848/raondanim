package statics.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Service;

import statics.dao.testUserDao;
import statics.model.TestUser;

@Service
public class tsetService {
	
	@Autowired
	private testUserDao dao;
	private TestUser user = new TestUser(); 
	
	public boolean join(Map<String, Object> param) {
		user.setEmail((String)param.get("user_id"));
		user.setPass((String)param.get("user_pw"));
		if(dao.insertUser(user) > 0) {
			System.out.println("조인 서비스 동작 성공!");
			return true;
		}else{
			System.out.println("조인 서비스 동작 실패");
			return false;
		}
		
	}
	
	public void logout(HttpServletRequest request,HttpServletResponse response) {
		//현재 서비스에서 권한부분을 삭제 
		//현재 서비스에서 권한을 얻어와서 권한이 null아니면, 
		//현재권한에 대해서 logout처리
		Authentication auth
		 = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null) {
			new SecurityContextLogoutHandler()
			.logout(request, response, auth);
		}
	}
	
	
}
