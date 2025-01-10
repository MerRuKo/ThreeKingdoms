package tk.controller.kingdoms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.service.kingdoms.DisplayKingdomsService;

@Controller
public class DisplayKingdomsController {
	
	@Autowired
	DisplayKingdomsService displayKingdomsService;
	
	@RequestMapping("/displayKingdomsList")
	public String displayKingdomsList() {
		return "kingdoms/displayKingdomsList";
	}
	
	@RequestMapping("/showKingdomsList.do")
	public String showKingdomsList(Model model) {
		model.addAttribute("displayKingdomsList", displayKingdomsService.showKingdomsList());
		return "kingdoms/displayKingdomsList";
	}
	
}