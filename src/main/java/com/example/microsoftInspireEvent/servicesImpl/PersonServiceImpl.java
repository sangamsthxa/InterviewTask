package com.example.microsoftInspireEvent.servicesImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.microsoftInspireEvent.model.Person;
import com.example.microsoftInspireEvent.repository.PersonRepository;
import com.example.microsoftInspireEvent.services.PersonService;
import org.springframework.beans.factory.annotation.Autowired;

@Service
@Transactional
public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonRepository personRepository;

	@Override
	public List<Person> getPersonDetail(String country) {
		// TODO Auto-generated method stub
		return personRepository.findByCountry(country);
	}

	@Override
	public List<Person> getPersonDetailByQualified(String qualified) {
		// TODO Auto-generated method stub
		return personRepository.findByQualified(qualified);
	}

	@Override
	public List<Person> getPersonDetailByScannedBy(String scannedBy) {
		// TODO Auto-generated method stub
		return personRepository.findByScannedBy(scannedBy);
	}

	


}
