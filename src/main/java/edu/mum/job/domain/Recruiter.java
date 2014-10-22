package edu.mum.job.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@Entity(name = "RECRUITER")
public class Recruiter{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "recuiter_firstName")
	private String firstName;
	
	@Column(name = "recuiter_lastName")
	private String lastName;
	

	@Column(name = "recruiter_address")
	private String address;
	
	@Column(name = "recruiter_email")
	private String email;
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getId() {
		return id;
	}
	

}



/* CREATE TABLE `recruiter` (
		  `recruiter_id` bigint(20) NOT NULL,
		  `person_id` bigint(20) DEFAULT NULL,
		  `recruiter_address` varchar(200) DEFAULT NULL,
		  `recruiter_email` varchar(50) DEFAULT NULL,
		  PRIMARY KEY (`recruiter_id`)
		) ENGINE=InnoDB DEFAULT CHARSET=latin1;

*/