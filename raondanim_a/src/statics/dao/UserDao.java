package statics.dao;

import java.util.List;

import statics.model.User;

public interface UserDao {

	public int insertUser(User user);
	public User selectOneByNum(int num);
	public User selectOneById(String Id);
	public List<User> selectAll();
	
	
}
