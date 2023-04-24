package tk.service.move;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tk.dto.move.MoveGroupConditionDTO;
import tk.dto.move.MoveGroupDTO;
import tk.dto.move.MoveGroupDetailConditionDTO;

@Repository
public class MoveGroupServiceLogic {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public List<MoveGroupDTO> moveGroupList(MoveGroupConditionDTO moveGroupConditionDTO) {
		return excuteQuery.selectList("moveGroupMapper.moveGroupList", moveGroupConditionDTO);
	}
	
	public MoveGroupDTO moveGroupDetail(MoveGroupDTO moveGroupDTO) {
		return excuteQuery.selectOne("moveGroupMapper.moveGroupDetail", moveGroupDTO);
	}
	
	public int moveGroup(MoveGroupDetailConditionDTO moveGroupDetailConditionDTO) {
		return excuteQuery.update("moveGroupMapper.moveGroup", moveGroupDetailConditionDTO);
	}
	
}