package tk.service.move;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.move.MoveGroupConditionDTO;
import tk.dto.move.MoveGroupDTO;
import tk.dto.move.MoveGroupDetailConditionDTO;

@Service
public class MoveGroupServiceImpl implements MoveGroupService {
	
	@Autowired
	MoveGroupServiceLogic moveGroupServiceLogic;
	
	public List<MoveGroupDTO> moveGroupList(MoveGroupConditionDTO moveGroupConditionDTO) {
		return moveGroupServiceLogic.moveGroupList(moveGroupConditionDTO);
	}
	
	public MoveGroupDTO moveGroupDetail(MoveGroupDTO moveGroupDTO) {
		return moveGroupServiceLogic.moveGroupDetail(moveGroupDTO);
	}
	
	public int moveGroup(MoveGroupDetailConditionDTO moveGroupDetailConditionDTO) {
		return moveGroupServiceLogic.moveGroup(moveGroupDetailConditionDTO);
	}
	
}