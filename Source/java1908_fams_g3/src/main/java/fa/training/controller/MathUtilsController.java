package fa.training.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.training.service.impl.MathUtilsServiceImp;

@Controller
public class MathUtilsController {
	@Autowired
	private MathUtilsServiceImp mathUtilService;
	
	@RequestMapping("/trainee-management/modal-attendace-status")
	public String getModalAttendaceStatus(@RequestParam("dateCode") String dateCode,
								@RequestParam("date") String date,Model model) throws ParseException {
		List<Integer> days = mathUtilService.getDaysByMonth(date);
		model.addAttribute("days", days);
		model.addAttribute("dateCode", dateCode);
		return "modal-attendace-status";
	}
}
