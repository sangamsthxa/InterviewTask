package com.example.microsoftInspireEvent.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="information")
public class PersonGeneralInformation {
	@Id
	@Column(name="id")
	private Integer id;

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
	 
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "personDetail_id", referencedColumnName = "id")
	private PersonDetails personDetails;

}
