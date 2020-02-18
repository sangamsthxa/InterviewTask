package com.example.microsoftInspireEvent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.microsoftInspireEvent.repository.PersonRepository;

@Controller
public class HomeController {
	@CrossOrigin(origins = "http://localhost:8080")
	@RequestMapping({ "/", "/home" })
	public String getHomePage(Model model) {
		return "index";
	}
	@Autowired
	private PersonRepository personRepository;
	
@GetMapping("/details_list")
public String getListPage(Model model) {
	return "details";
}
@GetMapping("/qualified_list")
public String getQualifiedListPage(Model model) {
	return "qualifiedList";
}
@GetMapping("/scannedBy_list/{scannedBy}")
public String getScannedByListPage(Model model,@PathVariable("scannedBy") String scannedBy) {
	model.addAttribute("scannedBy", personRepository.countByScannedBy(scannedBy) );
	model.addAttribute("scan",scannedBy);
	return "scannedBy";
}
}
