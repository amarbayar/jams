package edu.mum.job.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@XmlRootElement
@Entity(name = "USER")
public class JobApplication implements Serializable{

	

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	
	//@NotEmpty
	@Column(name = "user_fName")
	private String firstName;
	//@NotEmpty
	@Column(name = "user_lName")	
	private String lastName;

	@Email @NotEmpty
	private String email;
	@NotEmpty
	private String password;
	
	


}