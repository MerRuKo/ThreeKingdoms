package tk.service.general;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tk.dto.general.ApproveGeneralDTO;

@Repository
public class ApproveGeneralServiceLogic {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public List<ApproveGeneralDTO> approveGeneralList() {
		return excuteQuery.selectList("approveGeneralMapper.approveGeneralList");
	}
	
	public ApproveGeneralDTO approveGeneralDetail(ApproveGeneralDTO approveGeneralDTO) {
		return excuteQuery.selectOne("approveGeneralMapper.approveGeneralDetail", approveGeneralDTO);
	}
	
	public int approveGeneralInsert(ApproveGeneralDTO approveGeneralDTO) {
		return excuteQuery.insert("approveGeneralMapper.approveGeneralInsert", approveGeneralDTO);
	}
	
	public int approveGeneralDelete(ApproveGeneralDTO approveGeneralDTO) {
		return excuteQuery.delete("approveGeneralMapper.approveGeneralDelete", approveGeneralDTO);
	}
	
}