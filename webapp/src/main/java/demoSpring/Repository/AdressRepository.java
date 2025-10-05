package demoSpring.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import demoSpring.Entity.Adress;

public interface AdressRepository extends JpaRepository<Adress, Long> {

}
