package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entity.Trainee;

public interface TraineeRepository extends JpaRepository<Trainee, Integer> {
	
}
