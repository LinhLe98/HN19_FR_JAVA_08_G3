package fa.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import fa.training.entity.LearningDetail;
import fa.training.entity.Topic;
import fa.training.service.LearingDetailService;
import fa.training.service.TopicService;

@Controller
//@RequestMapping("/trainee-result")
public class TraineeResultController {
	@Autowired
	private TopicService topicService;
	@Autowired
	private LearingDetailService learningDetailService;
	
	@GetMapping("/trainee-resul/getAllTopic")
	@ResponseBody
	public List<Topic> getAllTopics(){
		return topicService.getAllTopics();
	}
//	listLearingPathDetail
	@RequestMapping("/trainee-management/trainee-profile-update-ajax")
	public String getTraineeProfileUpdate(Model model) {
		List<LearningDetail> listLearingPathDetail = learningDetailService.getAllLearningDetail();
		model.addAttribute("listLearingPathDetail", listLearingPathDetail);
		return "trainee-result-update-ajax";
	}
}
