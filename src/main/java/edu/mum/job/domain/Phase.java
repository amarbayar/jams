package edu.mum.job.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
@Entity(name = "PHASE")
public class Phase {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "phase_id")
	private Integer phase_id;
	
	@Column(name = "phase_type")
	private String phase_type;
	
	
	
	public int getPhase_id() {
		return phase_id;
	}
	public void setPhase_id(int phase_id) {
		this.phase_id = phase_id;
	}
	public String getPhase_type() {
		return phase_type;
	}
	public void setPhase_type(String phase_type) {
		this.phase_type = phase_type;
	}
	
	
	/*@Override
	public String toString(){
		return phase_type;
	}  */

}
