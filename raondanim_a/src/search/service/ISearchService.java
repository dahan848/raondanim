package search.service;

import java.util.List;
import java.util.Map;

public interface ISearchService {
	
	// 게시글 네비게이션 표시를 위한 정보 얻어오기
	public Map<String, Object> getViewData(Map<String, Object> params);
	// 페이지 번호를 받아서 해당하는 목록을 가져오는 기능
	public List<Map<String, Object>> getUserList(Map<String, Object> params);
	// 회원 ID를 이용해 해당 회원 프로필 조회
	public Map<String, Object> openUserProfile(String id);
}