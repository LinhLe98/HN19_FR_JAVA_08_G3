package fa.training.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fa.training.service.impl.HelloWorldServiceImpl;
import fa.training.utils.Log4J;

@RestController
@RequestMapping("/hello-api")
public class HelloWorldApiController {
	private static final Logger LOGGER = LogManager.getLogger(HelloWorldApiController.class);

	@Autowired
	HelloWorldServiceImpl helloWorldService;

	@GetMapping
	public String home() {
		helloWorldService.saveRole();
		LOGGER.trace("This is TRACE");
		LOGGER.debug("This is DEBUG");
		LOGGER.info("This is INFO");
		LOGGER.warn("This is WARN");
		LOGGER.error("This is ERROR");
		
		//cach 2 k can khoi tao looger
		Log4J.getLogger().info("hello controller");
		return "Hi, show loggings in the console or file!";
	}
}
