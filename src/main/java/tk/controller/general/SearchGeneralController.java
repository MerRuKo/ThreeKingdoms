package tk.controller.general;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.general.SearchGeneralConditionDTO;
import tk.dto.general.SearchGeneralDTO;
import tk.service.general.SearchGeneralService;

@Controller
public class SearchGeneralController {
	
	@Autowired
	private SearchGeneralService searchGeneralService;

	@RequestMapping("/searchGeneralList.do")
	public String searchGeneralList(SearchGeneralConditionDTO searchGeneralConditionDTO, Model model) {
		model.addAttribute("searchGeneralList", searchGeneralService.searchGeneralList(searchGeneralConditionDTO));
		return "general/searchGeneralList";
	}
	
	@RequestMapping("/searchGeneralDetail.do")
	public String searchGeneralDetail(SearchGeneralDTO searchGeneralDTO, Model model) {
		model.addAttribute("searchGeneralDetail", searchGeneralService.searchGeneralDetail(searchGeneralDTO));
		return "general/searchGeneralDetail";
	}

}