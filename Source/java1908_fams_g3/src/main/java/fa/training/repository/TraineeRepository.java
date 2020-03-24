package fa.training.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import fa.training.entity.Trainee;

public interface TraineeRepository extends JpaRepository<Trainee, Integer> {

	//find all by active = 1
	List<Trainee> findByActive(boolean active);
	
	//delete (de-active) trainee
//	@Modifying
//	@Query("UPDATE trainee t SET t.active = ?2 WHERE t.id = ?1")
//	void deleteTrainee(int id, boolean active);
}
