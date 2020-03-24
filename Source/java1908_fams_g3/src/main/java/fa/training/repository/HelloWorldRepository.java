package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entity.Role;

public interface HelloWorldRepository extends JpaRepository<Role, Integer> {

}
