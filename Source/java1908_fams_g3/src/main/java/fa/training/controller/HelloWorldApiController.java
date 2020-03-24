package fa.training.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fa.training.service.impl.HelloWorldServiceImpl;
import fa.training.utils.Log4J;

@RestController
@RequestMapping("/hello-api")
public class HelloWorldApiController {
	private static final Logger LOGGER = LoggerFactory.getLogger(HelloWorldApiController.class);

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

		Log4J.getLogger().info("hello controller");

		return "Hi, show loggings in the console or file!";
	}
}
