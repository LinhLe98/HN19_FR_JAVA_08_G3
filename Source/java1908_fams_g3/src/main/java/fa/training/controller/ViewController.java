package fa.training.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
	private static final Logger LOGGER = LoggerFactory.getLogger(ViewController.class);

	@RequestMapping("/")
	public String getLoginPage() {
		return "login";
	}

	@RequestMapping("/landing-page")
	public String ladingPage() {
		return "landing-page";
	}

	@RequestMapping("/landing-page/ajax")
	public String ladingPageAjax() {
		return "landing-page-ajax";
	}

	@RequestMapping("/landing-page/chart")
	public String ladingPageChart() {
		return "chart";
	}

	@RequestMapping("/landing-page/content-table")
	public String ladingPageContentTable() {
		return "dashboard-content-table";
	}
	
	

	@RequestMapping("/landing-page/content-chart")
	public String ladingPageContentChart() {
		return "dashboard-content-chart";
	}

	@RequestMapping("/view-page")
	public String getViewPage() {
		LOGGER.info("in view page");
		return "view-page";
	}

	@RequestMapping("/trainee-profile")
	public String getTraineeProfilePage() {
		return "trainee-profile-view-ajax";
	}

	@RequestMapping("/trainee-management/trainee-listing")
	public String getTraineeListing() {
		return "trainee-management-ajax";
	}

//	@RequestMapping("/trainee-management/trainee-profile-update-ajax")
//	public String getTraineeProfileUpdate() {
//		return "trainee-result-update-ajax";
//	}

	@RequestMapping("/trainee-management/trainee-profile-view-ajax")
	public String getTraineeProfileView() {
		return "trainee-profile-view-ajax";
	}
	
	@RequestMapping("/trainee-management/trainee-result-view-ajax")
	public String getTraineeResultView() {
		return "trainee-result-view-ajax";
	}

	@RequestMapping("/trainee-management/modal-attendace-status")
	public String getModalAttendaceStatus() {
		return "modal-attendace-status";
	}


}
