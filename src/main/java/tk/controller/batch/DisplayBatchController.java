package tk.controller.batch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisplayBatchController {

	@RequestMapping("/selectBatchList")
	public String displaySelectBatchList() {
		return "batch/selectBatchList";
	}

}