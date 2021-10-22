package com.lcdi.contact;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.lcdi.contact.Contacts;

public interface ContactRepository extends CrudRepository<Contacts, Long> {

	@Query(value = "SELECT c FROM Contacts c WHERE c.name LIKE '%' || :keyword || '%'"
			+ " OR c.email LIKE '%' || :keyword || '%'"
			+ " OR c.telefone LIKE '%' || :keyword || '%'")
	public List<Contacts> search(@Param("keyword") String keyword);

}
