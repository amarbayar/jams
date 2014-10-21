package edu.mum.job.domain;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/*
 * Domain class for EVENTs
 * Users can setup events such as meetings and interviews
 * By Amarbayar. A
 * */

@Entity(name="EVENT")
public class Event {
	@Id
	@Column(name="event_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long event_id;
	@Column(name="event_title")
	private String event_title;
	@Column(name="event_desc")
	private String event_desc;
	@Column(name="event_date")
	private Date event_date;
	@Column(name="event_time")
	private String event_time;
	@Column(name="event_appid")
	private long event_appid;
	
	//Getters & Setters
	public long getEvent_id() {
		return event_id;
	}
	public void setEvent_id(long event_id) {
		this.event_id = event_id;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getEvent_desc() {
		return event_desc;
	}
	public void setEvent_desc(String event_desc) {
		this.event_desc = event_desc;
	}
	public Date getEvent_date() {
		return event_date;
	}
	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}
	public String getEvent_time() {
		return event_time;
	}
	public void setEvent_time(String event_time) {
		this.event_time = event_time;
	}
	public long getEvent_appid() {
		return event_appid;
	}
	public void setEvent_appid(long event_appid) {
		this.event_appid = event_appid;
	}
}
