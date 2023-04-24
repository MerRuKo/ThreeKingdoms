package tk.controller.move;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.move.MoveGroupConditionDTO;
import tk.dto.move.MoveGroupDTO;
import tk.dto.move.MoveGroupDetailConditionDTO;
import tk.service.group.DisplayGroupService;
import tk.service.move.MoveGroupService;

@Controller
public class MoveGroupController {
	
	@Autowired
	private MoveGroupService moveGroupService;
	
	@Autowired
	private DisplayGroupService displayGroupService;

	@RequestMapping("/moveGroupList.do")
	public String moveGroupList(MoveGroupConditionDTO moveGroupConditionDTO, Model model) {
		model.addAttribute("moveGroupList", moveGroupService.moveGroupList(moveGroupConditionDTO));
		return "moveGroupList.jsp";
	}
	
	@RequestMapping("/moveGroupDetail.do")
	public String moveGroupDetail(MoveGroupDTO moveGroupDTO, Model model) {
		model.addAttribute("moveGroupDetail", moveGroupService.moveGroupDetail(moveGroupDTO));
		model.addAttribute("displayKingdomsList", displayGroupService.displayKingdomsList());
		model.addAttribute("displayBelongsList", displayGroupService.displayBelongsList());
		return "moveGroupDetail.jsp";
	}
	
	@RequestMapping("/moveGroup.do")
	public String moveGroup(MoveGroupDetailConditionDTO moveGroupDetailConditionDTO) {
		moveGroupService.moveGroup(moveGroupDetailConditionDTO);
		return "moveGroupList.do";
	}

}