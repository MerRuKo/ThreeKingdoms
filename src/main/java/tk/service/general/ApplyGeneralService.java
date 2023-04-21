package tk.service.general;

import java.util.List;

import tk.dto.general.ApplyGeneralDTO;

public interface ApplyGeneralService {
	
	int applyGeneral(ApplyGeneralDTO applyGeneralDTO);
	
	List<ApplyGeneralDTO> applyGeneralList();
	
}