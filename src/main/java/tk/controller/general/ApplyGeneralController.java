package tk.controller.general;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.general.ApplyGeneralDTO;
import tk.service.general.ApplyGeneralService;

@Controller
public class ApplyGeneralController {
	
	@Autowired
	private ApplyGeneralService applyGeneralService;

	@RequestMapping("/applyGeneral.do")
	public String applyGeneral(ApplyGeneralDTO applyGeneralDTO) {
		applyGeneralService.applyGeneral(applyGeneralDTO);
		return "applyGeneralList.do";
	}
	
	@RequestMapping("/applyGeneralList.do")
	public String applyGeneralList(Model model) {
		model.addAttribute("applyGeneralList", applyGeneralService.applyGeneralList());
		return "applyGeneralList.jsp";
	}
	
	@RequestMapping("/applyGeneralDetail.do")
	public String applyGeneralList(ApplyGeneralDTO applyGeneralDTO, Model model) {
		model.addAttribute("applyGeneralDetail", applyGeneralService.applyGeneralDetail(applyGeneralDTO));
		return "applyGeneralDetail.jsp";
	}
	
	@RequestMapping("/applyGeneralInsert.do")
	public String applyGeneralInsert(ApplyGeneralDTO applyGeneralDTO) {
		applyGeneralService.applyGeneralDelete(applyGeneralDTO);
		applyGeneralService.applyGeneralInsert(applyGeneralDTO);
		return "searchGeneralList.do";
	}
	
	@RequestMapping("/applyGeneralDelete.do")
	public String applyGeneralDelete(ApplyGeneralDTO applyGeneralDTO) {
		applyGeneralService.applyGeneralDelete(applyGeneralDTO);
		return "applyGeneralList.do";
	}
	
}