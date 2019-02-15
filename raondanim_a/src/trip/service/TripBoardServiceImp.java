package trip.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trip.dao.TripBoardDao;
import trip.model.TripBoard;

@Service
public class TripBoardServiceImp implements TripBoardService{

	@Autowired
	TripBoardDao tripDao;
	
	public static final int PER_PAGE =10;
	public static final int NAVI_PAGE =10;
	
	
	@Override
	public int insertBoard(TripBoard tripBoard) {
		
		return 0;
	}

	@Override
	public TripBoard selectOneByBoardKey(int TripKey) {
		
		return tripDao.selectOneByBoardKey(TripKey);
	}

	@Override
	public TripBoard selectOneByUserNum(int userNum) {
		
		return tripDao.selectOneByUserNum(userNum);
	}

	@Override
	public List<TripBoard> selectAll() {
		
		return tripDao.selectAll();
	}

	@Override
	public List<TripBoard> getTenBoardPage(Map<String, Object> params) {
	
		return null;
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getStartPage(int pageNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getEndPage(int pageNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalPage() {
		// TODO Auto-generated method stub
		return 0;
	}

}
