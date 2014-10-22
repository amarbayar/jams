package edu.mum.job.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
@Entity(name = "HISTORY")
public class History  implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "history_id")
	private Integer history_id;
	
	@Column(name = "phase_id")
	private Integer phase_id;
	
	@Column(name = "app_id")
	private Integer app_id;

	@Column(name = "phase_changed_date")
	private Date phase_changed_date;

	public Integer getHistory_id() {
		return history_id;
	}

	public void setHistory_id(Integer history_id) {
		this.history_id = history_id;
	}

	public Integer getPhase_id() {
		return phase_id;
	}

	public void setPhase_id(Integer phase_id) {
		this.phase_id = phase_id;
	}

	public Integer getApp_id() {
		return app_id;
	}

	public void setApp_id(Integer app_id) {
		this.app_id = app_id;
	}

	public Date getPhase_changed_date() {
		return phase_changed_date;
	}

	public void setPhase_changed_date(Date phase_changed_date) {
		this.phase_changed_date = phase_changed_date;
	}

	@Override
	public String toString() {
		return "History [history_id=" + history_id + ", phase_id=" + phase_id
				+ ", app_id=" + app_id + ", phase_changed_date="
				+ phase_changed_date + "]";
	}
	
	
	
}
