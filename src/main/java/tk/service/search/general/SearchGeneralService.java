package tk.service.search.general;

import java.util.List;

import tk.dto.general.GeneralDTO;
import tk.dto.general.GeneralSearchConditionDTO;

public interface SearchGeneralService {
	
	List<GeneralDTO> searchGeneral(GeneralSearchConditionDTO generalSearchDTO);

}