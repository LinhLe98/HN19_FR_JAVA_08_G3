package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entity.LearningDetail;

public interface LearningDetailRepository extends JpaRepository<LearningDetail, Integer> {

}
