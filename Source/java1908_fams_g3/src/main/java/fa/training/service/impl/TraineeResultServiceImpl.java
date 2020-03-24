package fa.training.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entity.Trainee;
import fa.training.repository.TraineeRepository;
import fa.training.service.TraineeResultService;

@Service
public class TraineeResultServiceImpl implements TraineeResultService{

	@Autowired
	private TraineeRepository traineeRepository;
	
	@Override
	public List<Trainee> findActiveTrainee(boolean active) {
		List<Trainee> traineeList = traineeRepository.findByActive(active);
		return traineeList;
	}

//	@Override
//	public void deleteTrainee(int id, boolean active) {
//		traineeRepository.deleteTrainee(id, active);
//	}

}
