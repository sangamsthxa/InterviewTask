package com.example.microsoftInspireEvent.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.microsoftInspireEvent.model.Person;
import com.example.microsoftInspireEvent.repository.PersonRepository;
import com.example.microsoftInspireEvent.services.PersonService;

@RestController
public class PersonController {

	@Autowired
	private PersonService personService;

	@Autowired
	private PersonRepository personRepository;

	@GetMapping("/list/details")
	public List<Person> getList() {
		List<Person> persons = new ArrayList<Person>();
		persons = personService.getPersonDetail("United States");
		return persons;
	}

//	@GetMapping("/details")
//	public String registration(Model model) {
//		model.addAttribute("listing");
//
//		return "index";
//	}
	@GetMapping("/list/{qualified}")
	public List<Person> getQualifiedList(@PathVariable("qualified") String qualified) {
		List<Person> persons = new ArrayList<Person>();
		System.out.print(qualified);
		persons = personService.getPersonDetailByQualified(qualified);
		return persons;

	}

	@GetMapping("/list/scan/{scannedBy}")
	public List<Person> getScannedByList(@PathVariable("scannedBy") String scannedBy) {
		List<Person> persons = new ArrayList<Person>();
		System.out.print(scannedBy);
		persons = personService.getPersonDetailByScannedBy(scannedBy);
		return persons;
	}

	@GetMapping("/list/count/{scannedBy}")
	public int getCountByScanned(@PathVariable("scannedBy") String scannedBy) {
		int c=0;
			try {
		 c = personRepository.countByScannedBy(scannedBy);
			System.out.println(c);
		} catch (Exception ex) {
			System.out.println(ex);
		}
		
		System.out.println(c);
		return c;
	}
}
