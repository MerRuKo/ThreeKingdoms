package tk.service.general;

import java.util.List;

import tk.dto.general.SearchGeneralDTO;
import tk.dto.general.SearchGeneralConditionDTO;

public interface SearchGeneralService {
	
	List<SearchGeneralDTO> searchGeneralList(SearchGeneralConditionDTO searchGeneralConditionDTO);
	
	SearchGeneralDTO searchGeneralDetail(SearchGeneralDTO searchGeneralDTO);
	
}