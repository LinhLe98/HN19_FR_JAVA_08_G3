package fa.training.service;

import java.util.List;

import fa.training.entity.Trainee;

public interface TraineeResultService {
	
	//find all trainee by active
	List<Trainee> findActiveTrainee(boolean active);
	
	//de-active trainee
//	void deleteTrainee(int id, boolean active);
}
