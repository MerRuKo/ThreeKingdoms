package tk.controller.batch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.general.SearchGeneralConditionDTO;
import tk.dto.general.SearchGeneralDTO;
import tk.service.batch.ExcuteBatchService;
import tk.service.general.SearchGeneralService;

@Controller
public class ExcuteBatchController {
	
	@Autowired
	private SearchGeneralService searchGeneralService;
	@Autowired
	private ExcuteBatchService excuteBatchService;

	@RequestMapping("/excuteBatchGeneral.do")
	public String excuteBatchGeneral(SearchGeneralConditionDTO searchGeneralConditionDTO) {
		
		List<SearchGeneralDTO> generalInfoList = searchGeneralService.searchGeneralList(searchGeneralConditionDTO);
		
		excuteBatchService.createTextFile(generalInfoList);
		
		return "selectBatchList.jsp";
	}

}