package tk.service.search.general;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.general.SearchGeneralDTO;
import tk.dto.general.SearchGeneralConditionDTO;

@Service
public class SearchGeneralServiceImpl implements SearchGeneralService {
	
	@Autowired
	SearchGeneralServiceLogic searchGeneralLogic;
	
	public List<SearchGeneralDTO> searchGeneral(SearchGeneralConditionDTO generalSearchDTO) {
		return searchGeneralLogic.searchGeneral(generalSearchDTO);
	}	

}