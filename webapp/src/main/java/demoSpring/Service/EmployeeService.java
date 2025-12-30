package demoSpring.Service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

import demoSpring.Dto.EmployeeDTO;
import demoSpring.Entity.Adress;
import demoSpring.Entity.Employee;
import demoSpring.Repository.AdressRepository;
import demoSpring.Repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepo;

	@Autowired
	private AdressRepository adressRepo;

	public void saveEmployee(Employee employee) {
		employeeRepo.save(employee);
	}

	public void saveEmployeeAndAdress(EmployeeDTO employeeDTo) {
		Employee emp = new Employee();
		BeanUtils.copyProperties(employeeDTo, emp);
		employeeRepo.save(emp);

		Adress adress = new Adress();
		BeanUtils.copyProperties(employeeDTo, adress);
		adressRepo.save(adress);

	}

	public List<Employee> getEmployees() {
		return employeeRepo.findAll();
	}

	public void deleteEmployee(long id) {
		employeeRepo.deleteById(id);
		
	}



	public Employee getEmployee(long id) {
		Employee employee = employeeRepo.findById(id).get();
		return employee;
		
	}

	public void updateEmpDetails(Employee employee) {
		employeeRepo.save(employee);
		
	}

}
