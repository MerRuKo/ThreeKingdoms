package tk.controller.general;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.general.ApproveGeneralDTO;
import tk.service.general.ApproveGeneralService;

@Controller
public class ApproveGeneralController {
	
	@Autowired
	private ApproveGeneralService approveGeneralService;
	
	@RequestMapping("/approveGeneralList.do")
	public String approveGeneralList(Model model) {
		model.addAttribute("approveGeneralList", approveGeneralService.approveGeneralList());
		return "general/approveGeneralList";
	}
	
	@RequestMapping("/approveGeneralDetail.do")
	public String approveGeneralList(ApproveGeneralDTO approveGeneralDTO, Model model) {
		model.addAttribute("approveGeneralDetail", approveGeneralService.approveGeneralDetail(approveGeneralDTO));
		return "general/approveGeneralDetail";
	}
	
	@RequestMapping("/approveGeneralInsert.do")
	public String approveGeneralInsert(ApproveGeneralDTO approveGeneralDTO) {
		approveGeneralService.approveGeneralDelete(approveGeneralDTO);
		approveGeneralService.approveGeneralInsert(approveGeneralDTO);
		return "general/menuGeneral";
	}
	
	@RequestMapping("/approveGeneralDelete.do")
	public String approveGeneralDelete(ApproveGeneralDTO approveGeneralDTO) {
		approveGeneralService.approveGeneralDelete(approveGeneralDTO);
		return "general/menuGeneral";
	}

}