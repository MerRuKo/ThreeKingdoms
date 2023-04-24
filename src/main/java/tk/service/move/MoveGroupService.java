package tk.service.move;

import java.util.List;

import tk.dto.move.MoveGroupConditionDTO;
import tk.dto.move.MoveGroupDTO;
import tk.dto.move.MoveGroupDetailConditionDTO;

public interface MoveGroupService {
	
	List<MoveGroupDTO> moveGroupList(MoveGroupConditionDTO moveGroupConditionDTO);
	
	MoveGroupDTO moveGroupDetail(MoveGroupDTO moveGroupDTO);
	
	int moveGroup(MoveGroupDetailConditionDTO moveGroupDetailConditionDTO);
	
}