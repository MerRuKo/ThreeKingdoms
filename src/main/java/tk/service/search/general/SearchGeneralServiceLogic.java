package tk.service.search.general;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tk.dto.general.GeneralDTO;
import tk.dto.general.GeneralSearchConditionDTO;

@Repository
public class SearchGeneralServiceLogic {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public List<GeneralDTO> searchGeneral(GeneralSearchConditionDTO generalSearchDTO) {
		return excuteQuery.selectList("searchGeneralMapper.searchGeneral", generalSearchDTO);
	}

}