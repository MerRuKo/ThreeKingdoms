package tk.service.search.general;

import java.util.List;

import tk.dto.general.SearchGeneralDTO;
import tk.dto.general.SearchGeneralConditionDTO;

public interface SearchGeneralService {
	
	List<SearchGeneralDTO> searchGeneral(SearchGeneralConditionDTO generalSearchDTO);

}