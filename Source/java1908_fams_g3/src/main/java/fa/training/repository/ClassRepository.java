package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entity.Classes;

public interface ClassRepository extends JpaRepository<Classes, Integer> {

}
