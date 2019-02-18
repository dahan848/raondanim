package search.dao;

import java.util.List;

import search.model.User;

public interface SearchDao {
	public List<User> selectUsersByCity();
	public List<User> selectOneByLanguage(String lang);
	public List<User> selectOneByTourStyles(String trStyles);
	public List<User> selectOneByName(String name);
	public List<User> selectOneByGender(String gender);
	public List<User> selectOneByNation(String nation);
	public List<User> selectOneByInterest(String interest);
	public List<User> selectAll();
}