package demoSpring.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "adress")
public class Adress {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 
	
	@Column(name = "city", nullable = false)
	private String city;
	
	@Column(name = "state" , nullable = false)
	private String State;
	
	@Column(name = "pin_code" , nullable = false)
	private String  pinCode;
	
	@Column(name = "adress_line", nullable = false)
	private String addressLine;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getAddressLine() {
		return addressLine;
	}

	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}
	
	
	

}
