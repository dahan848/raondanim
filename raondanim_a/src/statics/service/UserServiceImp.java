package statics.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import statics.dao.UserDao;
import statics.model.User;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserDao userDao;
	
	
	@Override
	public boolean insertUser(User user) {
		
		if(userDao.insertUser(user)>0) {
			
			return true;
		}else {
			return false;
		}
		
		
	}

	@Override
	public User selectOneByNum(int num) {
		
		return userDao.selectOneByNum(num);
	}

	@Override
	public List<User> selectAll() {
		
		return userDao.selectAll();
	}

	@Override
	public boolean CheckPw(int userNum, String pw) {
		User user = selectOneByNum(userNum);
		
		
		if(user!=null && user.getUser_Pw().equals(pw)) {
			
			return true;
		}else {

			return false;
		}
		
		
		
	}

	@Override
	public User selectOneById(String id) {
		
		return userDao.selectOneById(id);
	}

}
