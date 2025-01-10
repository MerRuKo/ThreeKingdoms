package tk.controller.move;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisplayMoveGroupController {

	@RequestMapping("/searchMoveGroupList")
	public String displaySearchMoveGroupList() {
		return "move/searchMoveGroupList";
	}

}