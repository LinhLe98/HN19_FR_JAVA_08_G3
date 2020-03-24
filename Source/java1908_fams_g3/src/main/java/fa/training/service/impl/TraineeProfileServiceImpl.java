package fa.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entity.Trainee;
import fa.training.repository.TraineeRepository;
import fa.training.service.TraineeProfileService;

@Service
public class TraineeProfileServiceImpl implements TraineeProfileService{

	@Autowired
	TraineeRepository traineeRepository;
	@Override
	public Trainee getTrainee(int id) {
		// TODO Auto-generated method stub
		return traineeRepository.findById(id).orElse(null);
	}

}
