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
@Entity(name = "JOBAPPLICATION")
public class JobApplication implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	
	@Column(name = "companyId")
	private int companyId;
	
	@Column(name = "jobTitile")
	private String jobTitile;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "phaseId")
	private int phaseId;
	
	@Column(name = "priority")
	private String priority;
	
	@Column(name = "recruiterId")
	private int recruiterId;
	
	@Column(name = "historyId")
	private int historyId;
	
	@Column(name = "applicationDate")
	private String applicationDate;
	
	@Column(name = "refer")
	private String refer;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getJobTitile() {
		return jobTitile;
	}
	public void setJobTitile(String jobTitile) {
		this.jobTitile = jobTitile;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getPhaseId() {
		return phaseId;
	}
	public void setPhaseId(int phaseId) {
		this.phaseId = phaseId;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public int getRecruiterId() {
		return recruiterId;
	}
	public void setRecruiterId(int recruiterId) {
		this.recruiterId = recruiterId;
	}
	public int getHistoryId() {
		return historyId;
	}
	public void setHistoryId(int historyId) {
		this.historyId = historyId;
	}
	public String getApplicationDate() {
		return applicationDate;
	}
	public void setApplicationDate(String applicationDate) {
		System.out.println("applicationDate: "+applicationDate);
		this.applicationDate = applicationDate;
	}
	public String getRefer() {
		return refer;
	}
	public void setRefer(String refer) {
		this.refer = refer;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "JobApplication [id=" + id + ", companyId=" + companyId
				+ ", jobTitile=" + jobTitile + ", status=" + status
				+ ", phaseId=" + phaseId + ", priority=" + priority
				+ ", recruiterId=" + recruiterId + ", historyId=" + historyId
				+ ", applicationDate=" + applicationDate + ", refer=" + refer
				+ "]";
	}
	

	

	


}