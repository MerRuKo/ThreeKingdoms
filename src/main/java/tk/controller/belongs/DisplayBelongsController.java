package tk.controller.belongs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.service.belongs.DisplayBelongsService;

@Controller
public class DisplayBelongsController {
	
	@Autowired
	DisplayBelongsService displayBelongsService;
	
	@RequestMapping("/displayBelongsList")
	public String displayBelongsList() {
		return "belongs/displayBelongsList";
	}
	
	@RequestMapping("/displayBelongsList.do")
	public String searchBelongsList(Model model) {
		model.addAttribute("displayBelongsList", displayBelongsService.displayBelongsList());
		return "belongs/displayBelongsList";
	}
	
}