package tk.controller.search.general;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.general.SearchGeneralConditionDTO;
import tk.service.search.general.SearchGeneralService;

@Controller
public class searchGeneralController {
	
	@Autowired
	private SearchGeneralService searchGeneralService;

	@RequestMapping("/searchGeneral.do")
	public String searchGeneral(SearchGeneralConditionDTO generalSearchDTO, Model model) {
		model.addAttribute("generalList", searchGeneralService.searchGeneral(generalSearchDTO));
		return "searchGeneral.jsp";
	}
}