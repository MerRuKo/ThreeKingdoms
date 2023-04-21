package tk.service.general;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.general.ApplyGeneralDTO;

@Service
public class ApplyGeneralServiceImpl implements ApplyGeneralService {
	
	@Autowired
	ApplyGeneralServiceLogic applyGeneralServiceLogic;
	
	public int applyGeneral(ApplyGeneralDTO applyGeneralDTO) {
		return applyGeneralServiceLogic.applyGeneral(applyGeneralDTO);
	}
	
	public List<ApplyGeneralDTO> applyGeneralList() {
		return applyGeneralServiceLogic.applyGeneralList();
	}
	
}