package com.example.microsoftInspireEvent.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.microsoftInspireEvent.model.Person;

@Repository
public interface PersonRepository extends JpaRepository<Person, Integer> {
	
	 @Query(value = "SELECT * FROM PERSONS p WHERE NOT p.country_id LIKE ?1", nativeQuery = true)
	List<Person> findByCountry(String country);
	  @Query(value = "SELECT * FROM persons p WHERE p.qualified LIKE ?1", nativeQuery= true)
	 List<Person> findByQualified(String qualified);
	 
	  List<Person> findByScannedBy(String scannedBy);
	   
	
	  int countByScannedBy(String scannedBy);
	  
	                                                                                   

}
