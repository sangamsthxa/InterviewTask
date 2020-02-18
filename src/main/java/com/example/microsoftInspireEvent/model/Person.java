package com.example.microsoftInspireEvent.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "persons")
public class Person {
	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="event_name")
	 private String eventName;
	@Column(name="scanned_date")
	 private String scannedDate;
	 
	@Column(name="scanned_time")
	private String scannedTime;

	@Column(name="first_name")
	private String firstName;
	
	@Column(name="middle_initial")
	private String middleInitial;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="email2")
	private String email2;
	
	@Column(name="company")
	private String company;
	
	@Column(name="job_title")
	private String jobTitle;
	
	@Column(name="address1")
	private String address1;
	
	@Column(name="address2")
	private String address2;
	
	@Column(name="address3")
	private String address3;
	
	@Column(name="city")
	private String city;
	
	@Column(name="state_id")
	private String stateId;
	
	@Column(name="zip")
	private String zip;
	
	@Column(name="country_id")
	private String countryId;
	
	@Column(name="phone_number")
	private String phoneNumber;
	
	@Column(name="phone2_number")
	private String phone2Number;
	
	@Column(name="fax_number")
	private String faxNumber;
	
	@Column(name="question")
	private String question;
	
	@Column(name="response")
	private String response;
	
	@Column(name="note")
	private String note;
	
	@Column(name="collateral")
	private String collateral;
	
	@Column(name="qualified")
	private String qualified;
	
	@Column(name="scanned_by")
	private String scannedBy;
}
