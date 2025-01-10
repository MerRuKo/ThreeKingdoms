package tk.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisplayHomeController {

    @RequestMapping("/home")
    public String displayHome() {
        return "index";
    }

}