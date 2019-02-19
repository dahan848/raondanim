package security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import dao.userAuthDao;
import model.customUserDetails;

import org.springframework.security.core.userdetails.UserDetailsService;

public class CustomUserDetailsService implements UserDetailsService  {
	
    @Autowired
    private userAuthDao userAuthDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		customUserDetails user = userAuthDao.getUserById(username);
        if(user==null) {
            throw new UsernameNotFoundException(username);
        }
        return user;
    }
}
