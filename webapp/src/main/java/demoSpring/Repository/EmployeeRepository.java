package demoSpring.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import demoSpring.Entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
