package tk.controller.general;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.general.SearchGeneralConditionDTO;
import tk.service.general.SearchGeneralService;

@Controller
public class SearchGeneralController {
	
	@Autowired
	private SearchGeneralService searchGeneralService;

	@RequestMapping("/searchGeneral.do")
	public String searchGeneral(SearchGeneralConditionDTO searchGeneralConditionDTO, Model model) {
		model.addAttribute("generalList", searchGeneralService.searchGeneral(searchGeneralConditionDTO));
		return "searchGeneral.jsp";
	}
}