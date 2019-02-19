package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.userAuthDao;

@Service
public class UserServiceImp implements UserService{

	@Autowired
	private userAuthDao userDAO;
	
	@Override
	public void countFailure(String username) {
		userDAO.updateFailureCount(username);
	}

	@Override
	public int checkFailureCount(String username) {
		return userDAO.checkFailureCount(username);
	}

	@Override
	public void disabledUsername(String username) {
		userDAO.updateDisabled(username);
	}

}
