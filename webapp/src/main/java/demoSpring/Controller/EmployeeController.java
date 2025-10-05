package demoSpring.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.ModelMap;
import java.util.*;

import demoSpring.Dto.EmployeeDTO;
import demoSpring.Entity.Employee;
import demoSpring.Service.EmailService;
import demoSpring.Service.EmployeeService;

@Controller
public class EmployeeController {
	// http://localhost:8080/views

	private static final String ModelMap = null;

	@RequestMapping("/views")
	public String viewEmployeeDetails() {
		return "employee";
	}

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private EmailService emailService;

	@RequestMapping("/saveReg")
	public String saveEmployee(@ModelAttribute Employee employee, Model model) {
		employeeService.saveEmployee(employee);
		model.addAttribute("msg", "Record is saved");
		return "employee";
	}

	@RequestMapping("/saveRegDetails")
	public String saveEmployeeAndAdress(@ModelAttribute EmployeeDTO employeeDTo, Model model) {
		employeeService.saveEmployeeAndAdress(employeeDTo);
		emailService.sendEmail(employeeDTo.getEmail(), "Test", "Hello");
		model.addAttribute("msg", "Record is saved");
		return "employee";
	}

	@RequestMapping("/getEmployees")
	// http://localhost:8080/getEmployees
	public String viewEmployees(ModelMap model) {
		List<Employee> employees = employeeService.getEmployees();
		model.addAttribute("employees", employees);
		return "list_employees";
	}
	
	@RequestMapping("/deleteEmployee")
	// http://localhost:8080/viewEmployees
	public String deleteEmployees(@RequestParam long id  ,ModelMap model) {
		 employeeService.deleteEmployee(id);
		  
		List<Employee> employees = employeeService.getEmployees();
		model.addAttribute("employees", employees);
		return "list_employees";
	}
	
	@RequestMapping("/getEmployeeById")
	// http://localhost:8080/viewEmployees
	public String getEmployeeById(@RequestParam long id  ,ModelMap model) {
		Employee employee = employeeService.getEmployee(id);
		model.addAttribute("emp", employee);
		return "update_employee";
	}
	
	
	
	@RequestMapping("/updateEmpDetails")
	// http://localhost:8080/viewEmployees
	public String updateEmployeeById(Employee employee ,ModelMap model) {
	   employeeService.updateEmpDetails(employee);
		
	   List<Employee> employees = employeeService.getEmployees();
		model.addAttribute("employees", employees);
		return "list_employees";
	}
	
	

}
