package tk.controller.move;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.move.MoveGroupConditionDTO;
import tk.dto.move.MoveGroupDTO;
import tk.dto.move.MoveGroupDetailConditionDTO;
import tk.service.belongs.DisplayBelongsService;
import tk.service.kingdoms.DisplayKingdomsService;
import tk.service.move.MoveGroupService;

@Controller
public class SearchMoveGroupController {

	@Autowired
	private MoveGroupService moveGroupService;
	@Autowired
	private DisplayKingdomsService displayKingdomsService;
	@Autowired
	private DisplayBelongsService displayBelongsService;

	@RequestMapping("/searchMoveGroupList.do")
	public String moveGroupList(MoveGroupConditionDTO moveGroupConditionDTO, Model model) {
		model.addAttribute("searchMoveGroupList", moveGroupService.moveGroupList(moveGroupConditionDTO));
		return "move/searchMoveGroupList";
	}
	
	@RequestMapping("/searchMoveGroupDetail.do")
	public String moveGroupDetail(MoveGroupDTO moveGroupDTO, Model model) {
		model.addAttribute("searchMoveGroupDetail", moveGroupService.moveGroupDetail(moveGroupDTO));
		model.addAttribute("displayKingdomsList", displayKingdomsService.displayKingdomsList());
		model.addAttribute("displayBelongsList", displayBelongsService.displayBelongsList());
		return "move/searchMoveGroupDetail";
	}
	
	@RequestMapping("/moveGroup.do")
	public String moveGroup(MoveGroupDetailConditionDTO moveGroupDetailConditionDTO) {
		moveGroupService.moveGroup(moveGroupDetailConditionDTO);
		return "move/searchMoveGroupList";
	}

}