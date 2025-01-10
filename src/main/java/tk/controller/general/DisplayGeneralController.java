package tk.controller.general;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisplayGeneralController {

    @RequestMapping("/displayMenuGeneral")
    public String displayMenuGeneral() {
        return "general/menuGeneral";
    }
    
    @RequestMapping("/searchGeneralList")
    public String displaySearchGeneralList() {
        return "general/searchGeneralList";
    }
    
    @RequestMapping("/registerGeneral")
    public String displayRegisterGeneral() {
        return "general/registerGeneral";
    }
   
}