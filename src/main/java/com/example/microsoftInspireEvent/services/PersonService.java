package com.example.microsoftInspireEvent.services;

import java.util.List;

import com.example.microsoftInspireEvent.model.Person;

public interface PersonService {
	 List<Person> getPersonDetail(String country);
	 List<Person> getPersonDetailByQualified(String qualified);
	 List<Person> getPersonDetailByScannedBy(String scannedBy);
	 


}
