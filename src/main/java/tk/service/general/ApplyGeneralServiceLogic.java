package tk.service.general;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tk.dto.general.ApplyGeneralDTO;

@Repository
public class ApplyGeneralServiceLogic {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public int applyGeneral(ApplyGeneralDTO applyGeneralDTO) {
		return excuteQuery.insert("applyGeneralMapper.applyGeneral", applyGeneralDTO);
	}
	
	public List<ApplyGeneralDTO> applyGeneralList() {
		return excuteQuery.selectList("applyGeneralMapper.applyGeneralList");
	}
	
	public ApplyGeneralDTO applyGeneralDetail(ApplyGeneralDTO applyGeneralDTO) {
		return excuteQuery.selectOne("applyGeneralMapper.applyGeneralDetail", applyGeneralDTO);
	}
	
	public int applyGeneralInsert(ApplyGeneralDTO applyGeneralDTO) {
		return excuteQuery.insert("applyGeneralMapper.applyGeneralInsert", applyGeneralDTO);
	}
	
	public int applyGeneralDelete(ApplyGeneralDTO applyGeneralDTO) {
		return excuteQuery.delete("applyGeneralMapper.applyGeneralDelete", applyGeneralDTO);
	}
	
}