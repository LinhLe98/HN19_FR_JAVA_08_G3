package fa.training.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import fa.training.entity.Trainee;
import fa.training.service.LearningPathService;
import fa.training.service.TraineeProfileService;
import fa.training.service.impl.LearningPathServiceImpl;
import fa.training.utils.Log4J;

@Controller
@RequestMapping("/trainee-profile")
public class TraineeProfileController {
	
	@Autowired
	LearningPathService learningPathService;
	
	@Autowired
	TraineeProfileService traineeProfileService;
	
	@GetMapping("/view")
	public String getTrainee(@RequestParam("empID") int idtrainee, ModelMap map) {
		Trainee trainee = traineeProfileService.getTrainee(idtrainee);
		Log4J.getLogger().info(trainee.getName());
		map.addAttribute("trainee", trainee);
		return "trainee-profile-view-ajax";
	}
}
