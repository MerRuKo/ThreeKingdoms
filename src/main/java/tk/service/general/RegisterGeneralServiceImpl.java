package tk.service.general;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.general.RegisterGeneralDTO;

@Service
public class RegisterGeneralServiceImpl implements RegisterGeneralService {
	
	@Autowired
	RegisterGeneralServiceLogic registerGeneralServiceLogic;
	
	public int registerGeneral(RegisterGeneralDTO registerGeneralDTO) {
		return registerGeneralServiceLogic.registerGeneral(registerGeneralDTO);
	}

}