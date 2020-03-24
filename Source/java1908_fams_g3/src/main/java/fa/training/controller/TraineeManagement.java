package fa.training.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import fa.training.entity.Trainee;
import fa.training.service.TraineeResultService;

@Controller
public class TraineeManagement {
	private static final Logger LOGGER = LoggerFactory.getLogger(ViewController.class);

	@Autowired
	private TraineeResultService traineeResultService;

	@RequestMapping("/trainee-management/trainee-listing")
	public String getTraineeListing(Model model) {
		List<Trainee> traineeList = traineeResultService.findActiveTrainee(true);
		model.addAttribute("traineeList", traineeList);
		return "trainee-management-ajax";
	}
	
//	@RequestMapping("/trainee-management/delete-trainee")
//	public String deleteTrainee(Model model) {
//		return null;
//	}
}
