package fa.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entity.Role;
import fa.training.repository.HelloWorldRepository;

@Service
public class HelloWorldServiceImpl {
	@Autowired
	HelloWorldRepository helloWorldRepository;

	public void saveRole() {
		helloWorldRepository.save(new Role("admin"));
	}

}
