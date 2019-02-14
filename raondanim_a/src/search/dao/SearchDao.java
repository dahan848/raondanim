package search.dao;

public interface SearchDao {
	public int searchByTravler(String tr_type);
	public int searchByCity(String city);
	public int searchByLanguage(String lang);
	public int searchByTourStyle(String tr_styles);
	public int searchByName(String name);
	public int searchByGender(int gender);
	public int searchByNation(String nation);
	public int searchByInterest(String interest);
}