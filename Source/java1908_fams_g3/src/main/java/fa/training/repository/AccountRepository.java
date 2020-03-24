package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entity.Account;

public interface AccountRepository extends JpaRepository<Account, Integer> {

}
