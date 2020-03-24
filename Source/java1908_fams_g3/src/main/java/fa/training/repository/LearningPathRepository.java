package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fa.training.entity.LearningPath;

@Repository
public interface LearningPathRepository extends JpaRepository<LearningPath, Integer> {

}
