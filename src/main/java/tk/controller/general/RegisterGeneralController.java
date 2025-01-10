package tk.controller.general;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tk.dto.general.RegisterGeneralDTO;
import tk.service.general.RegisterGeneralService;

@Controller
public class RegisterGeneralController {
	
	@Autowired
	private RegisterGeneralService registerGeneralService;

	@RequestMapping("/registerGeneral.do")
	public String registerGeneral(RegisterGeneralDTO registerGeneralDTO) {
		registerGeneralService.registerGeneral(registerGeneralDTO);
		return "general/menuGeneral";
	}

}