package security;

import java.util.List;
import java.util.ArrayList;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;


public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		System.out.println("Authentication 접근 !");
		//로그인 페이지에서 입력 된 아이디(이메일), 비밀번호 변수에 참조 
		String userid = authentication.getName();
		String password = (String) authentication.getCredentials();
		UsernamePasswordAuthenticationToken authToken = null;

		
		GrantedAuthority auth= new GrantedAuthority() {
			
			@Override
			public String getAuthority() {
				// TODO Auto-generated method stub
				return "ROLE_USER";
			}
		};
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(auth);
		UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(userid, password, authorities);
		return token;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}

}
