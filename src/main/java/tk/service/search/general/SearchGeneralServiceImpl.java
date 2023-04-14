package tk.service.search.general;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.general.GeneralDTO;
import tk.dto.general.GeneralSearchConditionDTO;

@Service
public class SearchGeneralServiceImpl implements SearchGeneralService {
	
	@Autowired
	SearchGeneralServiceLogic searchGeneralLogic;
	
	public List<GeneralDTO> searchGeneral(GeneralSearchConditionDTO generalSearchDTO) {
		return searchGeneralLogic.searchGeneral(generalSearchDTO);
	}	

}