package com.lcdi.contact;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ContactService {
	@Autowired ContactRepository repo;
	
	public void save(Contacts contact) {
		repo.save(contact);
	}
	
	public List<Contacts> listAll() {
		return (List<Contacts>) repo.findAll();
	}
	
	public Contacts get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
 
}
