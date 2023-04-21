package tk.service.general;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tk.dto.general.SearchGeneralDTO;
import tk.dto.general.SearchGeneralConditionDTO;

@Repository
public class SearchGeneralServiceLogic {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public List<SearchGeneralDTO> searchGeneralList(SearchGeneralConditionDTO searchGeneralConditionDTO) {
		return excuteQuery.selectList("searchGeneralMapper.searchGeneralList", searchGeneralConditionDTO);
	}
	
	public SearchGeneralDTO searchGeneralDetail(SearchGeneralDTO searchGeneralDTO) {
		return excuteQuery.selectOne("searchGeneralMapper.searchGeneralDetail", searchGeneralDTO);
	}
	
}