package com.lcdi.contact;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class ContactsController {

	@Autowired
	private ContactService contactService;

	@RequestMapping("/contact")
	public ModelAndView home() {
		List<Contacts> listcontact = contactService.listAll();
		ModelAndView mav = new ModelAndView("indexContact");
		mav.addObject("listContact", listcontact);
		return mav;
	}
	@RequestMapping("/contact/save")
	public String saveCustomer(@ModelAttribute("contact") Contacts contact) {
		contactService.save(contact);
		return "redirect:/";
	}
	
	 

}
