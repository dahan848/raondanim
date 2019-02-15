package statics.service;

import java.util.List;

import statics.model.User;

public interface UserService {

	public boolean insertUser(User user);
	public User selectOneByNum(int num);
	public User selectOneById(String Id);
	public List<User> selectAll();
	public boolean CheckPw(int userNum, String pw);
	
	
	
}
