package tk.controller.group;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.service.group.DisplayGroupService;

@Controller
public class DisplayGroupController {
	
	@Autowired
	DisplayGroupService displayGroupService;
	
	@RequestMapping("/displayKingdomsList.do")
	public String displayKingdomsList(Model model) {
		model.addAttribute("displayKingdomsList", displayGroupService.displayKingdomsList());
		return "displayKingdomsList.jsp";
	}
	
	@RequestMapping("/displayBelongsList.do")
	public String displayBelongsList(Model model) {
		model.addAttribute("displayBelongsList", displayGroupService.displayBelongsList());
		return "displayBelongsList.jsp";
	}
	
}